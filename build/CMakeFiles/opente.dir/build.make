# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.21.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.21.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/build

# Include any dependencies generated for this target.
include CMakeFiles/opente.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/opente.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/opente.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/opente.dir/flags.make

CMakeFiles/opente.dir/src/core/CoreTE.cpp.o: CMakeFiles/opente.dir/flags.make
CMakeFiles/opente.dir/src/core/CoreTE.cpp.o: ../src/core/CoreTE.cpp
CMakeFiles/opente.dir/src/core/CoreTE.cpp.o: CMakeFiles/opente.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/opente.dir/src/core/CoreTE.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opente.dir/src/core/CoreTE.cpp.o -MF CMakeFiles/opente.dir/src/core/CoreTE.cpp.o.d -o CMakeFiles/opente.dir/src/core/CoreTE.cpp.o -c /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/core/CoreTE.cpp

CMakeFiles/opente.dir/src/core/CoreTE.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opente.dir/src/core/CoreTE.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/core/CoreTE.cpp > CMakeFiles/opente.dir/src/core/CoreTE.cpp.i

CMakeFiles/opente.dir/src/core/CoreTE.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opente.dir/src/core/CoreTE.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/core/CoreTE.cpp -o CMakeFiles/opente.dir/src/core/CoreTE.cpp.s

CMakeFiles/opente.dir/src/features/FileManager.cpp.o: CMakeFiles/opente.dir/flags.make
CMakeFiles/opente.dir/src/features/FileManager.cpp.o: ../src/features/FileManager.cpp
CMakeFiles/opente.dir/src/features/FileManager.cpp.o: CMakeFiles/opente.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/opente.dir/src/features/FileManager.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opente.dir/src/features/FileManager.cpp.o -MF CMakeFiles/opente.dir/src/features/FileManager.cpp.o.d -o CMakeFiles/opente.dir/src/features/FileManager.cpp.o -c /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/features/FileManager.cpp

CMakeFiles/opente.dir/src/features/FileManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opente.dir/src/features/FileManager.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/features/FileManager.cpp > CMakeFiles/opente.dir/src/features/FileManager.cpp.i

CMakeFiles/opente.dir/src/features/FileManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opente.dir/src/features/FileManager.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/features/FileManager.cpp -o CMakeFiles/opente.dir/src/features/FileManager.cpp.s

CMakeFiles/opente.dir/src/main.cpp.o: CMakeFiles/opente.dir/flags.make
CMakeFiles/opente.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/opente.dir/src/main.cpp.o: CMakeFiles/opente.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/opente.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opente.dir/src/main.cpp.o -MF CMakeFiles/opente.dir/src/main.cpp.o.d -o CMakeFiles/opente.dir/src/main.cpp.o -c /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/main.cpp

CMakeFiles/opente.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opente.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/main.cpp > CMakeFiles/opente.dir/src/main.cpp.i

CMakeFiles/opente.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opente.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/main.cpp -o CMakeFiles/opente.dir/src/main.cpp.s

CMakeFiles/opente.dir/src/model/detector/MobileNet.cpp.o: CMakeFiles/opente.dir/flags.make
CMakeFiles/opente.dir/src/model/detector/MobileNet.cpp.o: ../src/model/detector/MobileNet.cpp
CMakeFiles/opente.dir/src/model/detector/MobileNet.cpp.o: CMakeFiles/opente.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/opente.dir/src/model/detector/MobileNet.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opente.dir/src/model/detector/MobileNet.cpp.o -MF CMakeFiles/opente.dir/src/model/detector/MobileNet.cpp.o.d -o CMakeFiles/opente.dir/src/model/detector/MobileNet.cpp.o -c /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/model/detector/MobileNet.cpp

CMakeFiles/opente.dir/src/model/detector/MobileNet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opente.dir/src/model/detector/MobileNet.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/model/detector/MobileNet.cpp > CMakeFiles/opente.dir/src/model/detector/MobileNet.cpp.i

CMakeFiles/opente.dir/src/model/detector/MobileNet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opente.dir/src/model/detector/MobileNet.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/model/detector/MobileNet.cpp -o CMakeFiles/opente.dir/src/model/detector/MobileNet.cpp.s

