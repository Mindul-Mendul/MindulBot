# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds

# Include any dependencies generated for this target.
include Tests/RunCMake/CMakeFiles/color_warning.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Tests/RunCMake/CMakeFiles/color_warning.dir/compiler_depend.make

# Include the progress variables for this target.
include Tests/RunCMake/CMakeFiles/color_warning.dir/progress.make

# Include the compile flags for this target's objects.
include Tests/RunCMake/CMakeFiles/color_warning.dir/flags.make

Tests/RunCMake/CMakeFiles/color_warning.dir/color_warning.c.obj: Tests/RunCMake/CMakeFiles/color_warning.dir/flags.make
Tests/RunCMake/CMakeFiles/color_warning.dir/color_warning.c.obj: Tests/RunCMake/CMakeFiles/color_warning.dir/includes_C.rsp
Tests/RunCMake/CMakeFiles/color_warning.dir/color_warning.c.obj: C:/Users/leesj/Desktop/DiscordBot/src/reversi/opencv_sources/cmake-3.21.0-rc1/cmake-3.21.0-rc1/Tests/RunCMake/color_warning.c
Tests/RunCMake/CMakeFiles/color_warning.dir/color_warning.c.obj: Tests/RunCMake/CMakeFiles/color_warning.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Tests/RunCMake/CMakeFiles/color_warning.dir/color_warning.c.obj"
	cd /d C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Tests/RunCMake/CMakeFiles/color_warning.dir/color_warning.c.obj -MF CMakeFiles\color_warning.dir\color_warning.c.obj.d -o CMakeFiles\color_warning.dir\color_warning.c.obj -c C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1\Tests\RunCMake\color_warning.c

Tests/RunCMake/CMakeFiles/color_warning.dir/color_warning.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/color_warning.dir/color_warning.c.i"
	cd /d C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1\Tests\RunCMake\color_warning.c > CMakeFiles\color_warning.dir\color_warning.c.i

Tests/RunCMake/CMakeFiles/color_warning.dir/color_warning.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/color_warning.dir/color_warning.c.s"
	cd /d C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1\Tests\RunCMake\color_warning.c -o CMakeFiles\color_warning.dir\color_warning.c.s

# Object files for target color_warning
color_warning_OBJECTS = \
"CMakeFiles/color_warning.dir/color_warning.c.obj"

# External object files for target color_warning
color_warning_EXTERNAL_OBJECTS =

Tests/RunCMake/color_warning.exe: Tests/RunCMake/CMakeFiles/color_warning.dir/color_warning.c.obj
Tests/RunCMake/color_warning.exe: Tests/RunCMake/CMakeFiles/color_warning.dir/build.make
Tests/RunCMake/color_warning.exe: Tests/RunCMake/CMakeFiles/color_warning.dir/linklibs.rsp
Tests/RunCMake/color_warning.exe: Tests/RunCMake/CMakeFiles/color_warning.dir/objects1.rsp
Tests/RunCMake/color_warning.exe: Tests/RunCMake/CMakeFiles/color_warning.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable color_warning.exe"
	cd /d C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\color_warning.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Tests/RunCMake/CMakeFiles/color_warning.dir/build: Tests/RunCMake/color_warning.exe
.PHONY : Tests/RunCMake/CMakeFiles/color_warning.dir/build

Tests/RunCMake/CMakeFiles/color_warning.dir/clean:
	cd /d C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake && $(CMAKE_COMMAND) -P CMakeFiles\color_warning.dir\cmake_clean.cmake
.PHONY : Tests/RunCMake/CMakeFiles/color_warning.dir/clean

Tests/RunCMake/CMakeFiles/color_warning.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1 C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1\Tests\RunCMake C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake\CMakeFiles\color_warning.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : Tests/RunCMake/CMakeFiles/color_warning.dir/depend

