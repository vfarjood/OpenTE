#include "opente/utils/CmdLineParser.hpp"

CmdLineParser::CmdLineParser(int argc, char** argv) 
{
    this->keys_ =
        "{ input i           | |      Image or video to process (absolute path to file)                 }"
        "{ model m           | |      Path to a binary file of model contains trained weights.          }"
        "{ config c          | |      Path to a file containing model's config parameters.              }"
        "{ object o          | |      Path to a file which contains name of classes/objects.            }"
        "{ path  l            | |      Path for saving the result.                                      }"
        "{ framework f       | |      Name of the framework for the model <Tensorflow, pytorch, opencv>.}"                         
        "{ architecture a    | |      Name of the model architecture <MobileNet, YOLO>.                 }"                         
        "{ backend b       |  0  |    Choose a computation backends.                                    }"
        "{ device d         | 0 |     Choose one of target computation devices: "
                                     "<0: CPU (by default), "
                                     "1: VPU> }"

        "{ thr t           | 0.5 |    Confidence threshold.                                             }"
        "{ nms n           | 0.4 |    Non-maximum suppression threshold.                                }"

        "{ show s          |false|    Show graphical computation on monitor .                           }"
        "{ print p         |false|    print computation result on the terminal.                         }"

        "{ logMode         |ENABLE|   Define log mode  <ENABLE, DISABLE>.                               }"
        "{ logType         |FILE  |   Define log type  <FILE, CONSOLE, ALL>.                            }"
        "{ logLevel        |DEBUG |   Define log level <INFO, WARNING, ERROR, BUFFER, TRACE, DEBUG >.   }"

        "{ help  h           | |      Print help message.                                               }";

    this->parser_ = std::make_unique<cv::CommandLineParser>(argc, argv, keys_);
    this->argc_ = argc;
    this->argv_ = argv;
    
    this->parser_->about("Use this script to run Traffic Estimator application using deep learning. ");
    if (argc == 1 || this->parser_->has("help"))
    {
        this->parser_->printMessage();
        this->printExample();

    }
}

void CmdLineParser::printExample() 
{
    std::cout << "Example: \n\t"
                   "./ste "
                   " --input=../media/sweets.jpg "
                   " --model=../model/frozen_inference_graph.pb "
                   " --object=../model/ssd_mobilenet_v2_coco_2018_03_29.pbtxt\n" << std::endl;
}

