include $(top_srcdir)/build/autotools/Makefile.am.silent

NULL =

noinst_PROGRAMS = test-conformance

include conform-test-srcs.mak

test_sources = $(base_test_srcs)

if !USING_EMSCRIPTEN
# test-fence depends on the glib mainloop so it won't compile if using
# emscripten which builds in standalone mode.
test_sources += $(test_srcs_no_emscripten)
endif

if BUILD_COGL_PATH
test_sources += $(test_srcs_path)
endif

test_conformance_SOURCES = $(common_sources) $(test_sources)

if OS_WIN32
SHEXT =
else
SHEXT = $(EXEEXT)
endif

# For convenience, this provides a way to easily run individual unit tests:
.PHONY: wrappers clean-wrappers

wrappers: stamp-test-conformance
	@true
stamp-test-conformance: Makefile $(srcdir)/test-conform-main.c
	@mkdir -p wrappers
	@sed -n -e 's/^ \{1,\}ADD_TEST *( *\([a-zA-Z0-9_]\{1,\}\).*/\1/p' $(srcdir)/test-conform-main.c > unit-tests
	@chmod +x $(top_srcdir)/tests/test-launcher.sh
	@( echo "/stamp-test-conformance" ; \
	   echo "/test-conformance$(EXEEXT)" ; \
	   echo "*.o" ; \
	   echo ".gitignore" ; \
	   echo "unit-tests" ; ) > .gitignore
	@for i in `cat unit-tests`; \
	do \
		unit=`basename $$i | sed -e s/_/-/g`; \
		echo "  GEN    $$unit"; \
		( echo "#!/bin/sh" ; echo "$(top_srcdir)/tests/test-launcher.sh $(abs_builddir)/test-conformance$(EXEEXT) '' '$$i' \"\$$@\"" ) > $$unit$(SHEXT) ; \
		chmod +x $$unit$(SHEXT); \
		echo "/$$unit$(SHEXT)" >> .gitignore; \
	done \
	&& echo timestamp > $(@F)

clean-wrappers:
	@for i in `cat unit-tests`; \
	do \
		unit=`basename $$i | sed -e s/_/-/g`; \
		echo "  RM     $$unit"; \
		rm -f $$unit$(SHEXT) ; \
	done \
	&& rm -f unit-tests \
	&& rm -f stamp-test-conformance

# NB: BUILT_SOURCES here a misnomer. We aren't building source, just inserting
# a phony rule that will generate symlink scripts for running individual tests
BUILT_SOURCES = wrappers

AM_CPPFLAGS = \
	-I$(top_srcdir) \
	-I$(top_builddir)/cogl \
	-I$(top_srcdir)/test-fixtures

if !USE_GLIB
AM_CPPFLAGS += -I$(top_builddir)/deps/glib
endif

AM_CPPFLAGS += \
	-DCOGL_ENABLE_EXPERIMENTAL_API \
	-DCOGL_DISABLE_DEPRECATED \
	-DCOGL_DISABLE_DEPRECATION_WARNINGS \
	-DTESTS_DATADIR=\""$(top_srcdir)/tests/data"\"

test_conformance_CFLAGS = -g3 -O0 $(COGL_DEP_CFLAGS) $(COGL_EXTRA_CFLAGS)
test_conformance_LDADD = \
	$(COGL_DEP_LIBS) \
	$(top_builddir)/cogl/libcogl.la \
	$(LIBM)
if !USE_GLIB
test_conformance_LDADD += $(top_builddir)/deps/glib/libglib.la
endif
if BUILD_COGL_PATH
test_conformance_LDADD += $(top_builddir)/cogl-path/libcogl-path.la
endif
test_conformance_LDFLAGS = -export-dynamic

test: wrappers
	@$(top_srcdir)/tests/run-tests.sh $(abs_builddir)/../config.env $(abs_builddir)/test-conformance$(EXEEXT)

# XXX: we could prevent the conformance test suite from running
#      by simply defining this variable conditionally
TEST_PROGS = test-conformance

.PHONY: test

DISTCLEANFILES = .gitignore

# we override the clean-generic target to clean up the wrappers so
# we cannot use CLEANFILES
clean-generic: clean-wrappers
	$(QUIET_RM)rm -f .log


if ENABLE_INSTALLED_TESTS

insttestdir = $(libexecdir)/installed-tests/$(PACKAGE)/conform
insttest_PROGRAMS = test-conformance
insttest_DATA = unit-tests

testmetadir = $(datadir)/installed-tests/$(PACKAGE)
testmeta_DATA = conform.test

conform.test:
	echo "  GEN      $@"; \
	echo "[Test]" > $@.tmp; \
	echo "Type=session" >> $@.tmp; \
	echo "Exec=sh -c \"cd $(libexecdir)/installed-tests/$(PACKAGE)/conform; ../run-tests.sh ../config.env ./test-conformance\"" >> $@.tmp; \
	mv $@.tmp $@

CLEANFILES = conform.test

endif
