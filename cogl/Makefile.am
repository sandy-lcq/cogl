include $(top_srcdir)/build/autotools/Makefile.am.silent

# preamble

NULL =

SUBDIRS =

BUILT_SOURCES =

EXTRA_DIST =
CLEANFILES =
DISTCLEANFILES =

noinst_LTLIBRARIES =
lib_LTLIBRARIES =

AM_CPPFLAGS = \
	-I$(top_srcdir)				\
	-I$(top_builddir)			\
	-I$(srcdir)/deprecated			\
	-I$(srcdir)/winsys 			\
	-I$(srcdir)/driver/gl 			\
	-I$(srcdir)/driver/gl/gl 		\
	-I$(srcdir)/driver/gl/gles 		\
	$(NULL)

if !USE_GLIB
	AM_CPPFLAGS += -I$(top_builddir)/deps/glib
endif

AM_CPPFLAGS += \
	-DG_LOG_DOMAIN=\"Cogl\" 	\
	-DCOGL_COMPILATION		\
	-DCOGL_GL_LIBNAME=\"$(COGL_GL_LIBNAME)\" \
	-DCOGL_GLES1_LIBNAME=\"$(COGL_GLES1_LIBNAME)\" \
	-DCOGL_GLES2_LIBNAME=\"$(COGL_GLES2_LIBNAME)\" \
	-DCOGL_LOCALEDIR=\""$(localedir)"\" \
	$(NULL)

if HAVE_COGL_DEFAULT_DRIVER
AM_CPPFLAGS += \
	-DCOGL_DEFAULT_DRIVER=\"$(COGL_DEFAULT_DRIVER)\"
endif


AM_CFLAGS = $(COGL_DEP_CFLAGS) $(COGL_EXTRA_CFLAGS) $(MAINTAINER_CFLAGS)

BUILT_SOURCES += cogl-defines.h cogl-egl-defines.h cogl-gl-header.h
DISTCLEANFILES += cogl-defines.h cogl-egl-defines.h cogl-gl-header.h
EXTRA_DIST += cogl-defines.h.in cogl-egl-defines.h.in cogl-gl-header.h.in

# Note: The cogl-1.0/cogl-gl-1.0 files are essentially for
# compatability only.  I'm not really sure who could possibly be using
# them so we may decide to remove them entirely at some point.
pc_files = \
	cogl-1.0.pc \
	cogl-gl-1.0.pc

pc_files += cogl-$(COGL_API_VERSION)-experimental.pc

cogl-gl-1.0.pc: cogl-1.0.pc
	$(QUIET_GEN)cp -f $< $(@F)

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = $(pc_files)

EXTRA_DIST += cogl-1.0.pc.in cogl-$(COGL_API_VERSION)-experimental.pc.in
DISTCLEANFILES += $(pc_files)

include cogl-srcs.mak

cogl_deprecated_h = $(COGL_DEPRECATED_HDRS)

# public 1.x api headers
cogl_1_public_h = $(COGL_1_PUB_HDRS)

# experimental 2.0 api headers
# Note: we don't run glib-mkenums over these headers
cogl_experimental_h = $(COGL_EXPERIMENTAL_HDRS)

cogl_nodist_experimental_h = \
	$(NULL)

# nop driver
cogl_driver_sources = $(COGL_NOP_DRIVER_SRCS)

# gl driver sources
cogl_gl_prototypes_h = $(COGL_GL_PROTOTYPE_HDRS)

cogl_driver_sources += $(COGL_GL_DRIVER_SRCS)

if COGL_DRIVER_GL_SUPPORTED
cogl_driver_sources += $(COGL_GL_DRIVER_SUPPORT_SRCS)
endif

if COGL_DRIVER_GLES_SUPPORTED
cogl_driver_sources += $(COGL_GLES_DRIVER_SUPPORT_SRCS)
endif

# winsys sources, common to all backends
cogl_winsys_common_sources = $(COGL_WINSYS_COMMON_SRCS)

# sources
cogl_sources_c = \
	$(cogl_driver_sources)				\
	$(cogl_winsys_common_sources)			\
	$(COGL_BASE_SRCS)	\
	$(COGL_DEPRECATED_SRCS)	\
	$(COGL_PRIVATE_HDRS)	\
	$(COGL_GL_PROTOTYPE_PRIVATE_HDRS)

if USE_GLIB
cogl_experimental_h += $(COGL_GLIB_HDRS)
cogl_sources_c += $(COGL_GLIB_SRCS)
endif

if SUPPORT_XLIB
cogl_deprecated_h += $(COGL_XLIB_DEPRECATED_HDRS)
cogl_1_public_h += $(COGL_XLIB_1_PUB_HDRS)

cogl_experimental_h += $(COGL_XLIB_HDRS)

