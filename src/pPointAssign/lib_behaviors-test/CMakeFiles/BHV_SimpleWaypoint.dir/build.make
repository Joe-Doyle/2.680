# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/joseph/moos-ivp-jadoyle/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/joseph/moos-ivp-jadoyle/src/pPointAssign

# Include any dependencies generated for this target.
include lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/depend.make

# Include the progress variables for this target.
include lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/progress.make

# Include the compile flags for this target's objects.
include lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/flags.make

lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/BHV_SimpleWaypoint.o: lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/flags.make
lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/BHV_SimpleWaypoint.o: ../lib_behaviors-test/BHV_SimpleWaypoint.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joseph/moos-ivp-jadoyle/src/pPointAssign/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/BHV_SimpleWaypoint.o"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/lib_behaviors-test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BHV_SimpleWaypoint.dir/BHV_SimpleWaypoint.o -c /Users/joseph/moos-ivp-jadoyle/src/lib_behaviors-test/BHV_SimpleWaypoint.cpp

lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/BHV_SimpleWaypoint.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BHV_SimpleWaypoint.dir/BHV_SimpleWaypoint.i"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/lib_behaviors-test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joseph/moos-ivp-jadoyle/src/lib_behaviors-test/BHV_SimpleWaypoint.cpp > CMakeFiles/BHV_SimpleWaypoint.dir/BHV_SimpleWaypoint.i

lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/BHV_SimpleWaypoint.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BHV_SimpleWaypoint.dir/BHV_SimpleWaypoint.s"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/lib_behaviors-test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joseph/moos-ivp-jadoyle/src/lib_behaviors-test/BHV_SimpleWaypoint.cpp -o CMakeFiles/BHV_SimpleWaypoint.dir/BHV_SimpleWaypoint.s

lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/AOF_SimpleWaypoint.o: lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/flags.make
lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/AOF_SimpleWaypoint.o: ../lib_behaviors-test/AOF_SimpleWaypoint.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joseph/moos-ivp-jadoyle/src/pPointAssign/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/AOF_SimpleWaypoint.o"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/lib_behaviors-test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BHV_SimpleWaypoint.dir/AOF_SimpleWaypoint.o -c /Users/joseph/moos-ivp-jadoyle/src/lib_behaviors-test/AOF_SimpleWaypoint.cpp

lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/AOF_SimpleWaypoint.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BHV_SimpleWaypoint.dir/AOF_SimpleWaypoint.i"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/lib_behaviors-test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joseph/moos-ivp-jadoyle/src/lib_behaviors-test/AOF_SimpleWaypoint.cpp > CMakeFiles/BHV_SimpleWaypoint.dir/AOF_SimpleWaypoint.i

lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/AOF_SimpleWaypoint.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BHV_SimpleWaypoint.dir/AOF_SimpleWaypoint.s"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/lib_behaviors-test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joseph/moos-ivp-jadoyle/src/lib_behaviors-test/AOF_SimpleWaypoint.cpp -o CMakeFiles/BHV_SimpleWaypoint.dir/AOF_SimpleWaypoint.s

# Object files for target BHV_SimpleWaypoint
BHV_SimpleWaypoint_OBJECTS = \
"CMakeFiles/BHV_SimpleWaypoint.dir/BHV_SimpleWaypoint.o" \
"CMakeFiles/BHV_SimpleWaypoint.dir/AOF_SimpleWaypoint.o"

# External object files for target BHV_SimpleWaypoint
BHV_SimpleWaypoint_EXTERNAL_OBJECTS =

lib_behaviors-test/libBHV_SimpleWaypoint.dylib: lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/BHV_SimpleWaypoint.o
lib_behaviors-test/libBHV_SimpleWaypoint.dylib: lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/AOF_SimpleWaypoint.o
lib_behaviors-test/libBHV_SimpleWaypoint.dylib: lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/build.make
lib_behaviors-test/libBHV_SimpleWaypoint.dylib: lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/joseph/moos-ivp-jadoyle/src/pPointAssign/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libBHV_SimpleWaypoint.dylib"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/lib_behaviors-test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BHV_SimpleWaypoint.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/build: lib_behaviors-test/libBHV_SimpleWaypoint.dylib

.PHONY : lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/build

lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/clean:
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/lib_behaviors-test && $(CMAKE_COMMAND) -P CMakeFiles/BHV_SimpleWaypoint.dir/cmake_clean.cmake
.PHONY : lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/clean

lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/depend:
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/joseph/moos-ivp-jadoyle/src /Users/joseph/moos-ivp-jadoyle/src/lib_behaviors-test /Users/joseph/moos-ivp-jadoyle/src/pPointAssign /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/lib_behaviors-test /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib_behaviors-test/CMakeFiles/BHV_SimpleWaypoint.dir/depend

