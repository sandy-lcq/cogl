# Sources for conformance tests

common_sources = \
	test-conform-main.c \
	$(NULL)

unported_test_sources = \
	test-fixed.c \
	test-materials.c \
	test-viewport.c \
	test-multitexture.c \
	test-npot-texture.c \
	test-object.c \
	test-readpixels.c \
	test-texture-mipmaps.c \
	test-texture-pixmap-x11.c \
	test-texture-rectangle.c \
	test-vertex-buffer-contiguous.c \
	test-vertex-buffer-interleved.c \
	test-vertex-buffer-mutability.c \
	$(NULL)

base_test_srcs =	\
	test-atlas-migration.c \
	test-blend-strings.c \
	test-blend.c \
	test-depth-test.c \
	test-color-hsl.c \
	test-color-mask.c \
	test-backface-culling.c \
	test-just-vertex-shader.c \
	test-pipeline-user-matrix.c \
	test-pipeline-uniforms.c \
	test-pixel-buffer.c \
	test-premult.c \
	test-snippets.c \
	test-wrap-modes.c \
	test-sub-texture.c \
	test-custom-attributes.c \
	test-offscreen.c \
	test-primitive.c \
	test-texture-3d.c \
	test-sparse-pipeline.c \
	test-read-texture-formats.c \
	test-write-texture-formats.c \
	test-point-size.c \
	test-point-size-attribute.c \
	test-point-sprite.c \
	test-no-gl-header.c \
	test-version.c \
	test-gles2-context.c \
	test-euler-quaternion.c \
	test-layer-remove.c \
	test-alpha-test.c \
	test-map-buffer-range.c \
	test-npot-texture.c \
	test-alpha-textures.c \
	test-wrap-rectangle-textures.c \
	test-texture-get-set-data.c \
	test-framebuffer-get-bits.c \
	test-primitive-and-journal.c \
	test-copy-replace-texture.c \
	test-pipeline-cache-unrefs-texture.c \
	test-texture-no-allocate.c \
	test-pipeline-shader-state.c \
	test-texture-rg.c \
	$(NULL)

test_srcs_no_emscripten = test-fence.c
test_srcs_path = test-path.c test-path-clip.c