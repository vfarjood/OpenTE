#include "opente/feature/FileManager.hpp"


void readInput(const std::string& inputPath, QueueStream<cv::Mat>& framesQueue)
{
    // Load the media:
    cv::Mat image = cv::imread(inputPath, 1);
    std::cout << "image size: " << image.size() << std::endl;
    if(!image.data) 
    {
        std::cout << "Error! Unable to find the image file!\n";
        exit(-1);
    }
    framesQueue.add(image);
}

void readClasses(const std::string& classesPath, std::vector<std::string>& classes)
{
    // Load class names:
    classes.reserve(100);

    std::string line;
    std::ifstream ifs(classesPath);

    while (getline(ifs, line)) 
    {
          classes.emplace_back(line);
    } 

}

void readModel( const std::string& modelPath, const std::string& configPath, const std::string& framework, cv::dnn::Net& model)
{
    // load the neural network model:
    model = cv::dnn::readNet(modelPath, configPath, framework);
}

void saveImage(const std::string& path, cv::Mat& image)
{
    cv::imwrite(path, image);
}
    


void setParam(ParamData& parameters, CmdLineParser& parser)
{
    parameters.show = parser.get<bool>("show");
    parameters.print  = parser.get<bool>("print");
    parameters.device   = parser.get<int>("device");
    parameters.backend    = parser.get<int>("backend");
    parameters.threshold    = parser.get<float>("thr");
    parameters.nms_threshold  = parser.get<float>("nms");

    if(parser.get<std::string>("architecture") != "")
        parameters.architecture  = parser.get<std::string>("architecture");
    if(parser.get<std::string>("framework") != "")
        parameters.framework     = parser.get<std::string>("framework");
    if(parser.get<std::string>("input")  != "")
        parameters.input_path    = parser.get<std::string>("input");
    if(parser.get<std::string>("model")  != "")
        parameters.model_path    = parser.get<std::string>("model");
    if(parser.get<std::string>("config") != "")
        parameters.config_path   = parser.get<std::string>("config");
    if(parser.get<std::string>("object") != "")
        parameters.classes_path = parser.get<std::string>("object");
    if(parser.get<std::string>("path") != "")
        parameters.classes_path = parser.get<std::string>("path");
}





