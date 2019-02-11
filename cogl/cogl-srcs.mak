# cogl-srcs.mak: Listing of various source files for Cogl

COGL_DEPRECATED_HDRS = \
	deprecated/cogl-clip-state.h	\
	deprecated/cogl-fixed.h	\
	deprecated/cogl-material-compat.h 	\
	deprecated/cogl-vertex-buffer.h 	\
	deprecated/cogl-shader.h	\
	deprecated/cogl-clutter.h       	\
	deprecated/cogl-type-casts.h       	\
	deprecated/cogl-framebuffer-deprecated.h \
	deprecated/cogl-texture-deprecated.h	\
	deprecated/cogl-auto-texture.h	\
	$(NULL)

COGL_1_PUB_HDRS =	\
	$(COGL_DEPRECATED_HDRS)	\
	cogl1-context.h	\
	cogl-bitmap.h	\
	cogl-color.h 	\
	cogl-matrix.h	\
	cogl-offscreen.h	\
	cogl-primitives.h	\
	cogl-texture.h	\
	cogl-types.h 	\
	cogl.h	\
	$(NULL)

COGL_EXPERIMENTAL_HDRS =	\
	cogl-object.h	\
	cogl-renderer.h	\
	cogl-swap-chain.h	\
	cogl-onscreen-template.h 	\
	cogl-display.h	\
	cogl-context.h	\
	cogl-pipeline.h	\
	cogl-pipeline-state.h 	\
	cogl-pipeline-layer-state.h 	\
	cogl-snippet.h		\
	cogl-gles2.h	\
	cogl-gles2-types.h		\
	cogl-index-buffer.h	\
	cogl-attribute-buffer.h 	\
	cogl-indices.h	\
	cogl-attribute.h	\
	cogl-primitive.h	\
	cogl-framebuffer.h		\
	cogl-onscreen.h		\
	cogl-frame-info.h		\
	cogl-vector.h	\
	cogl-euler.h 	\
	cogl-output.h	\
	cogl-quaternion.h	\
	cogl-matrix-stack.h		\
	cogl-poll.h	\
	cogl-texture-3d.h             \
	cogl-texture-2d.h             \
	cogl-texture-2d-gl.h	\
	cogl-texture-rectangle.h      \
	cogl-texture-2d-sliced.h      \
	cogl-sub-texture.h            \
	cogl-atlas-texture.h          \
	cogl-meta-texture.h		\
	cogl-primitive-texture.h	\
	cogl-depth-state.h	\
	cogl-buffer.h	\
	cogl-pixel-buffer.h		\
	cogl2-experimental.h		\
	cogl-macros.h	\
	cogl-fence.h   	\
	cogl-version.h		\
	cogl-error.h	\
	$(NULL)

COGL_OTHER_HDRS =	\
	cogl-deprecated.h \
	cogl-pango.h \
	$(NULL)

COGL_ADDITIONAL_EXPERIMENTAL_HDRS = \
	cogl-bitmap.h	\
	cogl-color.h	\
	cogl-matrix.h	\
	cogl-texture.h		\
	cogl-types.h	\
	cogl-gtype-private.h		\
	$(NULL)

COGL_NOP_DRIVER_SRCS =	\
	driver/nop/cogl-driver-nop.c \
	driver/nop/cogl-framebuffer-nop-private.h \
	driver/nop/cogl-framebuffer-nop.c \
	driver/nop/cogl-attribute-nop-private.h \
	driver/nop/cogl-attribute-nop.c \
	driver/nop/cogl-clip-stack-nop-private.h \
	driver/nop/cogl-clip-stack-nop.c \
	driver/nop/cogl-texture-2d-nop-private.h \
	driver/nop/cogl-texture-2d-nop.c \
	$(NULL)

COGL_GL_PROTOTYPE_HDRS =	\
	gl-prototypes/cogl-gles2-functions.h		\
	gl-prototypes/cogl-core-functions.h		\
	gl-prototypes/cogl-in-gles-core-functions.h	\
	gl-prototypes/cogl-in-gles2-core-functions.h	\
	gl-prototypes/cogl-glsl-functions.h		\
	$(NULL)

