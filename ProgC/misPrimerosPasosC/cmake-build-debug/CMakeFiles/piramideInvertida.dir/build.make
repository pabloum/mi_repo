# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.1.2\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.1.2\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Programming\misPrimerosPasosC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Programming\misPrimerosPasosC\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\piramideInvertida.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\piramideInvertida.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\piramideInvertida.dir\flags.make

CMakeFiles\piramideInvertida.dir\piramideInvertida.c.obj: CMakeFiles\piramideInvertida.dir\flags.make
CMakeFiles\piramideInvertida.dir\piramideInvertida.c.obj: ..\piramideInvertida.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Programming\misPrimerosPasosC\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/piramideInvertida.dir/piramideInvertida.c.obj"
	C:\PROGRA~2\MICROS~4\2017\COMMUN~1\VC\Tools\MSVC\1414~1.264\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\piramideInvertida.dir\piramideInvertida.c.obj /FdCMakeFiles\piramideInvertida.dir\ /FS -c D:\Programming\misPrimerosPasosC\piramideInvertida.c
<<

CMakeFiles\piramideInvertida.dir\piramideInvertida.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/piramideInvertida.dir/piramideInvertida.c.i"
	C:\PROGRA~2\MICROS~4\2017\COMMUN~1\VC\Tools\MSVC\1414~1.264\bin\Hostx86\x86\cl.exe > CMakeFiles\piramideInvertida.dir\piramideInvertida.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Programming\misPrimerosPasosC\piramideInvertida.c
<<

CMakeFiles\piramideInvertida.dir\piramideInvertida.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/piramideInvertida.dir/piramideInvertida.c.s"
	C:\PROGRA~2\MICROS~4\2017\COMMUN~1\VC\Tools\MSVC\1414~1.264\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\piramideInvertida.dir\piramideInvertida.c.s /c D:\Programming\misPrimerosPasosC\piramideInvertida.c
<<

CMakeFiles\piramideInvertida.dir\piramideInvertida.c.obj.requires:

.PHONY : CMakeFiles\piramideInvertida.dir\piramideInvertida.c.obj.requires

CMakeFiles\piramideInvertida.dir\piramideInvertida.c.obj.provides: CMakeFiles\piramideInvertida.dir\piramideInvertida.c.obj.requires
	$(MAKE) -f CMakeFiles\piramideInvertida.dir\build.make /nologo -$(MAKEFLAGS) CMakeFiles\piramideInvertida.dir\piramideInvertida.c.obj.provides.build
.PHONY : CMakeFiles\piramideInvertida.dir\piramideInvertida.c.obj.provides

CMakeFiles\piramideInvertida.dir\piramideInvertida.c.obj.provides.build: CMakeFiles\piramideInvertida.dir\piramideInvertida.c.obj


# Object files for target piramideInvertida
piramideInvertida_OBJECTS = \
"CMakeFiles\piramideInvertida.dir\piramideInvertida.c.obj"

# External object files for target piramideInvertida
piramideInvertida_EXTERNAL_OBJECTS =

piramideInvertida.exe: CMakeFiles\piramideInvertida.dir\piramideInvertida.c.obj
piramideInvertida.exe: CMakeFiles\piramideInvertida.dir\build.make
piramideInvertida.exe: CMakeFiles\piramideInvertida.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Programming\misPrimerosPasosC\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable piramideInvertida.exe"
	"C:\Program Files\JetBrains\CLion 2018.1.2\bin\cmake\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\piramideInvertida.dir --manifests  -- C:\PROGRA~2\MICROS~4\2017\COMMUN~1\VC\Tools\MSVC\1414~1.264\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\piramideInvertida.dir\objects1.rsp @<<
 /out:piramideInvertida.exe /implib:piramideInvertida.lib /pdb:D:\Programming\misPrimerosPasosC\cmake-build-debug\piramideInvertida.pdb /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\piramideInvertida.dir\build: piramideInvertida.exe

.PHONY : CMakeFiles\piramideInvertida.dir\build

CMakeFiles\piramideInvertida.dir\requires: CMakeFiles\piramideInvertida.dir\piramideInvertida.c.obj.requires

.PHONY : CMakeFiles\piramideInvertida.dir\requires

CMakeFiles\piramideInvertida.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\piramideInvertida.dir\cmake_clean.cmake
.PHONY : CMakeFiles\piramideInvertida.dir\clean

CMakeFiles\piramideInvertida.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\Programming\misPrimerosPasosC D:\Programming\misPrimerosPasosC D:\Programming\misPrimerosPasosC\cmake-build-debug D:\Programming\misPrimerosPasosC\cmake-build-debug D:\Programming\misPrimerosPasosC\cmake-build-debug\CMakeFiles\piramideInvertida.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\piramideInvertida.dir\depend

