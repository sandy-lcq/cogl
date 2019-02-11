# NMake Makefile portion for enabling features for Windows builds

!ifndef GLIB_MKENUMS
GLIB_MKENUMS = $(PREFIX)\bin\glib-mkenums
!endif

!ifndef G_IR_SCANNER
G_IR_SCANNER = $(PREFIX)\bin\g-ir-scanner
!endif

!ifndef G_IR_COMPILER
G_IR_COMPILER = $(PREFIX)\bin\g-ir-compiler.exe
!endif

# We need to first check whether glib-mkenums is a Python script or a PERL
# script.  Note that Windows cmd.exe by itself does not support shebang
# lines, so test run the script with Python and see whether that shows the
# version info correctly.
!if ![$(PYTHON) $(GLIB_MKENUMS) -v >NUL 2> mkenums.test.x]
!endif

!if ![for %f in (mkenums.test.x) do @if %~zf equ 0 echo GLIB_MKENUMS_TYPE = PYTHON > glibmkenums.type.x]
!endif

!if ![for %f in (mkenums.test.x) do @if %~zf gtr 0 echo GLIB_MKENUMS_TYPE = PERL > glibmkenums.type.x]
!endif

!include glibmkenums.type.x

!if ![del glibmkenums.type.x mkenums.test.x]
!endif

!if "$(GLIB_MKENUMS_TYPE)" == "PYTHON"
GLIB_MKENUMS_INTERP = $(PYTHON)
!elseif "$(GLIB_MKENUMS_TYPE)" == "PERL"
GLIB_MKENUMS_INTERP = $(PERL)
!endif

LIBCOGL_ENABLED_FEATURES = OpenGL/WGL
COGL_ADDITIONAL_BUILD_OPTIONS = cogl-path

LIBCOGL_INSTALLED_HDRS =	\
	$(COGL_1_PUB_HDRS)	\
	$(COGL_EXPERIMENTAL_HDRS)	\
	$(COGL_GL_PROTOTYPE_HDRS)	\
	$(COGL_OTHER_HDRS)	\
	$(COGL_WGL_HDRS)

LIBCOGL_EXTRA_SRCS = $(COGL_WGL_SRCS)

LIBCOGL_DEP_LIBS = opengl32.lib user32.lib gdi32.lib intl.lib
LIBCOGL_PANGO_DEP_LIBS = pangocairo-1.0.lib pango-1.0.lib cairo.lib
LIBCOGL_GST_DEP_LIBS = gstvideo-1.0.lib gstbase-1.0.lib gstreamer-1.0.lib
LIBCOGL_EXTRA_CFLAGS =
LIBCOGL_EXTRA_OBJS =	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-enum-types.obj	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl.res

COGL_EXAMPLE_PROGS =	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-hello.exe	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-info.exe	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-point-sprites.exe	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-stereo.exe

!if ($(VSVER) > 11) || "$(PLAT)" != "x64"
COGL_EXAMPLE_PROGS =	\
	$(COGL_EXAMPLE_PROGS)	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-msaa.exe
!endif

COGL_INTROSPECTION_TYPELIBS =

# We build cogl-vs$(PDBVER).dll and cogl-path-vs$(PDBVER).dll at least
COGL_DLL = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-vs$(PDBVER).dll
COGL_LIB = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl.lib
COGL_TESTS_DLL = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests-vs$(PDBVER).dll
COGL_TESTS_LIB = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests.lib
COGL_PATH_DLL = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path-vs$(PDBVER).dll
COGL_PATH_LIB = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path.lib
COGL_PATH_TESTS_DLL = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path-tests-vs$(PDBVER).dll
COGL_PATH_TESTS_LIB = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path-tests.lib
COGL_PANGO_DLL = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango-vs$(PDBVER).dll
COGL_PANGO_LIB = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango.lib
COGL_GST_DLL = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst-vs$(PDBVER).dll
COGL_GST_LIB = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst.lib
COGL_GST_PLUGIN = vs$(PDBVER)\$(CFG)\$(PLAT)\gstcogl.dll