COGL_GL_DRIVER_SRCS =	\
	driver/gl/cogl-util-gl-private.h \
	driver/gl/cogl-util-gl.c \
	driver/gl/cogl-framebuffer-gl-private.h \
	driver/gl/cogl-framebuffer-gl.c \
	driver/gl/cogl-texture-gl-private.h \
	driver/gl/cogl-texture-gl.c \
	driver/gl/cogl-texture-2d-gl-private.h \
	driver/gl/cogl-texture-2d-gl.c \
	driver/gl/cogl-attribute-gl-private.h \
	driver/gl/cogl-attribute-gl.c \
	driver/gl/cogl-clip-stack-gl-private.h \
	driver/gl/cogl-clip-stack-gl.c \
	driver/gl/cogl-buffer-gl-private.h \
	driver/gl/cogl-buffer-gl.c \
	driver/gl/cogl-pipeline-opengl.c \
	driver/gl/cogl-pipeline-opengl-private.h \
	driver/gl/cogl-pipeline-fragend-glsl.c \
	driver/gl/cogl-pipeline-fragend-glsl-private.h \
	driver/gl/gl/cogl-pipeline-fragend-arbfp.c \
	driver/gl/gl/cogl-pipeline-fragend-arbfp-private.h \
	driver/gl/gl/cogl-pipeline-progend-fixed-arbfp.c \
	driver/gl/gl/cogl-pipeline-progend-fixed-arbfp-private.h \
	driver/gl/cogl-pipeline-fragend-fixed.c \
	driver/gl/cogl-pipeline-fragend-fixed-private.h \
	driver/gl/cogl-pipeline-vertend-glsl.c \
	driver/gl/cogl-pipeline-vertend-glsl-private.h \
	driver/gl/cogl-pipeline-vertend-fixed.c \
	driver/gl/cogl-pipeline-vertend-fixed-private.h \
	driver/gl/cogl-pipeline-progend-fixed.c \
	driver/gl/cogl-pipeline-progend-fixed-private.h \
	driver/gl/cogl-pipeline-progend-glsl.c \
	driver/gl/cogl-pipeline-progend-glsl-private.h \
	$(NULL)

COGL_GL_DRIVER_SUPPORT_SRCS =	\
	driver/gl/gl/cogl-driver-gl.c \
	driver/gl/gl/cogl-texture-driver-gl.c \
	$(NULL)

COGL_GLES_DRIVER_SUPPORT_SRCS =	\
	driver/gl/gles/cogl-driver-gles.c \
	driver/gl/gles/cogl-texture-driver-gles.c	\
	$(NULL)

COGL_WINSYS_COMMON_SRCS =	\
	winsys/cogl-winsys-private.h \
	winsys/cogl-winsys.c \
	winsys/cogl-winsys-stub-private.h	\
	winsys/cogl-winsys-stub.c		\
	$(NULL)

COGL_BASE_SRCS =	\
	cogl-debug.h 	\
	cogl-debug-options.h	\
	cogl-gpu-info.c	\
	cogl-context.c	\
	cogl-renderer.h	\
	cogl-renderer.c	\
	cogl-swap-chain.h	\
	cogl-swap-chain.c	\
	cogl-onscreen-template.h	\
	cogl-onscreen-template.c	\
	cogl-display.h	\
	cogl-display.c	\
	cogl-driver.h	\
	cogl.c	\
	cogl-object.h	\
	cogl-object.c	\
	cogl-util.h 	\
	cogl-util.c 	\
	cogl-bitmap.c 	\
	cogl-bitmap-conversion.c	\
	cogl-bitmap-packing.h	\
	cogl-primitives.h 	\
	cogl-primitives.c 	\
	cogl-bitmap-pixbuf.c 	\
	cogl-clip-stack.h 	\
	cogl-clip-stack.c	\
	cogl-feature-private.c	\
	cogl-color.c	\
	cogl-buffer.c	\
	cogl-pixel-buffer.c	\
	cogl-index-buffer.c	\
	cogl-attribute-buffer.c		\
	cogl-indices.c	\
	cogl-attribute.c	\
	cogl-primitive.c	\
	cogl-matrix.c	\
	cogl-vector.c	\
	cogl-euler.c	\
	cogl-quaternion.c	\
	cogl-matrix-stack.c	\
	cogl-depth-state.c	\
	cogl-node.c	\
	cogl-pipeline.c	\
	cogl-pipeline-layer.c	\
	cogl-pipeline-state.c	\
	cogl-pipeline-layer-state.c		\
	cogl-pipeline-debug.c	\
	cogl-glsl-shader.c    	\
	cogl-glsl-shader-boilerplate.h        \
	cogl-pipeline-snippet.c		\
	cogl-pipeline-cache.h	\
	cogl-pipeline-cache.c	\
	cogl-pipeline-hash-table.h		\
	cogl-pipeline-hash-table.c		\
	cogl-sampler-cache.c	\
	cogl-blend-string.c	\
	cogl-blend-string.h	\
	cogl-debug.c	\
	cogl-texture-driver.h	\
	cogl-sub-texture.c    	\
	cogl-texture.c	\
	cogl-texture-2d.c     	\
	cogl-texture-2d-sliced.c		\
	cogl-texture-3d.c     	\
	cogl-texture-rectangle.c              \
	cogl-rectangle-map.h  	\
	cogl-rectangle-map.c  	\
	cogl-atlas.h          	\
	cogl-atlas.c          	\
	cogl-atlas-texture.c  	\
	cogl-meta-texture.c	\
	cogl-primitive-texture.c		\
	cogl-blit.h	\
	cogl-blit.c	\
	cogl-spans.h	\
	cogl-spans.c	\
	cogl-frame-info.c	\
	cogl-journal.c	\
	cogl-framebuffer.c 	\
	cogl-onscreen.c 	\
	cogl-output.c	\
	cogl-profile.h 	\
	cogl-profile.c 	\
	cogl-flags.h	\
	cogl-bitmask.h        	\
	cogl-bitmask.c        	\
	cogl-gtype.c          	\
	cogl-point-in-poly.c   	\
	cogl-list.c	\
	cogl-list.h	\
	cogl-config.c	\
	cogl-boxed-value.h	\
	cogl-boxed-value.c	\
	cogl-snippet.c	\
	cogl-poll.c	\
	gl-prototypes/cogl-core-functions.h	\
	gl-prototypes/cogl-gles2-functions.h	\
	gl-prototypes/cogl-in-gles-core-functions.h	\
	gl-prototypes/cogl-in-gles2-core-functions.h	\
	gl-prototypes/cogl-glsl-functions.h	\
	cogl-memory-stack.c	\
	cogl-magazine.c	\
	cogl-gles2-context.c	\
	cogl-error.c	\
	cogl-closure-list.c	\
	cogl-fence.c	\
	$(NULL)

