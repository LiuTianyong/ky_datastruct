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
CMAKE_SOURCE_DIR = /Users/tianyongliu/workspace/clanguage/ky_datastruct/TreeNonRecursionWD

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tianyongliu/workspace/clanguage/ky_datastruct/TreeNonRecursionWD/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/TreeNonRecursionWD.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/TreeNonRecursionWD.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TreeNonRecursionWD.dir/flags.make

CMakeFiles/TreeNonRecursionWD.dir/main.c.o: CMakeFiles/TreeNonRecursionWD.dir/flags.make
CMakeFiles/TreeNonRecursionWD.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tianyongliu/workspace/clanguage/ky_datastruct/TreeNonRecursionWD/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/TreeNonRecursionWD.dir/main.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TreeNonRecursionWD.dir/main.c.o -c /Users/tianyongliu/workspace/clanguage/ky_datastruct/TreeNonRecursionWD/main.c

CMakeFiles/TreeNonRecursionWD.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TreeNonRecursionWD.dir/main.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/tianyongliu/workspace/clanguage/ky_datastruct/TreeNonRecursionWD/main.c > CMakeFiles/TreeNonRecursionWD.dir/main.c.i

CMakeFiles/TreeNonRecursionWD.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TreeNonRecursionWD.dir/main.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/tianyongliu/workspace/clanguage/ky_datastruct/TreeNonRecursionWD/main.c -o CMakeFiles/TreeNonRecursionWD.dir/main.c.s

# Object files for target TreeNonRecursionWD
TreeNonRecursionWD_OBJECTS = \
"CMakeFiles/TreeNonRecursionWD.dir/main.c.o"

# External object files for target TreeNonRecursionWD
TreeNonRecursionWD_EXTERNAL_OBJECTS =

TreeNonRecursionWD: CMakeFiles/TreeNonRecursionWD.dir/main.c.o
TreeNonRecursionWD: CMakeFiles/TreeNonRecursionWD.dir/build.make
TreeNonRecursionWD: CMakeFiles/TreeNonRecursionWD.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tianyongliu/workspace/clanguage/ky_datastruct/TreeNonRecursionWD/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable TreeNonRecursionWD"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TreeNonRecursionWD.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TreeNonRecursionWD.dir/build: TreeNonRecursionWD
.PHONY : CMakeFiles/TreeNonRecursionWD.dir/build

CMakeFiles/TreeNonRecursionWD.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TreeNonRecursionWD.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TreeNonRecursionWD.dir/clean

CMakeFiles/TreeNonRecursionWD.dir/depend:
	cd /Users/tianyongliu/workspace/clanguage/ky_datastruct/TreeNonRecursionWD/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tianyongliu/workspace/clanguage/ky_datastruct/TreeNonRecursionWD /Users/tianyongliu/workspace/clanguage/ky_datastruct/TreeNonRecursionWD /Users/tianyongliu/workspace/clanguage/ky_datastruct/TreeNonRecursionWD/cmake-build-debug /Users/tianyongliu/workspace/clanguage/ky_datastruct/TreeNonRecursionWD/cmake-build-debug /Users/tianyongliu/workspace/clanguage/ky_datastruct/TreeNonRecursionWD/cmake-build-debug/CMakeFiles/TreeNonRecursionWD.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TreeNonRecursionWD.dir/depend