cogl_sources_c += $(COGL_XLIB_SRCS)
endif
if SUPPORT_GLX
cogl_experimental_h += $(COGL_GLX_HDRS)
cogl_sources_c += $(COGL_GLX_SRCS)
endif
if SUPPORT_WGL
cogl_experimental_h += $(COGL_WGL_HDRS)

cogl_sources_c += $(COGL_WGL_SRCS)
endif
if SUPPORT_WAYLAND_EGL_SERVER
cogl_experimental_h += $(COGL_WAYLAND_SERVER_HDRS)
endif
if SUPPORT_EGL_PLATFORM_WAYLAND
cogl_experimental_h += $(COGL_WAYLAND_EGL_HDRS)
cogl_sources_c += $(COGL_WAYLAND_EGL_SRCS)
endif
if SUPPORT_EGL_PLATFORM_KMS
cogl_experimental_h += $(COGL_KMS_HDRS)
cogl_sources_c += $(COGL_KMS_SRCS)
endif
if SUPPORT_EGL_PLATFORM_XLIB
cogl_sources_c += $(COGL_X11_EGL_SRCS)
endif
if SUPPORT_EGL_PLATFORM_POWERVR_NULL
cogl_sources_c += $(COGL_POWERVR_EGL_NULL_SRCS)
endif
if SUPPORT_EGL_PLATFORM_GDL
cogl_sources_c += $(COGL_GDL_EGL_SRCS)
endif
if SUPPORT_EGL_PLATFORM_ANDROID
cogl_sources_c += $(COGL_ANDROID_EGL_SRCS)
endif
if SUPPORT_EGL_PLATFORM_MIR
cogl_experimental_h += $(COGL_MIR_EGL_HDRS)
cogl_sources_c += $(COGL_MIR_EGL_SRCS)
endif
if SUPPORT_EGL
cogl_experimental_h += $(COGL_EGL_HDRS)
cogl_nodist_experimental_h += $(COGL_EGL_GEN_HDRS)

cogl_sources_c += $(COGL_EGL_SRCS)
endif
if SUPPORT_SDL
cogl_experimental_h += $(COGL_SDL_HDRS)
cogl_sources_c += $(COGL_SDL_SRCS) $(COGL_SDL1_SRCS)
endif
if SUPPORT_SDL2
cogl_experimental_h += $(COGL_SDL_HDRS)
cogl_sources_c += $(COGL_SDL_SRCS) $(COGL_SDL2_SRCS)
endif

EXTRA_DIST += stb_image.c

# glib-mkenums rules
glib_enum_h = $(COGL_ENUMS_HDRS)
glib_enum_c = $(COGL_ENUMS_SRCS)
glib_enum_headers = $(cogl_1_public_h)
include $(top_srcdir)/build/autotools/Makefile.am.enums

lib_LTLIBRARIES += libcogl.la

libcogl_la_LIBADD = $(LIBM) $(COGL_DEP_LIBS) $(COGL_EXTRA_LDFLAGS)
if !USE_GLIB
libcogl_la_LIBADD += $(top_builddir)/deps/glib/libglib.la
libcogl_la_LIBADD += $(top_builddir)/deps/gmodule/libgmodule.la
endif
if UNIT_TESTS
libcogl_la_LIBADD += $(top_builddir)/test-fixtures/libtest-fixtures.la
endif
# XXX: The aim is to eventually get rid of all private API exports
# for cogl-pango.
libcogl_la_LDFLAGS = \
	-no-undefined \
	-version-info @COGL_LT_CURRENT@:@COGL_LT_REVISION@:@COGL_LT_AGE@ \
	-export-dynamic \
	-export-symbols-regex "^(cogl|_cogl_debug_flags|_cogl_atlas_new|_cogl_atlas_add_reorganize_callback|_cogl_atlas_reserve_space|_cogl_callback|_cogl_util_get_eye_planes_for_screen_poly|_cogl_atlas_texture_remove_reorganize_callback|_cogl_atlas_texture_add_reorganize_callback|_cogl_texture_get_format|_cogl_texture_foreach_sub_texture_in_region|_cogl_profile_trace_message|_cogl_context_get_default|_cogl_framebuffer_get_stencil_bits|_cogl_clip_stack_push_rectangle|_cogl_framebuffer_get_modelview_stack|_cogl_object_default_unref|_cogl_pipeline_foreach_layer_internal|_cogl_clip_stack_push_primitive|_cogl_buffer_unmap_for_fill_or_fallback|_cogl_framebuffer_draw_primitive|_cogl_debug_instances|_cogl_framebuffer_get_projection_stack|_cogl_pipeline_layer_get_texture|_cogl_buffer_map_for_fill_or_fallback|_cogl_texture_can_hardware_repeat|_cogl_pipeline_prune_to_n_layers|_cogl_primitive_draw|test_|unit_test_).*"