COGL_DEPRECATED_SRCS =	\
	deprecated/cogl-clip-state.c	\
	deprecated/cogl-fixed.c		    	\
	deprecated/cogl-vertex-buffer-private.h	\
	deprecated/cogl-vertex-buffer.c		\
	deprecated/cogl-material-compat.c		\
	deprecated/cogl-program.c	\
	deprecated/cogl-program-private.h		\
	deprecated/cogl-auto-texture.c		\
	deprecated/cogl-shader-private.h		\
	deprecated/cogl-shader.c	\
	deprecated/cogl-clutter.c   	\
	deprecated/cogl-framebuffer-deprecated.c      \
	deprecated/cogl-texture-deprecated.c       	\
	$(NULL)

COGL_PRIVATE_HDRS =	\
	cogl-atlas-texture-private.h          \
	cogl-attribute-buffer-private.h	\
	cogl-attribute-private.h		\
	cogl-bitmap-private.h	\
	cogl-buffer-private.h	\
	cogl-closure-list-private.h		\
	cogl-config-private.h	\
	cogl-color-private.h	\
	cogl-context-private.h		\
	cogl-depth-state-private.h		\
	cogl-display-private.h		\
	cogl-error-private.h	\
	cogl-feature-private.h	\
	cogl-fence-private.h	\
	cogl-frame-info-private.h		\
	cogl-framebuffer-private.h		\
	cogl-gles2-context-private.h		\
	cogl-glsl-shader-private.h            \
	cogl-gpu-info-private.h		\
	cogl-gtype-private.h  	\
	cogl-index-buffer-private.h		\
	cogl-indices-private.h		\
	cogl-i18n-private.h 	\
	cogl-journal-private.h		\
	cogl-magazine-private.h		\
	cogl-matrix-private.h	\
	cogl-matrix-stack-private.h		\
	cogl-memory-stack-private.h		\
	cogl-node-private.h	\
	cogl-object-private.h	\
	cogl-onscreen-template-private.h 	\
	cogl-onscreen-private.h		\
	cogl-output-private.h	\
	cogl-pipeline-layer-private.h		\
	cogl-pipeline-layer-state-private.h	\
	cogl-pipeline-private.h		\
	cogl-pipeline-snippet-private.h	\
	cogl-pipeline-state-private.h		\
	cogl-pixel-buffer-private.h		\
	cogl-point-in-poly-private.h       	\
	cogl-poll-private.h	\
	cogl-primitive-private.h		\
	cogl-primitives-private.h	\
	cogl-private.h	\
	cogl-quaternion-private.h	\
	cogl-renderer-private.h		\
	cogl-sampler-cache-private.h		\
	cogl-snippet-private.h		\
	cogl-sub-texture-private.h            \
	cogl-swap-chain-private.h		\
	cogl-texture-private.h		\
	cogl-texture-rectangle-private.h      \
	cogl-texture-2d-private.h             \
	cogl-texture-2d-sliced-private.h 	\
	cogl-texture-3d-private.h             \
	$(NULL)