CMakeFiles/opente.dir/src/model/detector/Subtraction.cpp.o: CMakeFiles/opente.dir/flags.make
CMakeFiles/opente.dir/src/model/detector/Subtraction.cpp.o: ../src/model/detector/Subtraction.cpp
CMakeFiles/opente.dir/src/model/detector/Subtraction.cpp.o: CMakeFiles/opente.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/opente.dir/src/model/detector/Subtraction.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opente.dir/src/model/detector/Subtraction.cpp.o -MF CMakeFiles/opente.dir/src/model/detector/Subtraction.cpp.o.d -o CMakeFiles/opente.dir/src/model/detector/Subtraction.cpp.o -c /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/model/detector/Subtraction.cpp

CMakeFiles/opente.dir/src/model/detector/Subtraction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opente.dir/src/model/detector/Subtraction.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/model/detector/Subtraction.cpp > CMakeFiles/opente.dir/src/model/detector/Subtraction.cpp.i

CMakeFiles/opente.dir/src/model/detector/Subtraction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opente.dir/src/model/detector/Subtraction.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/model/detector/Subtraction.cpp -o CMakeFiles/opente.dir/src/model/detector/Subtraction.cpp.s

CMakeFiles/opente.dir/src/model/detector/Yolo.cpp.o: CMakeFiles/opente.dir/flags.make
CMakeFiles/opente.dir/src/model/detector/Yolo.cpp.o: ../src/model/detector/Yolo.cpp
CMakeFiles/opente.dir/src/model/detector/Yolo.cpp.o: CMakeFiles/opente.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/opente.dir/src/model/detector/Yolo.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opente.dir/src/model/detector/Yolo.cpp.o -MF CMakeFiles/opente.dir/src/model/detector/Yolo.cpp.o.d -o CMakeFiles/opente.dir/src/model/detector/Yolo.cpp.o -c /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/model/detector/Yolo.cpp

CMakeFiles/opente.dir/src/model/detector/Yolo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opente.dir/src/model/detector/Yolo.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/model/detector/Yolo.cpp > CMakeFiles/opente.dir/src/model/detector/Yolo.cpp.i

CMakeFiles/opente.dir/src/model/detector/Yolo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opente.dir/src/model/detector/Yolo.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/model/detector/Yolo.cpp -o CMakeFiles/opente.dir/src/model/detector/Yolo.cpp.s

CMakeFiles/opente.dir/src/utils/CmdLineParser.cpp.o: CMakeFiles/opente.dir/flags.make
CMakeFiles/opente.dir/src/utils/CmdLineParser.cpp.o: ../src/utils/CmdLineParser.cpp
CMakeFiles/opente.dir/src/utils/CmdLineParser.cpp.o: CMakeFiles/opente.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/opente.dir/src/utils/CmdLineParser.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opente.dir/src/utils/CmdLineParser.cpp.o -MF CMakeFiles/opente.dir/src/utils/CmdLineParser.cpp.o.d -o CMakeFiles/opente.dir/src/utils/CmdLineParser.cpp.o -c /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/utils/CmdLineParser.cpp

CMakeFiles/opente.dir/src/utils/CmdLineParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opente.dir/src/utils/CmdLineParser.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/utils/CmdLineParser.cpp > CMakeFiles/opente.dir/src/utils/CmdLineParser.cpp.i

CMakeFiles/opente.dir/src/utils/CmdLineParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opente.dir/src/utils/CmdLineParser.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/utils/CmdLineParser.cpp -o CMakeFiles/opente.dir/src/utils/CmdLineParser.cpp.s

CMakeFiles/opente.dir/src/utils/Log.cpp.o: CMakeFiles/opente.dir/flags.make
CMakeFiles/opente.dir/src/utils/Log.cpp.o: ../src/utils/Log.cpp
CMakeFiles/opente.dir/src/utils/Log.cpp.o: CMakeFiles/opente.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/opente.dir/src/utils/Log.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opente.dir/src/utils/Log.cpp.o -MF CMakeFiles/opente.dir/src/utils/Log.cpp.o.d -o CMakeFiles/opente.dir/src/utils/Log.cpp.o -c /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/utils/Log.cpp

