# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/russellbest/Development/Program_options/program_options

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/russellbest/Development/Program_options/program_options/build

# Include any dependencies generated for this target.
include CMakeFiles/boost.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/boost.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/boost.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/boost.dir/flags.make

CMakeFiles/boost.dir/main.cpp.o: CMakeFiles/boost.dir/flags.make
CMakeFiles/boost.dir/main.cpp.o: CMakeFiles/boost.dir/includes_CXX.rsp
CMakeFiles/boost.dir/main.cpp.o: ../main.cpp
CMakeFiles/boost.dir/main.cpp.o: CMakeFiles/boost.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/russellbest/Development/Program_options/program_options/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/boost.dir/main.cpp.o"
	/home/russellbest/Development/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/boost.dir/main.cpp.o -MF CMakeFiles/boost.dir/main.cpp.o.d -o CMakeFiles/boost.dir/main.cpp.o -c /home/russellbest/Development/Program_options/program_options/main.cpp

CMakeFiles/boost.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/boost.dir/main.cpp.i"
	/home/russellbest/Development/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/russellbest/Development/Program_options/program_options/main.cpp > CMakeFiles/boost.dir/main.cpp.i

CMakeFiles/boost.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/boost.dir/main.cpp.s"
	/home/russellbest/Development/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/russellbest/Development/Program_options/program_options/main.cpp -o CMakeFiles/boost.dir/main.cpp.s

# Object files for target boost
boost_OBJECTS = \
"CMakeFiles/boost.dir/main.cpp.o"

# External object files for target boost
boost_EXTERNAL_OBJECTS =

boost.html: CMakeFiles/boost.dir/main.cpp.o
boost.html: CMakeFiles/boost.dir/build.make
boost.html: CMakeFiles/boost.dir/linklibs.rsp
boost.html: CMakeFiles/boost.dir/objects1.rsp
boost.html: CMakeFiles/boost.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/russellbest/Development/Program_options/program_options/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable boost.html"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/boost.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/boost.dir/build: boost.html
.PHONY : CMakeFiles/boost.dir/build

CMakeFiles/boost.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/boost.dir/cmake_clean.cmake
.PHONY : CMakeFiles/boost.dir/clean

CMakeFiles/boost.dir/depend:
	cd /home/russellbest/Development/Program_options/program_options/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/russellbest/Development/Program_options/program_options /home/russellbest/Development/Program_options/program_options /home/russellbest/Development/Program_options/program_options/build /home/russellbest/Development/Program_options/program_options/build /home/russellbest/Development/Program_options/program_options/build/CMakeFiles/boost.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/boost.dir/depend