COGL_GL_PROTOTYPE_PRIVATE_HDRS =	\
	gl-prototypes/cogl-all-functions.h	\
	gl-prototypes/cogl-fixed-functions.h	\
	gl-prototypes/cogl-gles1-functions.h	\
	gl-prototypes/cogl-in-gles1-core-functions.h	\
	$(NULL)

# GLib-using sources
COGL_GLIB_SRCS = cogl-glib-source.c
COGL_GLIB_HDRS = cogl-glib-source.h

# Xlib-using sources
COGL_XLIB_DEPRECATED_HDRS = deprecated/cogl-clutter-xlib.h
COGL_XLIB_1_PUB_HDRS = cogl-xlib-renderer.h
COGL_XLIB_HDRS =	\
	winsys/cogl-texture-pixmap-x11.h \
	cogl-xlib.h

COGL_XLIB_SRCS =	\
	cogl-x11-renderer-private.h \
	cogl-xlib-renderer-private.h \
	cogl-xlib-renderer.c \
	cogl-xlib.c \
	cogl-xlib-private.h \
	winsys/cogl-texture-pixmap-x11.c \
	winsys/cogl-texture-pixmap-x11-private.h

COGL_X11_EGL_SRCS =	\
	winsys/cogl-winsys-egl-x11.c \
	winsys/cogl-winsys-egl-x11-private.h

# GLX-using sources
COGL_GLX_HDRS = cogl-glx.h
COGL_GLX_SRCS =	\
	cogl-glx-renderer-private.h \
	cogl-glx-display-private.h \
	winsys/cogl-winsys-glx-feature-functions.h \
	winsys/cogl-winsys-glx-private.h \
	winsys/cogl-winsys-glx.c

# WGL-using sources
COGL_WGL_HDRS = cogl-win32-renderer.h
COGL_WGL_SRCS =	\
	cogl-win32-renderer.c \
	winsys/cogl-winsys-wgl-private.h \
	winsys/cogl-winsys-wgl.c \
	winsys/cogl-winsys-wgl-feature-functions.h

# Wayland-using EGL/client/server sources
COGL_WAYLAND_SERVER_HDRS = cogl-wayland-server.h
COGL_WAYLAND_EGL_HDRS =	\
	cogl-wayland-renderer.h \
	cogl-wayland-client.h

COGL_WAYLAND_EGL_SRCS =	\
	winsys/cogl-winsys-egl-wayland.c \
	winsys/cogl-winsys-egl-wayland-private.h

# KMS-using sources
COGL_KMS_HDRS =	\
	cogl-kms-renderer.h \
	cogl-kms-display.h

COGL_KMS_SRCS = \
	winsys/cogl-winsys-egl-kms.c \
	winsys/cogl-winsys-egl-kms-private.h

# PowerVR EGL-using null sources
COGL_POWERVR_EGL_NULL_SRCS =	\
	winsys/cogl-winsys-egl-null.c \
	winsys/cogl-winsys-egl-null-private.h

# Gdl EGL-using sources
COGL_GDL_EGL_SRCS =	\
	winsys/cogl-winsys-egl-gdl.c \
	winsys/cogl-winsys-egl-gdl-private.h

# Android EGL-using sources
COGL_ANDROID_EGL_SRCS =	\
	winsys/cogl-winsys-egl-android.c \
	winsys/cogl-winsys-egl-android-private.h

# MIR EGL-using sources
COGL_MIR_EGL_HDRS = cogl-mir-renderer.h
COGL_MIR_EGL_SRCS =	\
	winsys/cogl-winsys-egl-mir.c \
	winsys/cogl-winsys-egl-mir-private.h

# Generic EGL headers
COGL_EGL_HDRS = cogl-egl.h
COGL_EGL_GEN_HDRS = cogl-egl-defines.h
COGL_EGL_SRCS =	\
	cogl-egl-private.h \
	winsys/cogl-winsys-egl.c \
	winsys/cogl-winsys-egl-feature-functions.h \
	winsys/cogl-winsys-egl-private.h

# SDL-using sources
COGL_SDL_HDRS = cogl-sdl.h
COGL_SDL_SRCS = winsys/cogl-winsys-sdl-private.h cogl-sdl.c
COGL_SDL1_SRCS = winsys/cogl-winsys-sdl.c
COGL_SDL2_SRCS = winsys/cogl-winsys-sdl2.c

# Enum (generated by glib-mkenums sources)
COGL_ENUMS_HDRS = cogl-enum-types.h
COGL_ENUMS_SRCS = cogl-enum-types.c