COGL_BUILT_LIBS = $(COGL_LIB) $(COGL_PATH_LIB)
COGL_BUILT_PLUGINS =
COGL_BUILT_TEST_LIBS = $(COGL_TESTS_LIB)

COGL_EXAMPLE_DEP_LIBS = $(LIBCOGL_DEP_LIBS)

LIBCOGL_TEST_EXTRA_CFLAGS =	\
	$(LIBCOGL_EXTRA_CFLAGS)	\
	/DENABLE_UNIT_TESTS

LIBCOGL_TESTS_EXTRA_OBJS =	\
	$(LIBCOGL_EXTRA_OBJS)	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\test-utils.obj

COGL_TEST_PROGS =	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-conform-test.exe	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-micro-perf-test.exe	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-unit-test.exe

!ifdef GDK_PIXBUF
!ifdef NO_GLIB
!error GDK_PIXBUF requires GLib support to be enabled
!endif
LIBCOGL_EXTRA_CFLAGS =	\
	$(LIBCOGL_EXTRA_CFLAGS)	\
	/DUSE_GDKPIXBUF

LIBCOGL_DEP_LIBS =	\
	$(LIBCOGL_DEP_LIBS)	\
	gdk_pixbuf-2.0.lib

LIBCOGL_ENABLED_FEATURES =	\
	$(LIBCOGL_ENABLED_FEATURES)	\
	GDK-Pixbuf
!else

LIBCOGL_ENABLED_FEATURES =	\
	$(LIBCOGL_ENABLED_FEATURES)	\
	builtin-image-loader
!endif

!ifdef INTROSPECTION
COGL_INTROSPECTION_TYPELIBS =	\
	$(COGL_INTROSPECTION_TYPELIBS)	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-1.0.typelib	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-2.0.typelib

COGL_ADDITIONAL_BUILD_OPTIONS =	\
	$(COGL_ADDITIONAL_BUILD_OPTIONS)	\
	introspection
!endif

!ifdef PANGO
!ifdef NO_GLIB
!error PANGO requires GLib support to be enabled
!endif

COGL_BUILT_LIBS =	\
	$(COGL_BUILT_LIBS)	\
	$(COGL_PANGO_LIB)

!if $(VSVER) != 9 || "$(PLAT)" != "x64"
COGL_EXAMPLE_PROGS =	\
	$(COGL_EXAMPLE_PROGS)	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-crate.exe

COGL_EXAMPLE_DEP_LIBS =	\
	$(COGL_EXAMPLE_DEP_LIBS)	\
	$(LIBCOGL_PANGO_DEP_LIBS)
!endif

!ifdef INTROSPECTION
COGL_INTROSPECTION_TYPELIBS =	\
	$(COGL_INTROSPECTION_TYPELIBS)	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\CoglPango-1.0.typelib	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\CoglPango-2.0.typelib
!endif

COGL_ADDITIONAL_BUILD_OPTIONS =	\
	$(COGL_ADDITIONAL_BUILD_OPTIONS)	\
	cogl-pango
!endif

!ifdef GST
!ifdef NO_GLIB
!error PANGO requires GLib support to be enabled
!endif

COGL_BUILT_LIBS =	\
	$(COGL_BUILT_LIBS)	\
	$(COGL_GST_LIB)

COGL_BUILT_PLUGINS =	\
	$(COGL_GST_PLUGIN)

COGL_EXAMPLE_PROGS =	\
	$(COGL_EXAMPLE_PROGS)	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-basic-video-player.exe

COGL_EXAMPLE_DEP_LIBS =	\
	$(COGL_EXAMPLE_DEP_LIBS)	\
	$(LIBCOGL_GST_DEP_LIBS)

!ifdef INTROSPECTION
COGL_INTROSPECTION_TYPELIBS =	\
	$(COGL_INTROSPECTION_TYPELIBS)	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\CoglGst-2.0.typelib
!endif

COGL_ADDITIONAL_BUILD_OPTIONS =	\
	$(COGL_ADDITIONAL_BUILD_OPTIONS)	\
	cogl-gst
!endif

