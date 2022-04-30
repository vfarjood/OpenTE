#pragma once

#include <string>

struct ParamData 
{
  bool show   = false;
  bool print  = false;
  bool swapRB = true;

  float scale         = 1.0;
  float threshold     = 0.4;
  float nms_threshold = 0.4;

  std::string model_name   = "MobileNet";
  std::string framework    = "TensorFlow";
  std::string input_path   = "../media/images/traffic/image-1.jpg";
  std::string model_path   = "../models/mobilenet/frozen_inference_graph.pb";
  std::string config_path  = "../models/mobilenet/ssd_mobilenet_v2_coco_2018_03_29.pbtxt";
  std::string classes_path = "../models/mobilenet/object_detection_classes_coco.txt";
  std::string save_path    = "../result/result.jpg";
  std::string background_path    = "../media/images/traffic/image-0.jpg";

  int device  = 0;
  int backend = 0;
};

struct Centroid 
{
    int id;
    float conf;
    cv::Rect box;
    cv::Point center;
    std::string name;
};



