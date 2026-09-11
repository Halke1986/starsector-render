package com.genir.renderer.bridge.opengl;

import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

public final class GL31 {
    public static final int GL_RED_SNORM = 36752;
    public static final int GL_RG_SNORM = 36753;
    public static final int GL_RGB_SNORM = 36754;
    public static final int GL_RGBA_SNORM = 36755;
    public static final int GL_R8_SNORM = 36756;
    public static final int GL_RG8_SNORM = 36757;
    public static final int GL_RGB8_SNORM = 36758;
    public static final int GL_RGBA8_SNORM = 36759;
    public static final int GL_R16_SNORM = 36760;
    public static final int GL_RG16_SNORM = 36761;
    public static final int GL_RGB16_SNORM = 36762;
    public static final int GL_RGBA16_SNORM = 36763;
    public static final int GL_SIGNED_NORMALIZED = 36764;
    public static final int GL_COPY_READ_BUFFER_BINDING = 36662;
    public static final int GL_COPY_WRITE_BUFFER_BINDING = 36663;
    public static final int GL_COPY_READ_BUFFER = 36662;
    public static final int GL_COPY_WRITE_BUFFER = 36663;
    public static final int GL_PRIMITIVE_RESTART = 36765;
    public static final int GL_PRIMITIVE_RESTART_INDEX = 36766;
    public static final int GL_TEXTURE_BUFFER = 35882;
    public static final int GL_MAX_TEXTURE_BUFFER_SIZE = 35883;
    public static final int GL_TEXTURE_BINDING_BUFFER = 35884;
    public static final int GL_TEXTURE_BUFFER_DATA_STORE_BINDING = 35885;
    public static final int GL_TEXTURE_BUFFER_FORMAT = 35886;
    public static final int GL_TEXTURE_RECTANGLE = 34037;
    public static final int GL_TEXTURE_BINDING_RECTANGLE = 34038;
    public static final int GL_PROXY_TEXTURE_RECTANGLE = 34039;
    public static final int GL_MAX_RECTANGLE_TEXTURE_SIZE = 34040;
    public static final int GL_SAMPLER_2D_RECT = 35683;
    public static final int GL_SAMPLER_2D_RECT_SHADOW = 35684;
    public static final int GL_UNIFORM_BUFFER = 35345;
    public static final int GL_UNIFORM_BUFFER_BINDING = 35368;
    public static final int GL_UNIFORM_BUFFER_START = 35369;
    public static final int GL_UNIFORM_BUFFER_SIZE = 35370;
    public static final int GL_MAX_VERTEX_UNIFORM_BLOCKS = 35371;
    public static final int GL_MAX_GEOMETRY_UNIFORM_BLOCKS = 35372;
    public static final int GL_MAX_FRAGMENT_UNIFORM_BLOCKS = 35373;
    public static final int GL_MAX_COMBINED_UNIFORM_BLOCKS = 35374;
    public static final int GL_MAX_UNIFORM_BUFFER_BINDINGS = 35375;
    public static final int GL_MAX_UNIFORM_BLOCK_SIZE = 35376;
    public static final int GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 35377;
    public static final int GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = 35378;
    public static final int GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 35379;
    public static final int GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT = 35380;
    public static final int GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = 35381;
    public static final int GL_ACTIVE_UNIFORM_BLOCKS = 35382;
    public static final int GL_UNIFORM_TYPE = 35383;
    public static final int GL_UNIFORM_SIZE = 35384;
    public static final int GL_UNIFORM_NAME_LENGTH = 35385;
    public static final int GL_UNIFORM_BLOCK_INDEX = 35386;
    public static final int GL_UNIFORM_OFFSET = 35387;
    public static final int GL_UNIFORM_ARRAY_STRIDE = 35388;
    public static final int GL_UNIFORM_MATRIX_STRIDE = 35389;
    public static final int GL_UNIFORM_IS_ROW_MAJOR = 35390;
    public static final int GL_UNIFORM_BLOCK_BINDING = 35391;
    public static final int GL_UNIFORM_BLOCK_DATA_SIZE = 35392;
    public static final int GL_UNIFORM_BLOCK_NAME_LENGTH = 35393;
    public static final int GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS = 35394;
    public static final int GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 35395;
    public static final int GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 35396;
    public static final int GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = 35397;
    public static final int GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 35398;
    public static final int GL_INVALID_INDEX = -1;

