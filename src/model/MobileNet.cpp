#include "opente/model/MobileNet.hpp"


void MobileNet::preProcess(cv::Mat& output, cv::Mat& image, cv::dnn::Net& model)
{
    // create blob from image:
    output = cv::dnn::blobFromImage(image, 1.0, cv::Size(300, 300), cv::Scalar(127.5, 127.5, 127.5), true, false);

    // set the blob to the model:
    model.setInput(output);
}   

void MobileNet::process(cv::Mat& output, cv::dnn::Net& model)
{
    // forward pass through the model to carry out the detection:
    output = model.forward();
}

void MobileNet::postProcess(cv::Mat& output, cv::Mat& image, std::vector<std::string>& classes, std::vector<Centroid>& centroids)
{
    cv::Mat detectionMat(output.size[2], output.size[3], CV_32F, output.ptr<float>());
    for (int i = 0; i < detectionMat.rows; i++){

        float conf = detectionMat.at<float>(i, 2);

        // Check if the detection is of good quality:
        if (conf > 0.5)
        {
            Centroid object;

            object.id         = detectionMat.at<float>(i, 1);
            object.name       = classes[object.id-1];
            object.conf       = detectionMat.at<float>(i, 2);
            object.box.x      = static_cast<int>(detectionMat.at<float>(i, 3) * image.cols);
            object.box.y      = static_cast<int>(detectionMat.at<float>(i, 4) * image.rows);
            object.box.width  = static_cast<int>(detectionMat.at<float>(i, 5) * image.cols - object.box.x);
            object.box.height = static_cast<int>(detectionMat.at<float>(i, 6) * image.rows - object.box.y);
            object.center     = cv::Point((object.box.x + object.box.width)/2, (object.box.y + object.box.height)/2);
            centroids.emplace_back(object);
        }
    }
}

void MobileNet::drawResultOnImage(cv::Mat& image, std::vector<Centroid>& centroids)
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



