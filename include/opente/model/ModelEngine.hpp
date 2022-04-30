#pragma once
#include "opente/model/Model.hpp"
#include "opente/model/Yolo.hpp"
#include "opente/model/MobileNet.hpp"
#include "opente/model/Subtraction.hpp"


class ModelEngine
{
public:
	static Model* createModel(std::string type)
	{
		if("MobileNet" == type) 
			return new MobileNet;

		else if("Yolo" == type) 
			return new Yolo;

		else if("Subtraction" == type) 
			return new Subtraction;

		else return nullptr;
	}
};