# NMake Makefile snippet for copying the built libraries, utilities and headers to
# a path under $(PREFIX).

install: all
	@if not exist $(PREFIX)\bin mkdir $(PREFIX)\bin
	@if not exist $(PREFIX)\lib mkdir $(PREFIX)\lib
	@if not "$(COGL_INTROSPECTION_TYPELIBS)" == "" if not exist $(PREFIX)\lib\girepository-1.0 mkdir $(PREFIX)\lib\girepository-1.0
	@if not "$(GST)" == "" if not exist $(PREFIX)\lib\gstreamer-1.0 mkdir $(PREFIX)\lib\gstreamer-1.0
	@if not exist $(PREFIX)\share\gir-1.0 mkdir $(PREFIX)\share\gir-1.0
	@if not exist $(PREFIX)\include\cogl\cogl mkdir $(PREFIX)\include\cogl\cogl
	@if not exist $(PREFIX)\include\cogl\cogl\deprecated mkdir $(PREFIX)\include\cogl\cogl\deprecated
	@if not exist $(PREFIX)\include\cogl\cogl\gl-prototypes mkdir $(PREFIX)\include\cogl\cogl\gl-prototypes
	@if not exist $(PREFIX)\include\cogl\cogl-path mkdir $(PREFIX)\include\cogl\cogl-path
	@if exist $(COGL_PANGO_DLL) if not exist $(PREFIX)\include\cogl\cogl-pango mkdir $(PREFIX)\include\cogl\cogl-pango
	@if exist $(COGL_GST_DLL) if not exist $(PREFIX)\include\cogl\cogl-gst mkdir $(PREFIX)\include\cogl\cogl-gst
	@copy /b /y $(COGL_DLL) $(PREFIX)\bin
	@copy /b /y $(COGL_DLL:.dll=.pdb) $(PREFIX)\bin
	@copy /b /y $(COGL_LIB) $(PREFIX)\lib
	@copy /b /y $(COGL_PATH_DLL) $(PREFIX)\bin
	@copy /b /y $(COGL_PATH_DLL:.dll=.pdb) $(PREFIX)\bin
	@copy /b /y $(COGL_PATH_LIB) $(PREFIX)\lib
	@if exist $(COGL_PANGO_DLL) copy /b /y $(COGL_PANGO_DLL) $(PREFIX)\bin
	@if exist $(COGL_PANGO_DLL) copy /b /y $(COGL_PANGO_DLL:.dll=.pdb) $(PREFIX)\bin
	@if exist $(COGL_PANGO_LIB) copy /b /y $(COGL_PANGO_LIB) $(PREFIX)\lib
	@if exist $(COGL_GST_DLL) copy /b /y $(COGL_GST_DLL) $(PREFIX)\bin
	@if exist $(COGL_GST_DLL) copy /b /y $(COGL_GST_DLL:.dll=.pdb) $(PREFIX)\bin
	@if exist $(COGL_GST_LIB) copy /b /y $(COGL_GST_LIB) $(PREFIX)\lib
	@if not "$(COGL_INTROSPECTION_TYPELIBS)" == "" for %%f in ($(COGL_INTROSPECTION_TYPELIBS:.typelib=.gir)) do @copy /y %%f $(PREFIX)\share\gir-1.0
	@if not "$(COGL_INTROSPECTION_TYPELIBS)" == "" for %%f in ($(COGL_INTROSPECTION_TYPELIBS)) do @copy /b /y %%f $(PREFIX)\lib\girepository-1.0
	@for %%f in ($(COGL_EXAMPLE_PROGS)) do @copy /b /y %%f $(PREFIX)\bin
	@for %%f in ($(COGL_EXAMPLE_PROGS:.exe=.pdb)) do @copy /b /y %%f $(PREFIX)\bin
	@if exist $(COGL_GST_PLUGIN) for %%f in ($(COGL_GST_PLUGIN)) do @copy /b /y %%f $(PREFIX)\lib\gstreamer-1.0
	@if exist $(COGL_GST_PLUGIN) for %%f in ($(COGL_GST_PLUGIN:.dll=.pdb)) do @copy /b /y %%f $(PREFIX)\lib\gstreamer-1.0
	@for %%f in ($(LIBCOGL_INSTALLED_HDRS:/=\)) do @copy /y ..\..\cogl\%%f $(PREFIX)\include\cogl\cogl\%%f
	@for %%f in (vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-defines.h vs$(PDBVER)\$(CFG)\$(PLAT)\cogl\cogl-enum-types.h) do @copy /y %%f $(PREFIX)\include\cogl\cogl
	@for %%f in ($(cogl_path_actual_hdrs:..\..\=)) do @copy /y ..\..\%%f $(PREFIX)\include\cogl\%%f
	@for %%f in (vs$(PDBVER)\$(CFG)\$(PLAT)\cogl-path\cogl-path-enum-types.h) do @copy /y %%f $(PREFIX)\include\cogl\cogl-path
	@if exist $(COGL_PANGO_DLL) for %%f in ($(cogl_pango_real_hdrs:..\..\=)) do @copy /b /y ..\..\%%f $(PREFIX)\include\cogl\%%f
	@if exist $(COGL_GST_DLL) for %%f in ($(cogl_gst_real_hdrs:..\..\=)) do @copy /b /y ..\..\%%f $(PREFIX)\include\cogl\%%f
