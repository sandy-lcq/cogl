# Source file lists for cogl-path

# tesselator sources
COGL_TESSELATOR_SRCS =	\
	tesselator/dict-list.h 	\
	tesselator/dict.c 		\
	tesselator/dict.h 		\
	tesselator/geom.c 		\
	tesselator/geom.h 		\
	tesselator/gluos.h 		\
	tesselator/memalloc.h 	\
	tesselator/mesh.c 		\
	tesselator/mesh.h 		\
	tesselator/normal.c 		\
	tesselator/normal.h 		\
	tesselator/priorityq-heap.h 	\
	tesselator/priorityq-sort.h 	\
	tesselator/priorityq.c 	\
	tesselator/priorityq.h 	\
	tesselator/render.c 		\
	tesselator/render.h 		\
	tesselator/sweep.c 		\
	tesselator/sweep.h 		\
	tesselator/tess.c 		\
	tesselator/tess.h 		\
	tesselator/tesselator.h 	\
	tesselator/tessmono.c 	\
	tesselator/tessmono.h 	\
	tesselator/GL/glu.h 		\
	$(NULL)

COGL_PATH_SRCS =	\
	$(COGL_TESSELATOR_SRCS) \
	cogl-path-private.h \
	cogl1-path.c \
	cogl-path.c \
	$(NULL)

COGL_PATH_1_x_HDRS = \
	cogl-path-types.h \
	cogl1-path-functions.h \
	$(NULL)

COGL_PATH_HDRS = \
	cogl-path.h \
	$(COGL_PATH_1_x_HDRS) \
	cogl2-path-functions.h \
	$(NULL)

COGL_PATH_ENUMS_HDRS = cogl-path-enum-types.h
COGL_PATH_ENUMS_SRCS = cogl-path-enum-types.c