CMakeFiles/opente.dir/src/utils/Log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opente.dir/src/utils/Log.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/utils/Log.cpp > CMakeFiles/opente.dir/src/utils/Log.cpp.i

CMakeFiles/opente.dir/src/utils/Log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opente.dir/src/utils/Log.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/utils/Log.cpp -o CMakeFiles/opente.dir/src/utils/Log.cpp.s

CMakeFiles/opente.dir/src/utils/Timer.cpp.o: CMakeFiles/opente.dir/flags.make
CMakeFiles/opente.dir/src/utils/Timer.cpp.o: ../src/utils/Timer.cpp
CMakeFiles/opente.dir/src/utils/Timer.cpp.o: CMakeFiles/opente.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/opente.dir/src/utils/Timer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opente.dir/src/utils/Timer.cpp.o -MF CMakeFiles/opente.dir/src/utils/Timer.cpp.o.d -o CMakeFiles/opente.dir/src/utils/Timer.cpp.o -c /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/utils/Timer.cpp

CMakeFiles/opente.dir/src/utils/Timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opente.dir/src/utils/Timer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/utils/Timer.cpp > CMakeFiles/opente.dir/src/utils/Timer.cpp.i

CMakeFiles/opente.dir/src/utils/Timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opente.dir/src/utils/Timer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/src/utils/Timer.cpp -o CMakeFiles/opente.dir/src/utils/Timer.cpp.s

# Object files for target opente
opente_OBJECTS = \
"CMakeFiles/opente.dir/src/core/CoreTE.cpp.o" \
"CMakeFiles/opente.dir/src/features/FileManager.cpp.o" \
"CMakeFiles/opente.dir/src/main.cpp.o" \
"CMakeFiles/opente.dir/src/model/detector/MobileNet.cpp.o" \
"CMakeFiles/opente.dir/src/model/detector/Subtraction.cpp.o" \
"CMakeFiles/opente.dir/src/model/detector/Yolo.cpp.o" \
"CMakeFiles/opente.dir/src/utils/CmdLineParser.cpp.o" \
"CMakeFiles/opente.dir/src/utils/Log.cpp.o" \
"CMakeFiles/opente.dir/src/utils/Timer.cpp.o"

# External object files for target opente
opente_EXTERNAL_OBJECTS =

