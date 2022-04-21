#include "opente/utils/Timer.hpp"

Timer::Timer()
{
	start = std::chrono::high_resolution_clock::now();
}

Timer::~Timer()
{
	end = std::chrono::high_resolution_clock::now();

	duration = end - start;	
	float second = duration.count();
	std::cout << "Computation took: " << second << "s" << std::endl;
    std::cout << "------------------------------------\n";

}