!ifndef NO_GLIB
LIBCOGL_EXTRA_SRCS =	\
	$(LIBCOGL_EXTRA_SRCS)	\
	$(COGL_GLIB_SRCS)

LIBCOGL_INSTALLED_HDRS =	\
	$(LIBCOGL_INSTALLED_HDRS)	\
	$(COGL_GLIB_HDRS)

LIBCOGL_DEP_LIBS =	\
	gobject-2.0.lib	\
	gmodule-2.0.lib	\
	glib-2.0.lib	\
	$(LIBCOGL_DEP_LIBS)

LIBCOGL_ENABLED_FEATURES =	\
	$(LIBCOGL_ENABLED_FEATURES)	\
	GLib
!endif

!ifdef SDL
!ifdef SDL2
!error Only one of SDL or SDL2 can be enabled
!endif
LIBCOGL_EXTRA_SRCS =	\
	$(LIBCOGL_EXTRA_SRCS)	\
	$(COGL_SDL_SRCS)	\
	$(COGL_SDL1_SRCS)

LIBCOGL_INSTALLED_HDRS =	\
	$(LIBCOGL_INSTALLED_HDRS)	\
	$(COGL_SDL_HDRS)

LIBCOGL_DEP_LIBS =	\
	$(LIBCOGL_DEP_LIBS)	\
	SDL.lib

COGL_EXAMPLE_PROGS =	\
	$(COGL_EXAMPLE_PROGS)	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-sdl-hello.exe

COGL_EXAMPLE_DEP_LIBS =	\
	$(COGL_EXAMPLE_DEP_LIBS)	\
	SDL.lib SDLmain.lib /subsystem:console

LIBCOGL_ENABLED_FEATURES =	\
	$(LIBCOGL_ENABLED_FEATURES)	\
	SDL
!endif

!ifdef SDL2
LIBCOGL_EXTRA_SRCS =	\
	$(LIBCOGL_EXTRA_SRCS)	\
	$(COGL_SDL_SRCS)	\
	$(COGL_SDL2_SRCS)

LIBCOGL_INSTALLED_HDRS =	\
	$(LIBCOGL_INSTALLED_HDRS)	\
	$(COGL_SDL_HDRS)

LIBCOGL_DEP_LIBS =	\
	$(LIBCOGL_DEP_LIBS)	\
	SDL2.lib

COGL_EXAMPLE_PROGS =	\
	$(COGL_EXAMPLE_PROGS)	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-sdl2-hello.exe

COGL_EXAMPLE_DEP_LIBS =	\
	$(COGL_EXAMPLE_DEP_LIBS)	\
	SDL2.lib SDL2main.lib /subsystem:console

LIBCOGL_ENABLED_FEATURES =	\
	$(LIBCOGL_ENABLED_FEATURES)	\
	SDL2
!endif

# Supported needed!
!ifdef USE_EGL
LIBCOGL_EXTRA_SRCS =	\
	$(LIBCOGL_EXTRA_SRCS)	\
	$(COGL_EGL_SRCS)

LIBCOGL_INSTALLED_HDRS =	\
	$(LIBCOGL_INSTALLED_HDRS)	\
	$(COGL_EGL_HDRS)	\
	$(COGL_EGL_GEN_HDRS)

COGL_EXAMPLE_PROGS =	\
	$(COGL_EXAMPLE_PROGS)	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gles2-context.exe	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gles2-gears.exe

LIBCOGL_ENABLED_FEATURES =	\
	$(LIBCOGL_ENABLED_FEATURES)	\
	EGL
!endif

# These are the base minimum libraries required for building cogl.
BASE_INCLUDES =	\
	/I$(PREFIX)\include\gdk-pixbuf	\
	/I$(PREFIX)\include\glib-2.0	\
	/I$(PREFIX)\lib\glib-2.0\include	\
	/I$(PREFIX)\include

PANGO_INCLUDES =	\
	/I$(PREFIX)\include\pango-1.0	\
	$(BASE_INCLUDES)

GST_INCLUDES =	\
	/I$(PREFIX)\include\gstreamer-1.0	\
	$(BASE_INCLUDES)