libcogl_la_SOURCES = $(cogl_sources_c)
nodist_libcogl_la_SOURCES = $(BUILT_SOURCES)

# Cogl installed headers
cogl_headers = \
	$(cogl_1_public_h) \
	$(COGL_OTHER_HDRS) \
	$(NULL)

cogldeprecatedincludedir = $(includedir)/cogl/cogl/deprecated
cogldeprecatedinclude_HEADERS = $(cogl_deprecated_h)

coglincludedir = $(includedir)/cogl/cogl
coglinclude_HEADERS = $(cogl_headers) $(cogl_experimental_h)
nodist_coglinclude_HEADERS = $(cogl_nodist_experimental_h) cogl-defines.h $(COGL_ENUMS_HDRS)

cogl_proto_includedir = $(includedir)/cogl/cogl/gl-prototypes
cogl_proto_include_HEADERS = $(cogl_gl_prototypes_h)

dist-hook: ../build/win32/vs9/cogl.vcproj ../build/win32/vs10/cogl.vcxproj ../build/win32/vs10/cogl.vcxproj.filters ../build/win32/gen-enums.bat

# I know those filters below don't look nice, but this is to ensure the right files are in the Project files only *once*
../build/win32/vs9/cogl.vcproj: $(top_srcdir)/build/win32/vs9/cogl.vcprojin
	for F in `echo $(cogl_sources_c) $(BUILT_SOURCES) | tr '/' '\\'`; do \
		case $$F in \
		*-egl.c|*-egl-*.c|*-glx.c|*-xlib*.c|*-x11.c|*.wgl.c|*-gl.c|*-gles.c|*-kms.c|*-sdl.c|*.h) ;; \
		*.c)	echo '   <File RelativePath="..\..\..\cogl\'$$F'" />' \
			;; \
		esac; \
	done >cogl.sourcefiles
	$(CPP) -P - <$(top_srcdir)/build/win32/vs9/cogl.vcprojin >$@
	rm cogl.sourcefiles

../build/win32/vs10/cogl.vcxproj: $(top_srcdir)/build/win32/vs10/cogl.vcxprojin
	for F in `echo $(cogl_sources_c) $(BUILT_SOURCES) | tr '/' '\\'`; do \
		case $$F in \
		*-egl.c|*-egl-*.c|*-glx.c|*-xlib*.c|*-x11.c|*.wgl.c|*-gl.c|*-gles.c|*-kms.c|*-sdl.c|*.h) ;; \
		*.c)	echo '    <ClCompile Include="..\..\..\cogl\'$$F'" />' \
			;; \
		esac; \
	done >cogl.vs10.sourcefiles
	$(CPP) -P - <$(top_srcdir)/build/win32/vs10/cogl.vcxprojin >$@
	rm cogl.vs10.sourcefiles

../build/win32/vs10/cogl.vcxproj.filters: $(top_srcdir)/build/win32/vs10/cogl.vcxproj.filtersin
	for F in `echo $(cogl_sources_c) $(BUILT_SOURCES) | tr '/' '\\'`; do \
		case $$F in \
		*-egl.c|*-egl-*.c|*-glx.c|*-xlib*.c|*-x11.c|*.wgl.c|*-gl.c|*-gles.c|*-kms.c|*-sdl.c|*.h) ;; \
		*.c)	echo '    <ClCompile Include="..\..\..\cogl\'$$F'"><Filter>Sources</Filter></ClCompile>' \
			;; \
		esac; \
	done >cogl.vs10.sourcefiles.filters
	$(CPP) -P - <$(top_srcdir)/build/win32/vs10/cogl.vcxproj.filtersin >$@
	rm cogl.vs10.sourcefiles.filters

cogl.vsenums_h:
	echo 'perl %1\bin\glib-mkenums --template ../../cogl/cogl-enum-types.h.in ' >vsenums_h.temp1
	for F in `echo $(cogl_1_public_h) $(srcdir)/cogl-win32-renderer.h`; do \
		case $$F in \
		*xlib*.h|*wayland*.h) ;; \
		*.h) echo '../../cogl'$$F' '	\
			;;	\
		esac;	\
	done >>vsenums_h.temp1
	cat vsenums_h.temp1 | sed 's_/cogl./_/cogl/_' >vsenums_h.temp
	cat vsenums_h.temp | tr -d '\n' >>$@
	echo '> ..\..\cogl\cogl-enum-types.h' >>$@
	rm vsenums_h.temp1
	rm vsenums_h.temp

