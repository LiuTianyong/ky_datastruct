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
CMAKE_SOURCE_DIR = E:\datastruct\double_linklist

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\datastruct\double_linklist\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/double_linklist.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/double_linklist.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/double_linklist.dir/flags.make

CMakeFiles/double_linklist.dir/main.c.obj: CMakeFiles/double_linklist.dir/flags.make
CMakeFiles/double_linklist.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\datastruct\double_linklist\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/double_linklist.dir/main.c.obj"
	D:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\double_linklist.dir\main.c.obj -c E:\datastruct\double_linklist\main.c

CMakeFiles/double_linklist.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/double_linklist.dir/main.c.i"
	D:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\datastruct\double_linklist\main.c > CMakeFiles\double_linklist.dir\main.c.i

CMakeFiles/double_linklist.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/double_linklist.dir/main.c.s"
	D:\PROGRA~2\CODEBL~1\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\datastruct\double_linklist\main.c -o CMakeFiles\double_linklist.dir\main.c.s

# Object files for target double_linklist
double_linklist_OBJECTS = \
"CMakeFiles/double_linklist.dir/main.c.obj"

# External object files for target double_linklist
double_linklist_EXTERNAL_OBJECTS =

double_linklist.exe: CMakeFiles/double_linklist.dir/main.c.obj
double_linklist.exe: CMakeFiles/double_linklist.dir/build.make
double_linklist.exe: CMakeFiles/double_linklist.dir/linklibs.rsp
double_linklist.exe: CMakeFiles/double_linklist.dir/objects1.rsp
double_linklist.exe: CMakeFiles/double_linklist.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\datastruct\double_linklist\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable double_linklist.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\double_linklist.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/double_linklist.dir/build: double_linklist.exe
.PHONY : CMakeFiles/double_linklist.dir/build

CMakeFiles/double_linklist.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\double_linklist.dir\cmake_clean.cmake
.PHONY : CMakeFiles/double_linklist.dir/clean

CMakeFiles/double_linklist.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\datastruct\double_linklist E:\datastruct\double_linklist E:\datastruct\double_linklist\cmake-build-debug E:\datastruct\double_linklist\cmake-build-debug E:\datastruct\double_linklist\cmake-build-debug\CMakeFiles\double_linklist.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/double_linklist.dir/depend

