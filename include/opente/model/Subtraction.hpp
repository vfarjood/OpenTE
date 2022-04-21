#pragma once

#include <vector>
#include <random>
#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/dnn.hpp>
#include <opencv2/dnn/all_layers.hpp>

#include "opente/entity/DataType.hpp"
#include "opente/model/Model.hpp"



class Subtraction : public Model 
{
public:

	void preProcess(cv::Mat& output, cv::Mat& image, cv::dnn::Net& model) override;

	void process(cv::Mat& output, cv::dnn::Net& model) override;

	void postProcess(cv::Mat& output, cv::Mat& image, std::vector<std::string>& classes, std::vector<Centroid>& centroids) override;

	void drawResultOnImage(cv::Mat& image, std::vector<Centroid>& centroids) override;

};