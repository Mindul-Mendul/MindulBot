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
include Tests/RunCMake/CMakeFiles/print_stdin.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Tests/RunCMake/CMakeFiles/print_stdin.dir/compiler_depend.make

# Include the progress variables for this target.
include Tests/RunCMake/CMakeFiles/print_stdin.dir/progress.make

# Include the compile flags for this target's objects.
include Tests/RunCMake/CMakeFiles/print_stdin.dir/flags.make

Tests/RunCMake/CMakeFiles/print_stdin.dir/print_stdin.c.obj: Tests/RunCMake/CMakeFiles/print_stdin.dir/flags.make
Tests/RunCMake/CMakeFiles/print_stdin.dir/print_stdin.c.obj: Tests/RunCMake/CMakeFiles/print_stdin.dir/includes_C.rsp
Tests/RunCMake/CMakeFiles/print_stdin.dir/print_stdin.c.obj: C:/Users/leesj/Desktop/DiscordBot/src/reversi/opencv_sources/cmake-3.21.0-rc1/cmake-3.21.0-rc1/Tests/RunCMake/print_stdin.c
Tests/RunCMake/CMakeFiles/print_stdin.dir/print_stdin.c.obj: Tests/RunCMake/CMakeFiles/print_stdin.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Tests/RunCMake/CMakeFiles/print_stdin.dir/print_stdin.c.obj"
	cd /d C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Tests/RunCMake/CMakeFiles/print_stdin.dir/print_stdin.c.obj -MF CMakeFiles\print_stdin.dir\print_stdin.c.obj.d -o CMakeFiles\print_stdin.dir\print_stdin.c.obj -c C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1\Tests\RunCMake\print_stdin.c

Tests/RunCMake/CMakeFiles/print_stdin.dir/print_stdin.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/print_stdin.dir/print_stdin.c.i"
	cd /d C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1\Tests\RunCMake\print_stdin.c > CMakeFiles\print_stdin.dir\print_stdin.c.i

Tests/RunCMake/CMakeFiles/print_stdin.dir/print_stdin.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/print_stdin.dir/print_stdin.c.s"
	cd /d C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1\Tests\RunCMake\print_stdin.c -o CMakeFiles\print_stdin.dir\print_stdin.c.s

# Object files for target print_stdin
print_stdin_OBJECTS = \
"CMakeFiles/print_stdin.dir/print_stdin.c.obj"

# External object files for target print_stdin
print_stdin_EXTERNAL_OBJECTS =

Tests/RunCMake/print_stdin.exe: Tests/RunCMake/CMakeFiles/print_stdin.dir/print_stdin.c.obj
Tests/RunCMake/print_stdin.exe: Tests/RunCMake/CMakeFiles/print_stdin.dir/build.make
Tests/RunCMake/print_stdin.exe: Tests/RunCMake/CMakeFiles/print_stdin.dir/linklibs.rsp
Tests/RunCMake/print_stdin.exe: Tests/RunCMake/CMakeFiles/print_stdin.dir/objects1.rsp
Tests/RunCMake/print_stdin.exe: Tests/RunCMake/CMakeFiles/print_stdin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable print_stdin.exe"
	cd /d C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\print_stdin.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Tests/RunCMake/CMakeFiles/print_stdin.dir/build: Tests/RunCMake/print_stdin.exe
.PHONY : Tests/RunCMake/CMakeFiles/print_stdin.dir/build

Tests/RunCMake/CMakeFiles/print_stdin.dir/clean:
	cd /d C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake && $(CMAKE_COMMAND) -P CMakeFiles\print_stdin.dir\cmake_clean.cmake
.PHONY : Tests/RunCMake/CMakeFiles/print_stdin.dir/clean

Tests/RunCMake/CMakeFiles/print_stdin.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1 C:\Users\leesj\Desktop\DiscordBot\src\reversi\opencv_sources\cmake-3.21.0-rc1\cmake-3.21.0-rc1\Tests\RunCMake C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake C:\Users\leesj\Desktop\DiscordBot\src\reversi\builds\Tests\RunCMake\CMakeFiles\print_stdin.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : Tests/RunCMake/CMakeFiles/print_stdin.dir/depend

