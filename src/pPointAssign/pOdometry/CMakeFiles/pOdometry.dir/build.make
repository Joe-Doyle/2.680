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
include pOdometry/CMakeFiles/pOdometry.dir/depend.make

# Include the progress variables for this target.
include pOdometry/CMakeFiles/pOdometry.dir/progress.make

# Include the compile flags for this target's objects.
include pOdometry/CMakeFiles/pOdometry.dir/flags.make

pOdometry/CMakeFiles/pOdometry.dir/Odometry.o: pOdometry/CMakeFiles/pOdometry.dir/flags.make
pOdometry/CMakeFiles/pOdometry.dir/Odometry.o: ../pOdometry/Odometry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joseph/moos-ivp-jadoyle/src/pPointAssign/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object pOdometry/CMakeFiles/pOdometry.dir/Odometry.o"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/pOdometry && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pOdometry.dir/Odometry.o -c /Users/joseph/moos-ivp-jadoyle/src/pOdometry/Odometry.cpp

pOdometry/CMakeFiles/pOdometry.dir/Odometry.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pOdometry.dir/Odometry.i"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/pOdometry && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joseph/moos-ivp-jadoyle/src/pOdometry/Odometry.cpp > CMakeFiles/pOdometry.dir/Odometry.i

pOdometry/CMakeFiles/pOdometry.dir/Odometry.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pOdometry.dir/Odometry.s"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/pOdometry && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joseph/moos-ivp-jadoyle/src/pOdometry/Odometry.cpp -o CMakeFiles/pOdometry.dir/Odometry.s

pOdometry/CMakeFiles/pOdometry.dir/Odometry_Info.o: pOdometry/CMakeFiles/pOdometry.dir/flags.make
pOdometry/CMakeFiles/pOdometry.dir/Odometry_Info.o: ../pOdometry/Odometry_Info.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joseph/moos-ivp-jadoyle/src/pPointAssign/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object pOdometry/CMakeFiles/pOdometry.dir/Odometry_Info.o"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/pOdometry && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pOdometry.dir/Odometry_Info.o -c /Users/joseph/moos-ivp-jadoyle/src/pOdometry/Odometry_Info.cpp

pOdometry/CMakeFiles/pOdometry.dir/Odometry_Info.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pOdometry.dir/Odometry_Info.i"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/pOdometry && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joseph/moos-ivp-jadoyle/src/pOdometry/Odometry_Info.cpp > CMakeFiles/pOdometry.dir/Odometry_Info.i

pOdometry/CMakeFiles/pOdometry.dir/Odometry_Info.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pOdometry.dir/Odometry_Info.s"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/pOdometry && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joseph/moos-ivp-jadoyle/src/pOdometry/Odometry_Info.cpp -o CMakeFiles/pOdometry.dir/Odometry_Info.s

pOdometry/CMakeFiles/pOdometry.dir/main.o: pOdometry/CMakeFiles/pOdometry.dir/flags.make
pOdometry/CMakeFiles/pOdometry.dir/main.o: ../pOdometry/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joseph/moos-ivp-jadoyle/src/pPointAssign/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object pOdometry/CMakeFiles/pOdometry.dir/main.o"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/pOdometry && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pOdometry.dir/main.o -c /Users/joseph/moos-ivp-jadoyle/src/pOdometry/main.cpp

pOdometry/CMakeFiles/pOdometry.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pOdometry.dir/main.i"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/pOdometry && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joseph/moos-ivp-jadoyle/src/pOdometry/main.cpp > CMakeFiles/pOdometry.dir/main.i

pOdometry/CMakeFiles/pOdometry.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pOdometry.dir/main.s"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/pOdometry && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joseph/moos-ivp-jadoyle/src/pOdometry/main.cpp -o CMakeFiles/pOdometry.dir/main.s

# Object files for target pOdometry
pOdometry_OBJECTS = \
"CMakeFiles/pOdometry.dir/Odometry.o" \
"CMakeFiles/pOdometry.dir/Odometry_Info.o" \
"CMakeFiles/pOdometry.dir/main.o"

# External object files for target pOdometry
pOdometry_EXTERNAL_OBJECTS =

pOdometry/pOdometry: pOdometry/CMakeFiles/pOdometry.dir/Odometry.o
pOdometry/pOdometry: pOdometry/CMakeFiles/pOdometry.dir/Odometry_Info.o
pOdometry/pOdometry: pOdometry/CMakeFiles/pOdometry.dir/main.o
pOdometry/pOdometry: pOdometry/CMakeFiles/pOdometry.dir/build.make
pOdometry/pOdometry: pOdometry/CMakeFiles/pOdometry.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/joseph/moos-ivp-jadoyle/src/pPointAssign/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable pOdometry"
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/pOdometry && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pOdometry.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pOdometry/CMakeFiles/pOdometry.dir/build: pOdometry/pOdometry

.PHONY : pOdometry/CMakeFiles/pOdometry.dir/build

pOdometry/CMakeFiles/pOdometry.dir/clean:
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/pOdometry && $(CMAKE_COMMAND) -P CMakeFiles/pOdometry.dir/cmake_clean.cmake
.PHONY : pOdometry/CMakeFiles/pOdometry.dir/clean

pOdometry/CMakeFiles/pOdometry.dir/depend:
	cd /Users/joseph/moos-ivp-jadoyle/src/pPointAssign && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/joseph/moos-ivp-jadoyle/src /Users/joseph/moos-ivp-jadoyle/src/pOdometry /Users/joseph/moos-ivp-jadoyle/src/pPointAssign /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/pOdometry /Users/joseph/moos-ivp-jadoyle/src/pPointAssign/pOdometry/CMakeFiles/pOdometry.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pOdometry/CMakeFiles/pOdometry.dir/depend

