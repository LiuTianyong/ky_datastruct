# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\JetBrains\CLion 2021.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\JetBrains\CLion 2021.2.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\datastruct\LevelTraverse_out

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\datastruct\LevelTraverse_out\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/LevelTraverse_out.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/LevelTraverse_out.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LevelTraverse_out.dir/flags.make

CMakeFiles/LevelTraverse_out.dir/main.cpp.obj: CMakeFiles/LevelTraverse_out.dir/flags.make
CMakeFiles/LevelTraverse_out.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\datastruct\LevelTraverse_out\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LevelTraverse_out.dir/main.cpp.obj"
	D:\PROGRA~2\CODEBL~1\MinGW\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\LevelTraverse_out.dir\main.cpp.obj -c E:\datastruct\LevelTraverse_out\main.cpp

CMakeFiles/LevelTraverse_out.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LevelTraverse_out.dir/main.cpp.i"
	D:\PROGRA~2\CODEBL~1\MinGW\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\datastruct\LevelTraverse_out\main.cpp > CMakeFiles\LevelTraverse_out.dir\main.cpp.i

CMakeFiles/LevelTraverse_out.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LevelTraverse_out.dir/main.cpp.s"
	D:\PROGRA~2\CODEBL~1\MinGW\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\datastruct\LevelTraverse_out\main.cpp -o CMakeFiles\LevelTraverse_out.dir\main.cpp.s

# Object files for target LevelTraverse_out
LevelTraverse_out_OBJECTS = \
"CMakeFiles/LevelTraverse_out.dir/main.cpp.obj"

# External object files for target LevelTraverse_out
LevelTraverse_out_EXTERNAL_OBJECTS =

LevelTraverse_out.exe: CMakeFiles/LevelTraverse_out.dir/main.cpp.obj
LevelTraverse_out.exe: CMakeFiles/LevelTraverse_out.dir/build.make
LevelTraverse_out.exe: CMakeFiles/LevelTraverse_out.dir/linklibs.rsp
LevelTraverse_out.exe: CMakeFiles/LevelTraverse_out.dir/objects1.rsp
LevelTraverse_out.exe: CMakeFiles/LevelTraverse_out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\datastruct\LevelTraverse_out\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LevelTraverse_out.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\LevelTraverse_out.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LevelTraverse_out.dir/build: LevelTraverse_out.exe
.PHONY : CMakeFiles/LevelTraverse_out.dir/build

CMakeFiles/LevelTraverse_out.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\LevelTraverse_out.dir\cmake_clean.cmake
.PHONY : CMakeFiles/LevelTraverse_out.dir/clean

CMakeFiles/LevelTraverse_out.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\datastruct\LevelTraverse_out E:\datastruct\LevelTraverse_out E:\datastruct\LevelTraverse_out\cmake-build-debug E:\datastruct\LevelTraverse_out\cmake-build-debug E:\datastruct\LevelTraverse_out\cmake-build-debug\CMakeFiles\LevelTraverse_out.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LevelTraverse_out.dir/depend

