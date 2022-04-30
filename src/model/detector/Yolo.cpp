#include "opente/model/Yolo.hpp"

void Yolo::preProcess(cv::Mat& output, cv::Mat& image, cv::dnn::Net& model)
{
    // create blob from image:
    cv::dnn::blobFromImage(image, output, 1./255., cv::Size(INPUT_WIDTH, INPUT_HEIGHT), cv::Scalar(), true, false);
    // set the blob to the model:
    model.setInput(output);
}  

void Yolo::process(cv::Mat& output, cv::dnn::Net& model)
{
    // forward pass through the model to carry out the detection:
    output_layer_names = model.getUnconnectedOutLayersNames();
    model.forward(output);
}

void Yolo::postProcess(cv::Mat& output, cv::Mat& image, std::vector<std::string>& classes, std::vector<Centroid>& centroids)
{
	
	x_factor = image.cols / INPUT_WIDTH;
    y_factor = image.rows / INPUT_HEIGHT;
    
    cv::Mat detectedMat(output.size[1], output.size[2], CV_32F, output.ptr<float>());

    for (int i = 0; i < detectedMat.rows; ++i) 
    {
        float confidence = detectedMat.at<float>(i, 4);
        if (confidence >= CONFIDENCE_THRESHOLD) {

            float* classes_scores = &detectedMat.at<float>(i, 5);

            cv::Mat scores(1, classes.size(), CV_32FC1, classes_scores);
            cv::minMaxLoc(scores, 0, &max_class_score, 0, &class_id);
            
            if (max_class_score > SCORE_THRESHOLD) {

                confidences.push_back(confidence);
                class_ids.push_back(class_id.x);

                int x = static_cast<int>(detectedMat.at<float>(i, 0));
                int y = static_cast<int>(detectedMat.at<float>(i, 1));
                int w = static_cast<int>(detectedMat.at<float>(i, 2));
                int h = static_cast<int>(detectedMat.at<float>(i, 3));

                boxes.push_back(cv::Rect((x - w / 2)*x_factor,
                                         (y - h / 2)*y_factor,
                                         (w*x_factor),
                                         (h*y_factor)));
            }
        }
    }

    cv::dnn::NMSBoxes(boxes, confidences, SCORE_THRESHOLD, NMS_THRESHOLD, nms_result);
    for (int i = 0; i < nms_result.size(); i++) 
    {
        int index = nms_result[i];

        Centroid object;
        object.id     = class_ids[index];
        object.conf   = confidences[index];
        object.name   = classes[class_ids[index]];
        object.box    = boxes[index];
        object.center = cv::Point((object.box.x + object.box.width)/2, (object.box.y + object.box.height)/2);

        centroids.push_back(object);
    }

}

void Yolo::drawResultOnImage(cv::Mat& image, std::vector<Centroid>& centroids)
{
    // std::default_random_engine generator;
    std::mt19937 generator(2019);
    // set uniform distribution for each R,G,B color:
    std::uniform_int_distribution<int> distribution(0, 255);

    for(int i = 0; i < centroids.size(); i++)
    {
        cv::Scalar color;
        color = cv::Scalar(distribution(generator), distribution(generator), distribution(generator));
        std::string label = "[" + centroids[i].name + " : " + cv::format("%.2f",centroids[i].conf) + "]";

        cv::rectangle(image, cv::Point(centroids[i].box.x, centroids[i].box.y), cv::Point(centroids[i].box.x+centroids[i].box.width, centroids[i].box.y+centroids[i].box.height), color, 2);
        cv::putText(image, label, cv::Point(centroids[i].box.x, centroids[i].box.y-5), cv::FONT_HERSHEY_SIMPLEX, 0.5, color, 1);
    }

}



