# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/tianyongliu/workspace/clanguage/ky_datastruct/Reverse OrderTree"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/tianyongliu/workspace/clanguage/ky_datastruct/Reverse OrderTree/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Reverse_OrderTree.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Reverse_OrderTree.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Reverse_OrderTree.dir/flags.make

CMakeFiles/Reverse_OrderTree.dir/main.c.o: CMakeFiles/Reverse_OrderTree.dir/flags.make
CMakeFiles/Reverse_OrderTree.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/tianyongliu/workspace/clanguage/ky_datastruct/Reverse OrderTree/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Reverse_OrderTree.dir/main.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Reverse_OrderTree.dir/main.c.o -c "/Users/tianyongliu/workspace/clanguage/ky_datastruct/Reverse OrderTree/main.c"

CMakeFiles/Reverse_OrderTree.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Reverse_OrderTree.dir/main.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/tianyongliu/workspace/clanguage/ky_datastruct/Reverse OrderTree/main.c" > CMakeFiles/Reverse_OrderTree.dir/main.c.i

CMakeFiles/Reverse_OrderTree.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Reverse_OrderTree.dir/main.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/tianyongliu/workspace/clanguage/ky_datastruct/Reverse OrderTree/main.c" -o CMakeFiles/Reverse_OrderTree.dir/main.c.s

# Object files for target Reverse_OrderTree
Reverse_OrderTree_OBJECTS = \
"CMakeFiles/Reverse_OrderTree.dir/main.c.o"

# External object files for target Reverse_OrderTree
Reverse_OrderTree_EXTERNAL_OBJECTS =

Reverse_OrderTree: CMakeFiles/Reverse_OrderTree.dir/main.c.o
Reverse_OrderTree: CMakeFiles/Reverse_OrderTree.dir/build.make
Reverse_OrderTree: CMakeFiles/Reverse_OrderTree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/tianyongliu/workspace/clanguage/ky_datastruct/Reverse OrderTree/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Reverse_OrderTree"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Reverse_OrderTree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Reverse_OrderTree.dir/build: Reverse_OrderTree
.PHONY : CMakeFiles/Reverse_OrderTree.dir/build

CMakeFiles/Reverse_OrderTree.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Reverse_OrderTree.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Reverse_OrderTree.dir/clean

CMakeFiles/Reverse_OrderTree.dir/depend:
	cd "/Users/tianyongliu/workspace/clanguage/ky_datastruct/Reverse OrderTree/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/tianyongliu/workspace/clanguage/ky_datastruct/Reverse OrderTree" "/Users/tianyongliu/workspace/clanguage/ky_datastruct/Reverse OrderTree" "/Users/tianyongliu/workspace/clanguage/ky_datastruct/Reverse OrderTree/cmake-build-debug" "/Users/tianyongliu/workspace/clanguage/ky_datastruct/Reverse OrderTree/cmake-build-debug" "/Users/tianyongliu/workspace/clanguage/ky_datastruct/Reverse OrderTree/cmake-build-debug/CMakeFiles/Reverse_OrderTree.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Reverse_OrderTree.dir/depend

