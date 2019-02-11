# NMake Makefile portion for displaying config info

all-build-info:
	@echo.
	@echo ----------
	@echo Build info
	@echo ---------
	@echo Build Type: $(CFG)
	@echo Enabled features: $(LIBCOGL_ENABLED_FEATURES)
	@echo Other build options: $(COGL_ADDITIONAL_BUILD_OPTIONS)

help:
	@echo.
	@echo ============================
	@echo Building Cogl Using NMake
	@echo ============================
	@echo nmake /f Makefile.vc CFG=[release^|debug] ^<PREFIX=PATH^>
	@echo.
	@echo Where:
	@echo ------
	@echo CFG: Required, use CFG=release for an optimized build and CFG=debug
	@echo for a debug build.  PDB files are generated for all builds.  By default
	@echo the main Cogl DLL and the CoglPath DLL will be built, along with example
	@echo programs that only make use of them.
	@echo.
	@echo PYTHON: Required if your Python interpreter is not in your PATH and if
	@echo using GLib-2.53.1 (or later) or building the introspection files are
	@echo desired. This is the full path to the Python interpreter that is present
	@echo on your system.  For building the introspection files, this interpreter
	@echo must match the release series and platform configuration (Win32 or x64)
	@echo of your installation of gobject-introspection (please see the part about
	@echo INTROSPECTION)
	@echo.
	@echo PYTHON: Required if your PERL interpreter is not in your PATH and if
	@echo using GLib-2.52.x (or earlier). This is the full path to the PERL
	@echo interpreter that is present on your system.
	@echo.
	@echo PREFIX: Optional, the path where dependent libraries and tools may be
	@echo found, default is ^$(srcrootdir)\..\vs^$(short_vs_ver)\^$(platform),
	@echo where ^$(short_vs_ver) is 15 for VS 2017 and so on; and
	@echo ^$(platform) is Win32 for 32-bit builds and x64 for x64 builds.
	@echo.
	@echo SDL: Optional, use if SDL-1.2.x support is desired.  The SDL-1.2.x
	@echo headers and libraries need to be found in %INCLUDE% and %LIB% respectively,
	@echo or must be in $(PREFIX)\include\SDL and $(PREFIX)\lib respectively.
	@echo.
	@echo SDL2: Optional, use if SDL-2.x support is desired.  The SDL-2.x
	@echo headers and libraries need to be found in %INCLUDE% and %LIB% respectively,
	@echo or must be in $(PREFIX)\include\SDL and $(PREFIX)\lib respectively.
	@echo.
	@echo GDK-Pixbuf: Optional, but recommended, for loading images that GDK-Pixbuf
	@echo supports.  The GDK-Pixbuf-2.x headers and libraries need to be found
	@echo in %INCLUDE% and %LIB% respectively, or must be in
	@echo $(PREFIX)\include\gdk-pixbuf-2.0 and $(PREFIX)\lib respectively.
	@echo.
	@echo PANGO: Optional, for building the CoglPango DLL and the sample programs
	@echo that makes use of it.  The Pango-1.x headers and libraries need to be found
	@echo in %INCLUDE% and %LIB% respectively, or must be in
	@echo $(PREFIX)\include\pango-1.0 and $(PREFIX)\lib respectively.
	@echo.
	@echo GST: Optional, for building the CoglGst DLL and the sample programs
	@echo that makes use of it.  The GStreamer-1.x headers and libraries need to be found
	@echo in %INCLUDE% and %LIB% respectively, or must be in
	@echo $(PREFIX)\include\gstreamer-1.0 and $(PREFIX)\lib respectively.
	@echo.
	@echo INTROSPECTION: Optional, for building the introspection files for all libraries
	@echo built, except for CoglPath.  The gobject-introspection scanner and compiler must
	@echo be found in $(PREFIX)\bin, and the python interpreter you are using (please see
	@echo PYTHON) must match the release series and platform configuration (Win32, x64)
	@echo of the one that was used to build gobject-introspection.
	@echo ======
	@echo A 'clean' target is supported to remove all generated files, intermediate
	@echo object files and binaries for the specified configuration.
	@echo.
	@echo An 'install' target is supported to copy the build (DLLs, example programs,
	@echo LIBs, along with the introspection files if applicable) to appropriate
	@echo locations under ^$(PREFIX).
	@echo.
	@echo A 'tests' target is supported to build the test programs.
	@echo ======
	@echo.
