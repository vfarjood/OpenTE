#pragma once

#include <vector>
#include <random>
#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/dnn.hpp>
#include <opencv2/dnn/all_layers.hpp>

#include "opente/entity/DataType.hpp"
#include "opente/model/Model.hpp"


class Yolo : public Model
{
public:

	void preProcess(cv::Mat& output, cv::Mat& image, cv::dnn::Net& model) override;

	void process(cv::Mat& output, cv::dnn::Net& model) override;

	void postProcess(cv::Mat& output, cv::Mat& image, std::vector<std::string>& classes, std::vector<Centroid>& centroids) override;

	void drawResultOnImage(cv::Mat& image, std::vector<Centroid>& centroids) override;

private:
	const float INPUT_WIDTH = 640.0;
	const float INPUT_HEIGHT = 640.0;
	const float SCORE_THRESHOLD = 0.2;
	const float NMS_THRESHOLD = 0.5;
	const float CONFIDENCE_THRESHOLD = 0.5;

	float x_factor;
    float y_factor;
    std::vector<int> class_ids;
    std::vector<float> confidences;
    std::vector<cv::Rect> boxes;
    cv::Point class_id;
    double max_class_score;

    std::vector<int> nms_result;
    std::vector<cv::Mat> output_vector;
	std::vector<std::string> output_layer_names;
};