# Please do not change anything beneath this line unless maintaining the NMake Makefiles

COGL_BASE_CFLAGS = /FImsvc_recommended_pragmas.h /DHAVE_CONFIG_H
COGL_LIB_COMMON_CFLAGS = /DCOGL_COMPILATION
COGL_BASE_INCLUDES =	\
	/I..\..\cogl	\
	/Ivs$(PDBVER)\$(CFG)\$(PLAT)\cogl	\
	/I..\..\cogl\winsys 		\
	/I..\..	\
	/Ivs$(PDBVER)\$(CFG)\$(PLAT)

LIBCOGL_INCLUDES =	\
	$(COGL_BASE_INCLUDES)	\
	/I..\..\cogl\deprecated	\
	/I..\..\cogl\driver\gl 	\
	/I..\..\cogl\driver\gl/gl		\
	/I..\..\cogl\driver\gl/gles

LIBCOGL_CFLAGS =	\
	/DG_LOG_DOMAIN=\"Cogl\" \
	$(COGL_LIB_COMMON_CFLAGS)	\
	/DCOGL_GL_LIBNAME=\"\" \
	/DCOGL_GLES1_LIBNAME=\"\" \
	/DCOGL_GLES2_LIBNAME=\"\" \
	$(COGL_BASE_CFLAGS)	\
	$(LIBCOGL_INCLUDES)	\
	$(BASE_INCLUDES)

LIBCOGL_PATH_CFLAGS =	\
	$(COGL_LIB_COMMON_CFLAGS)	\
	/DG_LOG_DOMAIN=\"CoglPath\"	\
	$(COGL_BASE_CFLAGS)	\
	/I..\..\cogl-path\tesselator	\
	$(COGL_BASE_INCLUDES)	\
	$(BASE_INCLUDES)

LIBCOGL_PANGO_CFLAGS =	\
	$(COGL_LIB_COMMON_CFLAGS)	\
	/DG_LOG_DOMAIN=\"CoglPango\"	\
	$(COGL_BASE_CFLAGS)	\
	$(COGL_BASE_INCLUDES)	\
	$(PANGO_INCLUDES)

LIBCOGL_GST_CFLAGS =	\
	$(COGL_LIB_COMMON_CFLAGS)	\
	/DG_LOG_DOMAIN=\"CoglGst\"	\
	/DCOGL_GST_API=__declspec(dllexport)	\
	/DWIN32	\
	$(COGL_BASE_CFLAGS)	\
	$(COGL_BASE_INCLUDES)	\
	$(GST_INCLUDES)

COGL_GST_PLUGIN_CFLAGS =	\
	$(COGL_LIB_COMMON_CFLAGS)	\
	/DWIN32	\
	$(COGL_BASE_CFLAGS)	\
	$(COGL_BASE_INCLUDES)	\
	$(GST_INCLUDES)

COGL_PROGS_BASE_CFLAGS =	\
	/DCOGL_ENABLE_EXPERIMENTAL_API	\
	/DWIN32	\
	$(COGL_BASE_CFLAGS)	\
	$(COGL_BASE_INCLUDES)	\
	$(PANGO_INCLUDES)	\
	$(GST_INCLUDES)

COGL_EXAMPLE_CFLAGS =	\
	/DCOGL_EXAMPLES_DATA=\"$(cogl_topsrcdir)/examples/\"	\
	$(COGL_PROGS_BASE_CFLAGS)

COGL_TESTS_CFLAGS =	\
	/DCOGL_TESTS_DATA=\"$(cogl_topsrcdir)/tests/\"	\
	$(COGL_PROGS_BASE_CFLAGS)

LIBCOGL_ENUM_SRCS =	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-enum-types.c
LIBCOGL_ENUM_HDRS = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-enum-types.h
LIBCOGL_TESTS_ENUM_SRCS =	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl-enum-types.c
LIBCOGL_TESTS_ENUM_HDRS = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl-enum-types.h
LIBCOGL_PATH_ENUM_HDRS = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\cogl-path-enum-types.h
LIBCOGL_PATH_ENUM_SRCS = vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\cogl-path-enum-types.c
