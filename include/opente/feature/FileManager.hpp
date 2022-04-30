#include <fstream>
#include <string>
#include <vector>
#include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>

#include "opente/entity/DataType.hpp"
#include "opente/utils/CmdLineParser.hpp"
#include "opente/feature/QueueStream.hpp"

void readInput(const std::string& inputPath, QueueStream<cv::Mat>& framesQueue);

void readClasses(const std::string& classesPath, std::vector<std::string>& classes);

void readModel( const std::string& modelPath, const std::string& configPath, const std::string& framework, cv::dnn::Net& model, const std::string& model_name);

void saveImage(const std::string& path, cv::Mat& image);

void setParam(ParamData& parameters, CmdLineParser& parser);
