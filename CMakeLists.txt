cmake_minimum_required(VERSION 3.7)

set(CMAKE_CXX_STANDARD 17)
message("CMAKE_CXX_STANDARD = ${CMAKE_CXX_STANDARD}")

project(OpenTE)

find_package(OpenCV 4.1 REQUIRED)

include_directories(${OpenCV_INCLUDE_DIRS} ${PROJECT_SOURCE_DIR}/include)
link_directories(${OpenCV_LIBRARY_DIRS})
add_definitions(${OpenCV_DEFINITIONS})

# Find all executables
file(GLOB project_SRCS  src/main.cpp
						src/core/CoreTE.cpp
						src/model/MobileNet.cpp
						src/model/Subtraction.cpp
						src/features/FileManager.cpp
						src/utils/CmdLineParser.cpp
					    src/utils/Log.cpp
					    src/utils/Timer.cpp)

# Add project executable
add_executable(opente ${project_SRCS})
target_link_libraries(opente ${OpenCV_LIBRARIES})

