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
CMAKE_SOURCE_DIR = E:\datastruct\QSort

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\datastruct\QSort\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/QSort.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/QSort.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/QSort.dir/flags.make

CMakeFiles/QSort.dir/main.c.obj: CMakeFiles/QSort.dir/flags.make
CMakeFiles/QSort.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\datastruct\QSort\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/QSort.dir/main.c.obj"
	D:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\QSort.dir\main.c.obj -c E:\datastruct\QSort\main.c

CMakeFiles/QSort.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/QSort.dir/main.c.i"
	D:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\datastruct\QSort\main.c > CMakeFiles\QSort.dir\main.c.i

CMakeFiles/QSort.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/QSort.dir/main.c.s"
	D:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\datastruct\QSort\main.c -o CMakeFiles\QSort.dir\main.c.s

# Object files for target QSort
QSort_OBJECTS = \
"CMakeFiles/QSort.dir/main.c.obj"

# External object files for target QSort
QSort_EXTERNAL_OBJECTS =

QSort.exe: CMakeFiles/QSort.dir/main.c.obj
QSort.exe: CMakeFiles/QSort.dir/build.make
QSort.exe: CMakeFiles/QSort.dir/linklibs.rsp
QSort.exe: CMakeFiles/QSort.dir/objects1.rsp
QSort.exe: CMakeFiles/QSort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\datastruct\QSort\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable QSort.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\QSort.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/QSort.dir/build: QSort.exe
.PHONY : CMakeFiles/QSort.dir/build

CMakeFiles/QSort.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\QSort.dir\cmake_clean.cmake
.PHONY : CMakeFiles/QSort.dir/clean

CMakeFiles/QSort.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\datastruct\QSort E:\datastruct\QSort E:\datastruct\QSort\cmake-build-debug E:\datastruct\QSort\cmake-build-debug E:\datastruct\QSort\cmake-build-debug\CMakeFiles\QSort.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/QSort.dir/depend

