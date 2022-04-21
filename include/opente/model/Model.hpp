#pragma once

#include <vector>
#include <string>
#include <opencv2/opencv.hpp>
#include <opencv2/dnn.hpp>

#include "opente/entity/DataType.hpp"



class Model 
{
public:

	virtual void preProcess(cv::Mat& output, cv::Mat& image, cv::dnn::Net& model) = 0;

	virtual void process(cv::Mat& output, cv::dnn::Net& model) = 0;

	virtual void postProcess(cv::Mat& output, cv::Mat& image, std::vector<std::string>& classes, std::vector<Centroid>& centroids) = 0;

	virtual void drawResultOnImage(cv::Mat& image, std::vector<Centroid>& centroids) = 0;

};
