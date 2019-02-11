# NMake Makefile portion for code generation and
# intermediate build directory creation
# Items in here should not need to be edited unless
# one is maintaining the NMake build files.

# Create the build directories

LIBCOGL_CONFIG_HDRS =	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\config.h	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-defines.h	\
	vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-gl-header.h	\

LIBCOGL_TESTS_CONFIG_HDRS =  $(LIBCOGL_CONFIG_HDRS:\cogl\=\cogl-tests\)

!ifdef SDL
COGL_DEFINES_H_DEP = ..\..\cogl\cogl-defines.h.win32_SDL
!else
!ifdef SDL2
COGL_DEFINES_H_DEP = ..\..\cogl\cogl-defines.h.win32_SDL
!else
COGL_DEFINES_H_DEP = ..\..\cogl\cogl-defines.h.win32
!endif
!endif

vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\config.h: ..\..\config.h.win32
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-defines.h: $(COGL_DEFINES_H_DEP)
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-gl-header.h: ..\..\cogl\cogl-gl-header.h.win32
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\config.h: ..\..\config.h.win32
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl-defines.h: $(COGL_DEFINES_H_DEP)
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl-gl-header.h: ..\..\cogl\cogl-gl-header.h.win32

vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\config.h	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-defines.h	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-gl-header.h	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\config.h	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl-defines.h	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl-gl-header.h:
	@if not exist $(@D)\ $(MAKE) /f Makefile.vc CFG=$(CFG) $(@D)
	@copy $** $@

vs$(PDBVER)\$(CFG)\$(PLAT)\cogl	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-examples	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst-plugin	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango:
	@-mkdir $@

vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-enum-types.c: ..\..\cogl\cogl-enum-types.c.in $(cogl1_HDRS)
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-enum-types.h: ..\..\cogl\cogl-enum-types.h.in $(cogl1_HDRS)
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl-enum-types.c: ..\..\cogl\cogl-enum-types.c.in $(cogl1_HDRS)
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl-enum-types.h: ..\..\cogl\cogl-enum-types.h.in $(cogl1_HDRS)
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\cogl-path-enum-types.c: ..\..\cogl-path\cogl-path-enum-types.c.in $(cogl_path1_HDRS)
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\cogl-path-enum-types.h: ..\..\cogl-path\cogl-path-enum-types.h.in $(cogl_path1_HDRS)

vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-enum-types.c	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-enum-types.h	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl-enum-types.c	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl-enum-types.h	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\cogl-path-enum-types.c	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\cogl-path-enum-types.h:
	@if not exist $(@D)\ $(MAKE) /f Makefile.vc CFG=$(CFG) $(@D)
	$(GLIB_MKENUMS_INTERP) $(GLIB_MKENUMS) --template $(**) > $@

# Generate .def files
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl.def: ..\..\cogl\cogl.symbols
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl.def: ..\..\cogl\cogl.symbols

vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl.def	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl.def:
	@if not exist $(@D)\ $(MAKE) /f Makefile.vc CFG=$(CFG) $(@D)
	echo EXPORTS > $@
	$(CPP) /EP $** >> $@

# Generate filelists for introspection

vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl_1_gir_filelist: $(cogl1_HDRS) $(LIBCOGL_ENUM_HDRS)
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl_2_gir_filelist: $(cogl2_HDRS) $(cogl2_extra_HDRS) $(LIBCOGL_ENUM_HDRS)
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\coglpango_gir_filelist: $(cogl_pango_real_hdrs) $(cogl_pango_real_srcs)
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst\coglgst_gir_filelist: $(cogl_gst_real_hdrs) $(cogl_gst_real_srcs)

vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl_1_gir_filelist	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl_2_gir_filelist	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\coglpango_gir_filelist	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst\coglgst_gir_filelist:
	@for %%f in ($**) do @echo %%f >> $@
