# Convert the source listing to object (.obj) listing in
# another NMake Makefile module, include it, and clean it up.
# This is a "fact-of-life" regarding NMake Makefiles...
# This file does not need to be changed unless one is maintaining the NMake Makefiles

# For those wanting to add things here:
# To add a list, do the following:
# # $(description_of_list)
# if [call create-lists.bat header $(makefile_snippet_file) $(variable_name)]
# endif
#
# if [call create-lists.bat file $(makefile_snippet_file) $(file_name)]
# endif
#
# if [call create-lists.bat footer $(makefile_snippet_file)]
# endif
# ... (repeat the if [call ...] lines in the above order if needed)
# !include $(makefile_snippet_file)
#
# (add the following after checking the entries in $(makefile_snippet_file) is correct)
# (the batch script appends to $(makefile_snippet_file), you will need to clear the file unless the following line is added)
#!if [del /f /q $(makefile_snippet_file)]
#!endif

# In order to obtain the .obj filename that is needed for NMake Makefiles to build DLLs/static LIBs or EXEs, do the following
# instead when doing 'if [call create-lists.bat file $(makefile_snippet_file) $(file_name)]'
# (repeat if there are multiple $(srcext)'s in $(source_list), ignore any headers):
# !if [for %c in ($(source_list)) do @if "%~xc" == ".$(srcext)" @call create-lists.bat file $(makefile_snippet_file) $(intdir)\%~nc.obj]
#
# $(intdir)\%~nc.obj needs to correspond to the rules added in build-rules-msvc.mak
# %~xc gives the file extension of a given file, %c in this case, so if %c is a.cc, %~xc means .cc
# %~nc gives the file name of a given file without extension, %c in this case, so if %c is a.cc, %~nc means a

NULL=

# For cogl

!if [echo cogl_topsrcdir=%CD:\=/%/../.. > cogl.mak ]
!endif

!if [call create-lists.bat header cogl.mak cogl1_HDRS]
!endif

!if [for %c in ($(COGL_1_PUB_HDRS:/=\)) do @if "%~xc" == ".h" @call create-lists.bat file cogl.mak ..\..\cogl\%c]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak cogl_gl_prototype_HDRS]
!endif

!if [for %c in ($(COGL_GL_PROTOTYPE_HDRS:/=\)) do @if "%~xc" == ".h" @call create-lists.bat file cogl.mak ..\..\cogl\%c]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak cogl2_HDRS]
!endif

!if [for %c in ($(COGL_EXPERIMENTAL_HDRS:/=\)) do @if "%~xc" == ".h" @call create-lists.bat file cogl.mak ..\..\cogl\%c]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak cogl2_extra_HDRS]
!endif

!if [for %c in ($(COGL_ADDITIONAL_EXPERIMENTAL_HDRS:/=\)) do @if "%~xc" == ".h" @call create-lists.bat file cogl.mak ..\..\cogl\%c]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak libcogl_OBJS]
!endif

!if [for %c in ($(COGL_BASE_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\%~nc.obj]
!endif

!if [for %c in ($(COGL_DEPRECATED_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\%~nc.obj]
!endif

!if [for %c in ($(COGL_NOP_DRIVER_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\%~nc.obj]
!endif

!if [for %c in ($(COGL_GL_DRIVER_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\%~nc.obj]
!endif

!if [for %c in ($(COGL_GL_DRIVER_SUPPORT_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\%~nc.obj]
!endif

!if [for %c in ($(COGL_WINSYS_COMMON_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\%~nc.obj]
!endif

!if [for %c in ($(LIBCOGL_EXTRA_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\%~nc.obj]
!endif

!if [for %c in ($(LIBCOGL_EXTRA_OBJS)) do @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\%~nxc]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak libcogl_tests_OBJS]
!endif

!if [for %c in ($(COGL_BASE_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\%~nc.obj]
!endif

!if [for %c in ($(COGL_DEPRECATED_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\%~nc.obj]
!endif

!if [for %c in ($(COGL_NOP_DRIVER_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\%~nc.obj]
!endif

!if [for %c in ($(COGL_GL_DRIVER_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\%~nc.obj]
!endif

!if [for %c in ($(COGL_GL_DRIVER_SUPPORT_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\%~nc.obj]
!endif

!if [for %c in ($(COGL_WINSYS_COMMON_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\%~nc.obj]
!endif

!if [for %c in ($(LIBCOGL_EXTRA_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\%~nc.obj]
!endif

!if [for %c in ($(LIBCOGL_TESTS_EXTRA_OBJS:\cogl\=\cogl-tests\)) do @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\%~nxc]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak cogl_path1_HDRS]
!endif

!if [for %c in ($(COGL_PATH_1_x_HDRS:/=\)) do @if "%~xc" == ".h" @call create-lists.bat file cogl.mak ..\..\cogl-path\%c]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak cogl_path_actual_hdrs]
!endif

!if [for %c in ($(COGL_PATH_HDRS:/=\)) do @if "%~xc" == ".h" @call create-lists.bat file cogl.mak ..\..\cogl-path\%c]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak libcogl_path_OBJS]
!endif

!if [for %c in ($(COGL_PATH_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\%~nc.obj]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak libcogl_pango_OBJS]
!endif

!if [for %c in ($(COGL_PANGO_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\%~nc.obj]
!endif

!if [for %c in (cogl-pango.res) do @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-pango\%c]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak cogl_pango_real_srcs]
!endif

!if [for %c in ($(COGL_PANGO_SRCS:/=\)) do @call create-lists.bat file cogl.mak ..\..\cogl-pango\%c]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak cogl_pango_real_hdrs]
!endif

!if [for %c in ($(COGL_PANGO_PUB_HDRS:/=\)) do @call create-lists.bat file cogl.mak ..\..\cogl-pango\%c]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak libcogl_gst_OBJS]
!endif

!if [for %c in ($(COGL_GST_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst\%~nc.obj]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak cogl_gst_real_srcs]
!endif

!if [for %c in ($(COGL_GST_SRCS:/=\)) do @call create-lists.bat file cogl.mak ..\..\cogl-gst\%c]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak cogl_gst_real_hdrs]
!endif

!if [for %c in ($(COGL_GST_PUB_HDRS:/=\)) do @call create-lists.bat file cogl.mak ..\..\cogl-gst\%c]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak cogl_gst_plugin_OBJS]
!endif

!if [for %c in ($(COGL_GST_PLUGIN_SRCS:/=\)) do @if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-gst-plugin\%~nc.obj]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak cogl_unit_test_OBJS]
!endif

!if [for %c in (..\..\tests\unit\*.c) do @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\%~nc.obj]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak cogl_micro_perf_test_OBJS]
!endif

!if [for %c in (..\..\tests\micro-perf\*.c) do @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\%~nc.obj]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!if [call create-lists.bat header cogl.mak cogl_conform_test_OBJS]
!endif

!if [for %c in ($(common_sources) $(base_test_srcs) $(test_srcs_no_emscripten) $(test_srcs_path)) do @@if "%~xc" == ".c" @call create-lists.bat file cogl.mak vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-tests\%~nc.obj]
!endif

!if [call create-lists.bat footer cogl.mak]
!endif

!include cogl.mak

!if [del /f /q cogl.mak]
!endif
