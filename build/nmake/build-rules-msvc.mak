# NMake Makefile portion for compilation rules
# Items in here should not need to be edited unless
# one is maintaining the NMake build files.  The format
# of NMake Makefiles here are different from the GNU
# Makefiles.  Please see the comments about these formats.

# Inference rules for compiling the .obj files.
# Used for libs and programs with more than a single source file.
# Format is as follows
# (all dirs must have a trailing '\'):
#
# {$(srcdir)}.$(srcext){$(destdir)}.obj::
# 	$(CC)|$(CXX) $(cflags) /Fo$(destdir) /c @<<
# $<
# <<
{..\..\cogl\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /c @<<
$<
<<

{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /c @<<
$<
<<

{..\..\cogl\driver\gl\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /c @<<
$<
<<

{..\..\cogl\driver\gl\gl\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /c @<<
$<
<<

{..\..\cogl\driver\gl\gles\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /c @<<
$<
<<

{..\..\cogl\driver\nop\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /c @<<
$<
<<

{..\..\cogl\deprecated\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /c @<<
$<
<<

{..\..\cogl\winsys\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl\ /c @<<
$<
<<

{..\..\cogl\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_TEST_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /c @<<
$<
<<

{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_TEST_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /c @<<
$<
<<

{..\..\cogl\driver\gl\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_TEST_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /c @<<
$<
<<

{..\..\cogl\driver\gl\gl\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_TEST_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /c @<<
$<
<<

{..\..\cogl\driver\gl\gles\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_TEST_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /c @<<
$<
<<

{..\..\cogl\driver\nop\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_TEST_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /c @<<
$<
<<

{..\..\cogl\deprecated\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_TEST_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /c @<<
$<
<<

{..\..\cogl\winsys\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_TEST_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /c @<<
$<
<<

{..\..\test-fixtures\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_CFLAGS) $(LIBCOGL_TEST_EXTRA_CFLAGS) /DCOGL_DISABLE_DEPRECATED /DTESTS_DATADIR=\"$(cogl_topsrcdir)/tests/data\" /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /c @<<
$<
<<

{..\..\tests\micro-perf\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\}.obj::
	$(CC) $(CFLAGS) $(COGL_TESTS_CFLAGS) $(LIBCOGL_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /c @<<
$<
<<

{..\..\tests\unit\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\}.obj::
	$(CC) $(CFLAGS) $(COGL_TESTS_CFLAGS) $(LIBCOGL_TEST_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /c @<<
$<
<<

{..\..\tests\conform\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\}.obj::
	$(CC) $(CFLAGS) $(COGL_TESTS_CFLAGS) /I..\..\test-fixtures $(LIBCOGL_TEST_EXTRA_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ /c @<<
$<
<<

{..\..\cogl-path\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_PATH_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\ /c @<<
$<
<<

{..\..\cogl-path\tesselator\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_PATH_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\ /c @<<
$<
<<

{..\..\cogl-pango\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_PANGO_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\ /c @<<
$<
<<

{..\..\cogl-gst\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst\}.obj::
	$(CC) $(CFLAGS) $(LIBCOGL_GST_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst\ /c @<<
$<
<<

{..\..\cogl-gst\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst-plugin\}.obj::
	$(CC) $(CFLAGS) $(COGL_GST_PLUGIN_CFLAGS) /Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst-plugin\ /Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst-plugin\ /c @<<
$<
<<

{..\..\cogl\}.rc{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\}.res:
	rc /fo$@ $<

{..\..\cogl\}.rc{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\}.res:
	rc /fo$@ $<

{..\..\cogl-pango\}.rc{vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\}.res:
	rc /fo$@ $<

# Rules for building .lib files
$(COGL_LIB): $(COGL_DLL)
$(COGL_TESTS_LIB): $(COGL_TESTS_DLL)
$(COGL_PATH_LIB): $(COGL_PATH_DLL)
$(COGL_PATH_TESTS_LIB): $(COGL_PATH_TESTS_DLL)
$(COGL_PANGO_LIB): $(COGL_PANGO_DLL)
$(COGL_GST_LIB): $(COGL_GST_DLL)

# Rules for linking DLLs
# Format is as follows (the mt command is needed for MSVC 2005/2008 builds):
# $(dll_name_with_path): $(dependent_libs_files_objects_and_items)
#	link /DLL [$(linker_flags)] [$(dependent_libs)] [/def:$(def_file_if_used)] [/implib:$(lib_name_if_needed)] -out:$@ @<<
# $(dependent_objects)
# <<
# 	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;2
$(COGL_DLL):	\
$(LIBCOGL_CONFIG_HDRS)	\
$(LIBCOGL_ENUM_SRCS)	\
$(LIBCOGL_ENUM_HDRS)	\
$(libcogl_OBJS)	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl.def
	link /DLL $(LDFLAGS) $(LIBCOGL_DEP_LIBS) /implib:$(COGL_LIB) /def:vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl.def /out:$@ @<<
$(libcogl_OBJS)
<<
	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;2

$(COGL_TESTS_DLL):	\
$(LIBCOGL_TESTS_CONFIG_HDRS)	\
$(LIBCOGL_TESTS_ENUM_SRCS)	\
$(LIBCOGL_TESTS_ENUM_HDRS)	\
$(libcogl_tests_OBJS)	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl.def
	link /DLL $(LDFLAGS) $(LIBCOGL_DEP_LIBS) /implib:$(COGL_TESTS_LIB) /def:vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl.def /out:$@ @<<
$(libcogl_tests_OBJS)
<<
	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;2

$(COGL_PATH_DLL): $(COGL_LIB) $(LIBCOGL_PATH_ENUM_SRCS) $(LIBCOGL_PATH_ENUM_HDRS) $(libcogl_path_OBJS)
	link /DLL $(LDFLAGS) $(COGL_LIB) $(LIBCOGL_DEP_LIBS) /implib:$(COGL_PATH_LIB) -out:$@ @<<
$(libcogl_path_OBJS)
<<
	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;2

$(COGL_PATH_TESTS_DLL): $(COGL_TESTS_LIB) $(LIBCOGL_PATH_ENUM_SRCS) $(LIBCOGL_PATH_ENUM_HDRS) $(libcogl_path_OBJS)
	link /DLL $(LDFLAGS) $(COGL_TESTS_LIB) $(LIBCOGL_DEP_LIBS) /implib:$(COGL_PATH_TESTS_LIB) -out:$@ @<<
$(libcogl_path_OBJS)
<<
	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;2

$(COGL_PANGO_DLL): $(COGL_LIB) vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango  $(libcogl_pango_OBJS)
	link /DLL $(LDFLAGS) $(COGL_LIB) $(LIBCOGL_PANGO_DEP_LIBS) $(LIBCOGL_DEP_LIBS) /implib:$(COGL_PANGO_LIB) -out:$@ @<<
$(libcogl_pango_OBJS)
<<
	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;2

$(COGL_GST_DLL): $(COGL_LIB) vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst  $(libcogl_gst_OBJS)
	link /DLL $(LDFLAGS) $(COGL_LIB) $(LIBCOGL_GST_DEP_LIBS) $(LIBCOGL_DEP_LIBS) /implib:$(COGL_GST_LIB) -out:$@ @<<
$(libcogl_gst_OBJS)
<<
	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;2

$(COGL_GST_PLUGIN): $(COGL_GST_LIB) $(COGL_LIB) vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst-plugin $(cogl_gst_plugin_OBJS)
	link /DLL $(LDFLAGS) $(COGL_GST_LIB) $(COGL_LIB) $(LIBCOGL_GST_DEP_LIBS) $(LIBCOGL_DEP_LIBS) -out:$@ @<<
$(cogl_gst_plugin_OBJS)
<<
	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;2

# Rules for linking Executables
# Format is as follows (the mt command is needed for MSVC 2005/2008 builds):
# $(dll_name_with_path): $(dependent_libs_files_objects_and_items)
#	link [$(linker_flags)] [$(dependent_libs)] -out:$@ @<<
# $(dependent_objects)
# <<
# 	@-if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;1

{..\..\examples\}.c{vs$(PDBVER)\$(CFG)\$(PLAT)\}.exe:
	@if not exist vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-examples\ mkdir vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-examples
	$(CC) $(CFLAGS) $(COGL_EXAMPLE_CFLAGS)	\
	/Fovs$(PDBVER)\$(CFG)\$(PLAT)\cogl-examples\	\
	/Fdvs$(PDBVER)\$(CFG)\$(PLAT)\cogl-examples\	\
	/Fe$@ $<	\
	/link $(LDFLAGS) $(COGL_BUILT_LIBS) $(COGL_EXAMPLE_DEP_LIBS)
	@if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;1

vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-conform-test.exe: $(COGL_PATH_TESTS_LIB) $(COGL_TESTS_LIB) $(cogl_conform_test_OBJS)
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-micro-perf-test.exe: $(COGL_LIB) $(cogl_micro_perf_test_OBJS)
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-unit-test.exe: $(COGL_TESTS_LIB) $(cogl_unit_test_OBJS)

vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-conform-test.exe	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-micro-perf-test.exe	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-unit-test.exe:
	link $(LDFLAGS) $** $(COGL_EXAMPLE_DEP_LIBS) /out:$@
	@if exist $@.manifest mt /manifest $@.manifest /outputresource:$@;1

# Introspection rules
vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-1.0.gir: $(COGL_LIB) vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl_1_gir_filelist
	@echo Generating $@...
	$(PYTHON) $(G_IR_SCANNER)	\
	--verbose -no-libtool		\
	--namespace=Cogl	\
	--nsversion=1.0	\
	--library=cogl	\
	--include=GL-1.0 --include=GObject-2.0	\
	--pkg-export=cogl-1.0	\
	-I..			\
	-I$(CFG)\$(PLAT)		\
	--c-include=cogl/cogl.h	\
	--warn-all	\
	--cflags-begin	\
	$(COGL_BASE_CFLAGS:/=-)	\
	$(LIBCOGL_INCLUDES:/=-)	\
	$(BASE_INCLUDES:/=-)	\
	-UCOGL_ENABLE_EXPERIMENTAL_API	\
	-UCOGL_ENABLE_EXPERIMENTAL_2_0_API	\
	-UCOGL_COMPILATION	\
	-D__COGL_H_INSIDE__	\
	-D__COGL_XLIB_H_INSIDE__	\
	-D__COGL_EGL_H_INSIDE__	\
	-D__COGL_GLX_H_INSIDE__	\
	-DCOGL_GIR_SCANNING	\
	--cflags-end	\
	--filelist=vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl_1_gir_filelist	\
	-Lvs$(PDBVER)\$(CFG)\$(PLAT)	\
	-o $@

vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-2.0.gir: $(COGL_LIB) vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl_2_gir_filelist
	@echo Generating $@...
	$(PYTHON) $(G_IR_SCANNER)	\
	--verbose -no-libtool		\
	--namespace=Cogl	\
	--nsversion=2.0	\
	--library=cogl	\
	--include=GL-1.0 --include=GObject-2.0	\
	--pkg-export=cogl-2.0-experimental	\
	-I..			\
	-I$(CFG)\$(PLAT)		\
	--c-include=cogl/cogl.h	\
	--warn-all	\
	--symbol-prefix=cogl --symbol-prefix=cogl2	\
	--cflags-begin	\
	$(COGL_BASE_CFLAGS:/=-)	\
	$(LIBCOGL_INCLUDES:/=-)	\
	$(BASE_INCLUDES:/=-)	\
	-DCOGL_ENABLE_EXPERIMENTAL_API=1	\
	-UCOGL_COMPILATION	\
	-D__COGL_H_INSIDE__	\
	-D__COGL_XLIB_H_INSIDE__	\
	-DCOGL_GIR_SCANNING	\
	--cflags-end	\
	--filelist=vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl_2_gir_filelist	\
	-Lvs$(PDBVER)\$(CFG)\$(PLAT)	\
	-o $@

vs$(PDBVER)\$(CFG)\$(PLAT)\CoglPango-1.0.gir:	\
$(COGL_PANGO_LIB)	\
vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-1.0.gir	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\coglpango_gir_filelist
	@echo Generating $@...
	$(PYTHON) $(G_IR_SCANNER)	\
	--verbose -no-libtool		\
	--namespace=CoglPango	\
	--nsversion=1.0	\
	--library=cogl	\
	--library=cogl-pango	\
	--include=Pango-1.0 --include=PangoCairo-1.0	\
	--pkg-export=cogl-pango-1.0	\
	-I..			\
	-I$(CFG)\$(PLAT)		\
	--warn-all	\
	--identifier-prefix=CoglPango	\
	--symbol-prefix=cogl_pango	\
	--c-include='cogl-pango/cogl-pango.h'	\
	--include-uninstalled=vs$(PDBVER)/$(CFG)/$(PLAT)/Cogl-1.0.gir	\
	--cflags-begin	\
	$(COGL_BASE_CFLAGS:/=-)	\
	$(LIBCOGL_INCLUDES:/=-)	\
	$(PANGO_INCLUDES:/=-)	\
	--cflags-end	\
	--filelist=vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\coglpango_gir_filelist	\
	-Lvs$(PDBVER)\$(CFG)\$(PLAT)	\
	-o $@

vs$(PDBVER)\$(CFG)\$(PLAT)\CoglPango-2.0.gir:	\
$(COGL_PANGO_LIB)	\
vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-2.0.gir	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\coglpango_gir_filelist
	@echo Generating $@...
	$(PYTHON) $(G_IR_SCANNER)	\
	--verbose -no-libtool		\
	--namespace=CoglPango	\
	--nsversion=2.0	\
	--library=cogl	\
	--library=cogl-pango	\
	--include=Pango-1.0 --include=PangoCairo-1.0	\
	--pkg-export=cogl-pango-2.0-experimental	\
	-I..			\
	-I$(CFG)\$(PLAT)		\
	--warn-all	\
	--identifier-prefix=CoglPango	\
	--symbol-prefix=cogl_pango	\
	--c-include='cogl-pango/cogl-pango.h'	\
	--include-uninstalled=vs$(PDBVER)/$(CFG)/$(PLAT)/Cogl-2.0.gir	\
	--cflags-begin	\
	$(COGL_BASE_CFLAGS:/=-)	\
	$(LIBCOGL_INCLUDES:/=-)	\
	$(PANGO_INCLUDES:/=-)	\
	--cflags-end	\
	--filelist=vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\coglpango_gir_filelist	\
	-Lvs$(PDBVER)\$(CFG)\$(PLAT)	\
	-o $@

vs$(PDBVER)\$(CFG)\$(PLAT)\CoglGst-2.0.gir:	\
$(COGL_PANGO_LIB)	\
vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-2.0.gir	\
vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst\coglgst_gir_filelist
	@echo Generating $@...
	$(PYTHON) $(G_IR_SCANNER)	\
	--verbose -no-libtool		\
	--namespace=CoglGst	\
	--nsversion=2.0	\
	--library=cogl	\
	--library=cogl-gst	\
	--include=GObject-2.0 --include=Gst-1.0 --include=GstBase-1.0	\
	--pkg-export=cogl-gst-2.0-experimental	\
	-I..			\
	-I$(CFG)\$(PLAT)		\
	--warn-all	\
	--identifier-prefix=CoglGst	\
	--symbol-prefix=cogl_gst	\
	--c-include='cogl-gst/cogl-gst.h'	\
	--c-include="gst/gst.h"	\
	--include-uninstalled=vs$(PDBVER)/$(CFG)/$(PLAT)/Cogl-2.0.gir	\
	--pkg gstreamer-1.0	\
	--add-init-section="gst_init(NULL, NULL);"	\
	--cflags-begin	\
	$(LIBCOGL_INCLUDES:/=-)	\
	$(GST_INCLUDES:/=-)	\
	--cflags-end	\
	--filelist=vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst\coglgst_gir_filelist	\
	-Lvs$(PDBVER)\$(CFG)\$(PLAT)	\
	-o $@

vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-1.0.typelib: vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-1.0.gir
vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-2.0.typelib: vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-2.0.gir
vs$(PDBVER)\$(CFG)\$(PLAT)\CoglPango-1.0.typelib:	\
vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-1.0.typelib	\
vs$(PDBVER)\$(CFG)\$(PLAT)\CoglPango-1.0.gir

vs$(PDBVER)\$(CFG)\$(PLAT)\CoglPango-2.0.typelib:	\
vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-2.0.typelib	\
vs$(PDBVER)\$(CFG)\$(PLAT)\CoglPango-2.0.gir

vs$(PDBVER)\$(CFG)\$(PLAT)\CoglGst-2.0.typelib:	\
vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-2.0.typelib	\
vs$(PDBVER)\$(CFG)\$(PLAT)\CoglGst-2.0.gir

vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-1.0.typelib	\
vs$(PDBVER)\$(CFG)\$(PLAT)\Cogl-2.0.typelib	\
vs$(PDBVER)\$(CFG)\$(PLAT)\CoglPango-1.0.typelib	\
vs$(PDBVER)\$(CFG)\$(PLAT)\CoglPango-2.0.typelib	\
vs$(PDBVER)\$(CFG)\$(PLAT)\CoglGst-2.0.typelib:
	$(G_IR_COMPILER) 			\
	--includedir=vs$(PDBVER)\$(CFG)\$(PLAT) --debug --verbose	\
	$(@R:\=/).gir -o $@

clean:
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\*.typelib
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\*.gir
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\*.exe.manifest
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\*.exe
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\*.dll.manifest
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\*.dll
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\*.pdb
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\*.ilk
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\*.exp
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\*.lib
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-examples\vc$(PDBVER)0.pdb
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-examples\*.obj
	@-rd vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-examples
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst-plugin\vc$(PDBVER)0.pdb
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst-plugin\*.obj
	@-rd vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst-plugin
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst\vc$(PDBVER)0.pdb
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst\coglgst_gir_filelist
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst\*.obj
	@-rd vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\vc$(PDBVER)0.pdb
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\coglpango_gir_filelist
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\*.res
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\*.obj
	@-rd vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\vc$(PDBVER)0.pdb
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\*.obj
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\cogl-path-enum-types.c
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\cogl-path-enum-types.h
	@-rd vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path
	@if exist vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\vc$(PDBVER)0.pdb
	@if exist vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\*.res
	@if exist vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\*.def
	@if exist vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\*.obj
	@if exist vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl-enum-types.c
	@if exist vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\cogl-enum-types.h
	@if exist vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ del /f /q $(LIBCOGL_TESTS_CONFIG_HDRS)
	@if exist vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\ rd vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\vc$(PDBVER)0.pdb
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl_2_gir_filelist
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl_1_gir_filelist
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\*.res
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\*.def
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\*.obj
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-enum-types.c
	@-del /f /q vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-enum-types.h
	@-del /f /q $(LIBCOGL_CONFIG_HDRS)
	@-rd vs$(PDBVER)\$(CFG)\$(PLAT)\cogl