cogl.vsenums_c:
	echo 'perl %1\bin\glib-mkenums --template ../../cogl/cogl-enum-types.c.in ' >vsenums_c.temp1
	for F in `echo $(cogl_1_public_h) $(srcdir)/cogl-win32-renderer.h`; do \
		case $$F in \
		*xlib*.h|*wayland*.h) ;; \
		*.h) echo '../../cogl'$$F' '	\
			;;	\
		esac;	\
	done >>vsenums_c.temp1
	cat vsenums_c.temp1 | sed 's_/cogl./_/cogl/_' >vsenums_c.temp
	cat vsenums_c.temp | tr -d '\n' >>$@
	echo '> ..\..\cogl\cogl-enum-types.c' >>$@
	rm vsenums_c.temp1
	rm vsenums_c.temp

../build/win32/gen-enums.bat: cogl.vsenums_h cogl.vsenums_c
	echo 'if exist ..\..\cogl\cogl-enum-types.h goto DONE_COGL_ENUMS_H' >$@
	cat cogl.vsenums_h >>$@
	echo ':DONE_COGL_ENUMS_H' >>$@
	echo 'if exist ..\..\cogl\cogl-enum-types.c goto DONE_COGL_ENUMS_C' >>$@
	cat cogl.vsenums_c >>$@
	echo ':DONE_COGL_ENUMS_C' >>$@
	rm cogl.vsenums_h
	rm cogl.vsenums_c

EXTRA_DIST += \
	cogl-defines.h.win32.in	\
	cogl-defines.h.win32	\
	cogl-defines.h.win32_SDL.in	\
	cogl-defines.h.win32_SDL	\
	cogl-gl-header.h.win32	\
	cogl.symbols	\
	cogl.rc.in	\
	cogl.rc

DISTCLEANFILES += ../build/win32/vs9/cogl.vcproj ../build/win32/vs10/cogl.vcxproj ../build/win32/vs10/cogl.vcxproj.filters ../build/win32/gen-enums.bat cogl.rc

-include $(INTROSPECTION_MAKEFILE)

INTROSPECTION_GIRS =

if HAVE_INTROSPECTION
Cogl-1.0.gir: libcogl.la Makefile

Cogl_1_0_gir_NAMESPACE = Cogl
Cogl_1_0_gir_VERSION = 1.0
Cogl_1_0_gir_LIBS = libcogl.la
if UNIT_TESTS
Cogl_1_0_gir_LIBS += $(top_builddir)/test-fixtures/libtest-fixtures.la
endif
Cogl_1_0_gir_FILES = $(cogl_1_public_h) $(COGL_ENUMS_HDRS)

Cogl-2.0.gir: libcogl.la Makefile

Cogl_2_0_gir_NAMESPACE = Cogl
Cogl_2_0_gir_VERSION = 2.0
Cogl_2_0_gir_LIBS = libcogl.la
if UNIT_TESTS
Cogl_2_0_gir_LIBS += $(top_builddir)/test-fixtures/libtest-fixtures.la
endif
Cogl_2_0_gir_FILES = $(cogl_experimental_h) $(COGL_ADDITIONAL_EXPERIMENTAL_HDRS) $(COGL_ENUMS_HDRS)

Cogl_1_0_gir_CFLAGS = $(AM_CPPFLAGS) $(COGL_DEP_CFLAGS) -UCOGL_ENABLE_EXPERIMENTAL_API -UCOGL_ENABLE_EXPERIMENTAL_2_0_API -UCOGL_COMPILATION -D__COGL_H_INSIDE__ -D__COGL_XLIB_H_INSIDE__ -D__COGL_EGL_H_INSIDE__ -D__COGL_GLX_H_INSIDE__ -DCOGL_GIR_SCANNING
Cogl_1_0_gir_INCLUDES = GL-1.0 GObject-2.0
Cogl_1_0_gir_EXPORT_PACKAGES = cogl-1.0
Cogl_1_0_gir_SCANNERFLAGS = --warn-all --c-include='cogl/cogl.h'

Cogl_2_0_gir_CFLAGS = $(AM_CPPFLAGS) $(COGL_DEP_CFLAGS) -DCOGL_ENABLE_EXPERIMENTAL_API=1 -UCOGL_COMPILATION -D__COGL_H_INSIDE__ -D__COGL_XLIB_H_INSIDE__ -DCOGL_GIR_SCANNING
Cogl_2_0_gir_INCLUDES = GL-1.0 GObject-2.0
Cogl_2_0_gir_EXPORT_PACKAGES = cogl-2.0-experimental
Cogl_2_0_gir_SCANNERFLAGS = --warn-all --c-include='cogl/cogl.h' --symbol-prefix=cogl --symbol-prefix=cogl2

INTROSPECTION_GIRS += Cogl-1.0.gir Cogl-2.0.gir

girdir = $(datadir)/gir-1.0
gir_DATA = $(INTROSPECTION_GIRS)

typelibdir = $(libdir)/girepository-1.0
typelib_DATA = $(INTROSPECTION_GIRS:.gir=.typelib)

CLEANFILES += $(gir_DATA) $(typelib_DATA)
endif