    public static void glDrawArraysInstanced(int mode, int first, int count, int primcount) {
        com.genir.renderer.bridge.commands.GL31.glDrawArraysInstanced(mode, first, count, primcount);
    }

    public static void glDrawElementsInstanced(int mode, ByteBuffer indices, int primcount) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstanced(int mode, IntBuffer indices, int primcount) {
        com.genir.renderer.bridge.commands.GL31.glDrawElementsInstanced(mode, indices, primcount);
    }

    public static void glDrawElementsInstanced(int mode, ShortBuffer indices, int primcount) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstanced(int mode, int indices_count, int type, long indices_buffer_offset, int primcount) {
        com.genir.renderer.bridge.commands.GL31.glDrawElementsInstanced(mode, indices_count, type, indices_buffer_offset, primcount);
    }

    public static void glCopyBufferSubData(int readtarget, int writetarget, long readoffset, long writeoffset, long size) {
        com.genir.renderer.bridge.commands.GL31.glCopyBufferSubData(readtarget, writetarget, readoffset, writeoffset, size);
    }

    public static void glPrimitiveRestartIndex(int index) {
        throw new UnsupportedOperationException();
    }

    public static void glTexBuffer(int target, int internalformat, int buffer) {
        com.genir.renderer.bridge.commands.GL31.glTexBuffer(target, internalformat, buffer);
    }

    public static void glGetUniformIndices(int program, ByteBuffer uniformNames, IntBuffer uniformIndices) {
        throw new UnsupportedOperationException();
    }

    public static void glGetUniformIndices(int program, CharSequence[] uniformNames, IntBuffer uniformIndices) {
        throw new UnsupportedOperationException();
    }

    public static void glGetActiveUniforms(int program, IntBuffer uniformIndices, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetActiveUniforms(int program, int uniformIndex, int pname) {
        return glGetActiveUniformsi(program, uniformIndex, pname);
    }

    public static int glGetActiveUniformsi(int program, int uniformIndex, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetActiveUniformName(int program, int uniformIndex, IntBuffer length, ByteBuffer uniformName) {
        throw new UnsupportedOperationException();
    }

    public static String glGetActiveUniformName(int program, int uniformIndex, int bufSize) {
        throw new UnsupportedOperationException();
    }

    public static int glGetUniformBlockIndex(int program, ByteBuffer uniformBlockName) {
        throw new UnsupportedOperationException();
    }

    public static int glGetUniformBlockIndex(int program, CharSequence uniformBlockName) {
        return com.genir.renderer.bridge.commands.GL31.glGetUniformBlockIndex(program, uniformBlockName);
    }

    public static void glGetActiveUniformBlock(int program, int uniformBlockIndex, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetActiveUniformBlock(int program, int uniformBlockIndex, int pname) {
        return glGetActiveUniformBlocki(program, uniformBlockIndex, pname);
    }

    public static int glGetActiveUniformBlocki(int program, int uniformBlockIndex, int pname) {
        return com.genir.renderer.bridge.commands.GL31.glGetActiveUniformBlocki(program, uniformBlockIndex, pname);
    }

    public static void glGetActiveUniformBlockName(int program, int uniformBlockIndex, IntBuffer length, ByteBuffer uniformBlockName) {
        throw new UnsupportedOperationException();
    }

    public static String glGetActiveUniformBlockName(int program, int uniformBlockIndex, int bufSize) {
        throw new UnsupportedOperationException();
    }

    public static void glUniformBlockBinding(int program, int uniformBlockIndex, int uniformBlockBinding) {
        com.genir.renderer.bridge.commands.GL31.glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding);
    }
}