opente: CMakeFiles/opente.dir/src/core/CoreTE.cpp.o
opente: CMakeFiles/opente.dir/src/features/FileManager.cpp.o
opente: CMakeFiles/opente.dir/src/main.cpp.o
opente: CMakeFiles/opente.dir/src/model/detector/MobileNet.cpp.o
opente: CMakeFiles/opente.dir/src/model/detector/Subtraction.cpp.o
opente: CMakeFiles/opente.dir/src/model/detector/Yolo.cpp.o
opente: CMakeFiles/opente.dir/src/utils/CmdLineParser.cpp.o
opente: CMakeFiles/opente.dir/src/utils/Log.cpp.o
opente: CMakeFiles/opente.dir/src/utils/Timer.cpp.o
opente: CMakeFiles/opente.dir/build.make
opente: /usr/local/lib/libopencv_gapi.4.5.5.dylib
opente: /usr/local/lib/libopencv_stitching.4.5.5.dylib
opente: /usr/local/lib/libopencv_alphamat.4.5.5.dylib
opente: /usr/local/lib/libopencv_aruco.4.5.5.dylib
opente: /usr/local/lib/libopencv_barcode.4.5.5.dylib
opente: /usr/local/lib/libopencv_bgsegm.4.5.5.dylib
opente: /usr/local/lib/libopencv_bioinspired.4.5.5.dylib
opente: /usr/local/lib/libopencv_ccalib.4.5.5.dylib
opente: /usr/local/lib/libopencv_dnn_objdetect.4.5.5.dylib
opente: /usr/local/lib/libopencv_dnn_superres.4.5.5.dylib
opente: /usr/local/lib/libopencv_dpm.4.5.5.dylib
opente: /usr/local/lib/libopencv_face.4.5.5.dylib
opente: /usr/local/lib/libopencv_freetype.4.5.5.dylib
opente: /usr/local/lib/libopencv_fuzzy.4.5.5.dylib
opente: /usr/local/lib/libopencv_hfs.4.5.5.dylib
opente: /usr/local/lib/libopencv_img_hash.4.5.5.dylib
opente: /usr/local/lib/libopencv_intensity_transform.4.5.5.dylib
opente: /usr/local/lib/libopencv_line_descriptor.4.5.5.dylib
opente: /usr/local/lib/libopencv_mcc.4.5.5.dylib
opente: /usr/local/lib/libopencv_quality.4.5.5.dylib
opente: /usr/local/lib/libopencv_rapid.4.5.5.dylib
opente: /usr/local/lib/libopencv_reg.4.5.5.dylib
opente: /usr/local/lib/libopencv_rgbd.4.5.5.dylib
opente: /usr/local/lib/libopencv_saliency.4.5.5.dylib
opente: /usr/local/lib/libopencv_sfm.4.5.5.dylib
opente: /usr/local/lib/libopencv_stereo.4.5.5.dylib
opente: /usr/local/lib/libopencv_structured_light.4.5.5.dylib
opente: /usr/local/lib/libopencv_superres.4.5.5.dylib
opente: /usr/local/lib/libopencv_surface_matching.4.5.5.dylib
opente: /usr/local/lib/libopencv_tracking.4.5.5.dylib
opente: /usr/local/lib/libopencv_videostab.4.5.5.dylib
opente: /usr/local/lib/libopencv_viz.4.5.5.dylib
opente: /usr/local/lib/libopencv_wechat_qrcode.4.5.5.dylib
opente: /usr/local/lib/libopencv_xfeatures2d.4.5.5.dylib
opente: /usr/local/lib/libopencv_xobjdetect.4.5.5.dylib
opente: /usr/local/lib/libopencv_xphoto.4.5.5.dylib
opente: /usr/local/lib/libopencv_shape.4.5.5.dylib
opente: /usr/local/lib/libopencv_highgui.4.5.5.dylib
opente: /usr/local/lib/libopencv_datasets.4.5.5.dylib
opente: /usr/local/lib/libopencv_plot.4.5.5.dylib
opente: /usr/local/lib/libopencv_text.4.5.5.dylib
opente: /usr/local/lib/libopencv_ml.4.5.5.dylib
opente: /usr/local/lib/libopencv_phase_unwrapping.4.5.5.dylib
opente: /usr/local/lib/libopencv_optflow.4.5.5.dylib
opente: /usr/local/lib/libopencv_ximgproc.4.5.5.dylib
opente: /usr/local/lib/libopencv_video.4.5.5.dylib
opente: /usr/local/lib/libopencv_videoio.4.5.5.dylib
opente: /usr/local/lib/libopencv_imgcodecs.4.5.5.dylib
opente: /usr/local/lib/libopencv_objdetect.4.5.5.dylib
opente: /usr/local/lib/libopencv_calib3d.4.5.5.dylib
opente: /usr/local/lib/libopencv_dnn.4.5.5.dylib
opente: /usr/local/lib/libopencv_features2d.4.5.5.dylib
opente: /usr/local/lib/libopencv_flann.4.5.5.dylib
opente: /usr/local/lib/libopencv_photo.4.5.5.dylib
opente: /usr/local/lib/libopencv_imgproc.4.5.5.dylib
opente: /usr/local/lib/libopencv_core.4.5.5.dylib
opente: CMakeFiles/opente.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable opente"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opente.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/opente.dir/build: opente
.PHONY : CMakeFiles/opente.dir/build

CMakeFiles/opente.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/opente.dir/cmake_clean.cmake
.PHONY : CMakeFiles/opente.dir/clean

CMakeFiles/opente.dir/depend:
	cd /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/build /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/build /Users/vahidfarjoodchafi/Desktop/C++/project/Computer-Vision/MAC/OpenTE/build/CMakeFiles/opente.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/opente.dir/depend

