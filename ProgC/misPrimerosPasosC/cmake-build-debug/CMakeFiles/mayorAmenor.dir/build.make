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
include CMakeFiles\mayorAmenor.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\mayorAmenor.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\mayorAmenor.dir\flags.make

CMakeFiles\mayorAmenor.dir\mayorAmenor.c.obj: CMakeFiles\mayorAmenor.dir\flags.make
CMakeFiles\mayorAmenor.dir\mayorAmenor.c.obj: ..\mayorAmenor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Programming\misPrimerosPasosC\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/mayorAmenor.dir/mayorAmenor.c.obj"
	C:\PROGRA~2\MICROS~4\2017\COMMUN~1\VC\Tools\MSVC\1414~1.264\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\mayorAmenor.dir\mayorAmenor.c.obj /FdCMakeFiles\mayorAmenor.dir\ /FS -c D:\Programming\misPrimerosPasosC\mayorAmenor.c
<<

CMakeFiles\mayorAmenor.dir\mayorAmenor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mayorAmenor.dir/mayorAmenor.c.i"
	C:\PROGRA~2\MICROS~4\2017\COMMUN~1\VC\Tools\MSVC\1414~1.264\bin\Hostx86\x86\cl.exe > CMakeFiles\mayorAmenor.dir\mayorAmenor.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Programming\misPrimerosPasosC\mayorAmenor.c
<<

CMakeFiles\mayorAmenor.dir\mayorAmenor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mayorAmenor.dir/mayorAmenor.c.s"
	C:\PROGRA~2\MICROS~4\2017\COMMUN~1\VC\Tools\MSVC\1414~1.264\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\mayorAmenor.dir\mayorAmenor.c.s /c D:\Programming\misPrimerosPasosC\mayorAmenor.c
<<

CMakeFiles\mayorAmenor.dir\mayorAmenor.c.obj.requires:

.PHONY : CMakeFiles\mayorAmenor.dir\mayorAmenor.c.obj.requires

CMakeFiles\mayorAmenor.dir\mayorAmenor.c.obj.provides: CMakeFiles\mayorAmenor.dir\mayorAmenor.c.obj.requires
	$(MAKE) -f CMakeFiles\mayorAmenor.dir\build.make /nologo -$(MAKEFLAGS) CMakeFiles\mayorAmenor.dir\mayorAmenor.c.obj.provides.build
.PHONY : CMakeFiles\mayorAmenor.dir\mayorAmenor.c.obj.provides

CMakeFiles\mayorAmenor.dir\mayorAmenor.c.obj.provides.build: CMakeFiles\mayorAmenor.dir\mayorAmenor.c.obj


# Object files for target mayorAmenor
mayorAmenor_OBJECTS = \
"CMakeFiles\mayorAmenor.dir\mayorAmenor.c.obj"

# External object files for target mayorAmenor
mayorAmenor_EXTERNAL_OBJECTS =

mayorAmenor.exe: CMakeFiles\mayorAmenor.dir\mayorAmenor.c.obj
mayorAmenor.exe: CMakeFiles\mayorAmenor.dir\build.make
mayorAmenor.exe: CMakeFiles\mayorAmenor.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Programming\misPrimerosPasosC\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable mayorAmenor.exe"
	"C:\Program Files\JetBrains\CLion 2018.1.2\bin\cmake\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\mayorAmenor.dir --manifests  -- C:\PROGRA~2\MICROS~4\2017\COMMUN~1\VC\Tools\MSVC\1414~1.264\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\mayorAmenor.dir\objects1.rsp @<<
 /out:mayorAmenor.exe /implib:mayorAmenor.lib /pdb:D:\Programming\misPrimerosPasosC\cmake-build-debug\mayorAmenor.pdb /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\mayorAmenor.dir\build: mayorAmenor.exe

.PHONY : CMakeFiles\mayorAmenor.dir\build

CMakeFiles\mayorAmenor.dir\requires: CMakeFiles\mayorAmenor.dir\mayorAmenor.c.obj.requires

.PHONY : CMakeFiles\mayorAmenor.dir\requires

CMakeFiles\mayorAmenor.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\mayorAmenor.dir\cmake_clean.cmake
.PHONY : CMakeFiles\mayorAmenor.dir\clean

CMakeFiles\mayorAmenor.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\Programming\misPrimerosPasosC D:\Programming\misPrimerosPasosC D:\Programming\misPrimerosPasosC\cmake-build-debug D:\Programming\misPrimerosPasosC\cmake-build-debug D:\Programming\misPrimerosPasosC\cmake-build-debug\CMakeFiles\mayorAmenor.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\mayorAmenor.dir\depend

