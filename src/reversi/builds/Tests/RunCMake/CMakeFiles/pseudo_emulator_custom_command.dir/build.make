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
include Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/compiler_depend.make

# Include the progress variables for this target.
include Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/progress.make

# Include the compile flags for this target's objects.
include Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/flags.make

Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/pseudo_emulator_custom_command.c.obj: Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/flags.make
Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/pseudo_emulator_custom_command.c.obj: Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/includes_C.rsp
Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/pseudo_emulator_custom_command.c.obj: C:/Users/leesj/Desktop/DiscordBot/src/reversi/opencv_sources/cmake-3.21.0-rc1/cmake-3.21.0-rc1/Tests/RunCMake/pseudo_emulator_custom_command.c
Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/pseudo_emulator_custom_command.c.obj: Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/pseudo_emulator_custom_command.c.obj"
	cd /d C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/pseudo_emulator_custom_command.c.obj -MF CMakeFiles\pseudo_emulator_custom_command.dir\pseudo_emulator_custom_command.c.obj.d -o CMakeFiles\pseudo_emulator_custom_command.dir\pseudo_emulator_custom_command.c.obj -c C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1\Tests\RunCMake\pseudo_emulator_custom_command.c

Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/pseudo_emulator_custom_command.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pseudo_emulator_custom_command.dir/pseudo_emulator_custom_command.c.i"
	cd /d C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1\Tests\RunCMake\pseudo_emulator_custom_command.c > CMakeFiles\pseudo_emulator_custom_command.dir\pseudo_emulator_custom_command.c.i

Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/pseudo_emulator_custom_command.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pseudo_emulator_custom_command.dir/pseudo_emulator_custom_command.c.s"
	cd /d C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1\Tests\RunCMake\pseudo_emulator_custom_command.c -o CMakeFiles\pseudo_emulator_custom_command.dir\pseudo_emulator_custom_command.c.s

# Object files for target pseudo_emulator_custom_command
pseudo_emulator_custom_command_OBJECTS = \
"CMakeFiles/pseudo_emulator_custom_command.dir/pseudo_emulator_custom_command.c.obj"

# External object files for target pseudo_emulator_custom_command
pseudo_emulator_custom_command_EXTERNAL_OBJECTS =

Tests/RunCMake/pseudo_emulator_custom_command.exe: Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/pseudo_emulator_custom_command.c.obj
Tests/RunCMake/pseudo_emulator_custom_command.exe: Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/build.make
Tests/RunCMake/pseudo_emulator_custom_command.exe: Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/linklibs.rsp
Tests/RunCMake/pseudo_emulator_custom_command.exe: Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/objects1.rsp
Tests/RunCMake/pseudo_emulator_custom_command.exe: Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pseudo_emulator_custom_command.exe"
	cd /d C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\pseudo_emulator_custom_command.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/build: Tests/RunCMake/pseudo_emulator_custom_command.exe
.PHONY : Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/build

Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/clean:
	cd /d C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake && $(CMAKE_COMMAND) -P CMakeFiles\pseudo_emulator_custom_command.dir\cmake_clean.cmake
.PHONY : Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/clean

Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1 C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1\Tests\RunCMake C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake\CMakeFiles\pseudo_emulator_custom_command.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : Tests/RunCMake/CMakeFiles/pseudo_emulator_custom_command.dir/depend

