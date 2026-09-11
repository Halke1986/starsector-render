package com.genir.renderer.bridge.opengl;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;

public final class GL33 {
    public static final int GL_SRC1_COLOR = 35065;
    public static final int GL_ONE_MINUS_SRC1_COLOR = 35066;
    public static final int GL_ONE_MINUS_SRC1_ALPHA = 35067;
    public static final int GL_MAX_DUAL_SOURCE_DRAW_BUFFERS = 35068;
    public static final int GL_ANY_SAMPLES_PASSED = 35887;
    public static final int GL_SAMPLER_BINDING = 35097;
    public static final int GL_RGB10_A2UI = 36975;
    public static final int GL_TEXTURE_SWIZZLE_R = 36418;
    public static final int GL_TEXTURE_SWIZZLE_G = 36419;
    public static final int GL_TEXTURE_SWIZZLE_B = 36420;
    public static final int GL_TEXTURE_SWIZZLE_A = 36421;
    public static final int GL_TEXTURE_SWIZZLE_RGBA = 36422;
    public static final int GL_TIME_ELAPSED = 35007;
    public static final int GL_TIMESTAMP = 36392;
    public static final int GL_VERTEX_ATTRIB_ARRAY_DIVISOR = 35070;
    public static final int GL_INT_2_10_10_10_REV = 36255;

    public static void glBindFragDataLocationIndexed(int program, int colorNumber, int index, ByteBuffer name) {
        throw new UnsupportedOperationException();
    }

    public static void glBindFragDataLocationIndexed(int program, int colorNumber, int index, CharSequence name) {
        throw new UnsupportedOperationException();
    }

    public static int glGetFragDataIndex(int program, ByteBuffer name) {
        throw new UnsupportedOperationException();
    }

    public static int glGetFragDataIndex(int program, CharSequence name) {
        throw new UnsupportedOperationException();
    }

    public static void glGenSamplers(IntBuffer samplers) {
        throw new UnsupportedOperationException();
    }

    public static int glGenSamplers() {
        throw new UnsupportedOperationException();
    }

    public static void glDeleteSamplers(IntBuffer samplers) {
        throw new UnsupportedOperationException();
    }

    public static void glDeleteSamplers(int sampler) {
        throw new UnsupportedOperationException();
    }

    public static boolean glIsSampler(int sampler) {
        throw new UnsupportedOperationException();
    }

    public static void glBindSampler(int unit, int sampler) {
        throw new UnsupportedOperationException();
    }

    public static void glSamplerParameteri(int sampler, int pname, int param) {
        throw new UnsupportedOperationException();
    }

    public static void glSamplerParameterf(int sampler, int pname, float param) {
        throw new UnsupportedOperationException();
    }

    public static void glSamplerParameter(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glSamplerParameter(int sampler, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glSamplerParameterI(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glSamplerParameterIu(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glGetSamplerParameter(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetSamplerParameteri(int sampler, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetSamplerParameter(int sampler, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static float glGetSamplerParameterf(int sampler, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetSamplerParameterI(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetSamplerParameterIi(int sampler, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetSamplerParameterIu(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetSamplerParameterIui(int sampler, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glQueryCounter(int id, int target) {
        throw new UnsupportedOperationException();
    }

    public static void glGetQueryObject(int id, int pname, LongBuffer params) {
        throw new UnsupportedOperationException();
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static long glGetQueryObject(int id, int pname) {
        return glGetQueryObjecti64(id, pname);
    }

    public static long glGetQueryObjecti64(int id, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetQueryObjectu(int id, int pname, LongBuffer params) {
        throw new UnsupportedOperationException();
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static long glGetQueryObjectu(int id, int pname) {
        return glGetQueryObjectui64(id, pname);
    }

    public static long glGetQueryObjectui64(int id, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribDivisor(int index, int divisor) {
        com.genir.renderer.bridge.commands.GL33.glVertexAttribDivisor(index, divisor);
    }

    public static void glVertexP2ui(int type, int value) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexP3ui(int type, int value) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexP4ui(int type, int value) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexP2u(int type, IntBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexP3u(int type, IntBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexP4u(int type, IntBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoordP1ui(int type, int coords) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoordP2ui(int type, int coords) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoordP3ui(int type, int coords) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoordP4ui(int type, int coords) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoordP1u(int type, IntBuffer coords) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoordP2u(int type, IntBuffer coords) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoordP3u(int type, IntBuffer coords) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoordP4u(int type, IntBuffer coords) {
        throw new UnsupportedOperationException();
    }

    public static void glMultiTexCoordP1ui(int texture, int type, int coords) {
        throw new UnsupportedOperationException();
    }

    public static void glMultiTexCoordP2ui(int texture, int type, int coords) {
        throw new UnsupportedOperationException();
    }

    public static void glMultiTexCoordP3ui(int texture, int type, int coords) {
        throw new UnsupportedOperationException();
    }

    public static void glMultiTexCoordP4ui(int texture, int type, int coords) {
        throw new UnsupportedOperationException();
    }

    public static void glMultiTexCoordP1u(int texture, int type, IntBuffer coords) {
        throw new UnsupportedOperationException();
    }

    public static void glMultiTexCoordP2u(int texture, int type, IntBuffer coords) {
        throw new UnsupportedOperationException();
    }

    public static void glMultiTexCoordP3u(int texture, int type, IntBuffer coords) {
        throw new UnsupportedOperationException();
    }

    public static void glMultiTexCoordP4u(int texture, int type, IntBuffer coords) {
        throw new UnsupportedOperationException();
    }

    public static void glNormalP3ui(int type, int coords) {
        throw new UnsupportedOperationException();
    }

    public static void glNormalP3u(int type, IntBuffer coords) {
        throw new UnsupportedOperationException();
    }

    public static void glColorP3ui(int type, int color) {
        throw new UnsupportedOperationException();
    }

    public static void glColorP4ui(int type, int color) {
        throw new UnsupportedOperationException();
    }

    public static void glColorP3u(int type, IntBuffer color) {
        throw new UnsupportedOperationException();
    }

    public static void glColorP4u(int type, IntBuffer color) {
        throw new UnsupportedOperationException();
    }

    public static void glSecondaryColorP3ui(int type, int color) {
        throw new UnsupportedOperationException();
    }

    public static void glSecondaryColorP3u(int type, IntBuffer color) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribP1ui(int index, int type, boolean normalized, int value) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribP2ui(int index, int type, boolean normalized, int value) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribP3ui(int index, int type, boolean normalized, int value) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribP4ui(int index, int type, boolean normalized, int value) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribP1u(int index, int type, boolean normalized, IntBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribP2u(int index, int type, boolean normalized, IntBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribP3u(int index, int type, boolean normalized, IntBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribP4u(int index, int type, boolean normalized, IntBuffer value) {
        throw new UnsupportedOperationException();
    }
}
