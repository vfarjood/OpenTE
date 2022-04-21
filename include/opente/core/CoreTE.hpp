#include <string>
#include <vector>
#include <fstream>
#include <memory>
#include <thread>
#include <algorithm>
#include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>

#include "opente/utils/Log.hpp"
#include "opente/utils/Timer.hpp"
#include "opente/utils/CmdLineParser.hpp"
#include "opente/feature/FileManager.hpp"
#include "opente/entity/DataType.hpp"
#include "opente/feature/QueueStream.hpp"

#include "opente/model/ModelEngine.hpp"



class CoreTE {
public:

    cv::Mat output;
    std::vector<Centroid> centroids;

    cv::dnn::Net net;
    std::vector<std::string> classes;

    QueueStream<cv::Mat> input_queue;

    CoreTE();

    ~CoreTE();

	  CoreTE(CmdLineParser& parser);

    void load();
    void detect();
    void joinThreads();

private:
    ParamData param;
    std::vector<std::thread> threads_vector;
    Model* model = nullptr;


protected:
    CoreTE(const CoreTE& source) = delete;
    CoreTE(CoreTE&& source)  = delete;

    CoreTE& operator=(const CoreTE& source) = delete;
    CoreTE& operator=(CoreTE&& source)  = delete;
};