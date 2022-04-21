#include "opente/core/CoreTE.hpp"


CoreTE::CoreTE() {}

CoreTE::CoreTE(CmdLineParser& parser)
{
	setParam(param, parser);
}

CoreTE::~CoreTE()
{
	// this->joinThreads();
}

void CoreTE::joinThreads()
{
	if(threads_vector.size() != 0)
	{
  		std::for_each(threads_vector.begin(), threads_vector.end(), [](std::thread& t) { t.join(); });
  	}
}
void CoreTE::load()
{	

	threads_vector.emplace_back(std::thread(&readInput, std::ref(param.input_path), std::ref(input_queue)));
	// threads_vector.emplace_back(std::thread(&readClasses, std::ref(param.classes_path), std::ref(classes)));
	// threads_vector.emplace_back(std::thread(&readModel, std::ref(param.model_path), std::ref(param.config_path), std::ref(param.framework), std::ref(net)));

	// readInput(param.input_path, input_queue);

	readClasses(param.classes_path, classes);

	readModel(param.model_path , param.config_path, param.framework, net);

}

void CoreTE::detect()
{
	// check which type of model user selected(default is MobileNet):
	if(param.architecture == "MobileNet")
	{
    	model = ModelEngine::createModel("MobileNet");
    }
    else if(param.architecture == "Subtraction")
    {
    	model = ModelEngine::createModel("Subtraction");
    }
    else{
    	std::cout << "Invalid model name!\n";
    	exit(-1);
    }


	// Computation timer:
   	Timer time;
   	std::cout << "start processing" << std::endl;
	this->joinThreads();
	while(!input_queue.isEmpty())
	{
   		std::cout << "start while loop" << std::endl;
   		cv::Mat frame = input_queue.get();
   		std::cout << "input_queue.get() -> done" << std::endl;
	
   		model->preProcess(output, frame, net);
   		std::cout << "preprocess..-> done" << std::endl;
	
   		model->process(output, net);
   		std::cout << "process..-> done" << std::endl;
	
		model->postProcess(output, frame, classes, centroids);
   		std::cout << "postprocess..-> done" << std::endl;
	
		model->drawResultOnImage(frame, centroids);
   		std::cout << "draw image..-> done" << std::endl;
		
		saveImage(param.save_path, frame);
   		std::cout << "saving..-> done" << std::endl;
	}
   	std::cout << "end processing" << std::endl;
   	// for(int i=0; i < centroids.size(); i++)
   	// {
   	//     std::cout << "name: "  << centroids[i].name << "\n";
   	//     std::cout << "ID: "    << centroids[i].id << "\n";
   	//     std::cout << "conf: "  << centroids[i].conf << "\n";
   	//     std::cout << "center: "<< centroids[i].center << "\n";
   	//     std::cout << "c_x: "   << centroids[i].center.x << "\n";
   	//     std::cout << "c_y: "   << centroids[i].center.y << "\n";
   	//     std::cout << "w: "     << centroids[i].box.width  << "\n";
   	//     std::cout << "h: "     << centroids[i].box.height << "\n";
   	// }



}


