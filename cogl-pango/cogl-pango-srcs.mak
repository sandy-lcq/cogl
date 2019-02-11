# Source listings for cogl-pango

COGL_PANGO_SRCS =	\
	cogl-pango-display-list.c   \
	cogl-pango-fontmap.c        \
	cogl-pango-render.c         \
	cogl-pango-glyph-cache.c    \
	cogl-pango-pipeline-cache.c \
	$(NULL)

COGL_PANGO_PUB_HDRS = cogl-pango.h

COGL_PANGO_PRIV_HDRS =	\
	cogl-pango-display-list.h   \
	cogl-pango-private.h        \
	cogl-pango-glyph-cache.h    \
	cogl-pango-pipeline-cache.h \
	$(NULL)
