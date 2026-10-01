package com.genir.renderer.bridge.opengl;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;

public final class GL33 {
    public static void glBindFragDataLocationIndexed(int program, int colorNumber, int index, ByteBuffer name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glBindFragDataLocationIndexed(int, int, int, ByteBuffer)");
    }

    public static void glBindFragDataLocationIndexed(int program, int colorNumber, int index, CharSequence name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glBindFragDataLocationIndexed(int, int, int, CharSequence)");
    }

    public static int glGetFragDataIndex(int program, ByteBuffer name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetFragDataIndex(int, ByteBuffer)");
    }

    public static int glGetFragDataIndex(int program, CharSequence name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetFragDataIndex(int, CharSequence)");
    }

    public static void glGenSamplers(IntBuffer samplers) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGenSamplers(IntBuffer)");
    }

    public static int glGenSamplers() {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGenSamplers()");
    }

    public static void glDeleteSamplers(IntBuffer samplers) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glDeleteSamplers(IntBuffer)");
    }

    public static void glDeleteSamplers(int sampler) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glDeleteSamplers(int)");
    }

    public static boolean glIsSampler(int sampler) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glIsSampler(int)");
    }

    public static void glBindSampler(int unit, int sampler) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glBindSampler(int, int)");
    }

    public static void glSamplerParameteri(int sampler, int pname, int param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSamplerParameteri(int, int, int)");
    }

    public static void glSamplerParameterf(int sampler, int pname, float param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSamplerParameterf(int, int, float)");
    }

    public static void glSamplerParameter(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSamplerParameter(int, int, IntBuffer)");
    }

    public static void glSamplerParameter(int sampler, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSamplerParameter(int, int, FloatBuffer)");
    }

    public static void glSamplerParameterI(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSamplerParameterI(int, int, IntBuffer)");
    }

    public static void glSamplerParameterIu(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSamplerParameterIu(int, int, IntBuffer)");
    }

    public static void glGetSamplerParameter(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameter(int, int, IntBuffer)");
    }

    public static int glGetSamplerParameteri(int sampler, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameteri(int, int)");
    }

    public static void glGetSamplerParameter(int sampler, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameter(int, int, FloatBuffer)");
    }

    public static float glGetSamplerParameterf(int sampler, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameterf(int, int)");
    }

    public static void glGetSamplerParameterI(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameterI(int, int, IntBuffer)");
    }

    public static int glGetSamplerParameterIi(int sampler, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameterIi(int, int)");
    }

    public static void glGetSamplerParameterIu(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameterIu(int, int, IntBuffer)");
    }

    public static int glGetSamplerParameterIui(int sampler, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameterIui(int, int)");
    }

    public static void glQueryCounter(int id, int target) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glQueryCounter(int, int)");
    }

    public static void glGetQueryObject(int id, int pname, LongBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetQueryObject(int, int, LongBuffer)");
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static long glGetQueryObject(int id, int pname) {
        return glGetQueryObjecti64(id, pname);
    }

    public static long glGetQueryObjecti64(int id, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetQueryObjecti64(int, int)");
    }

    public static void glGetQueryObjectu(int id, int pname, LongBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetQueryObjectu(int, int, LongBuffer)");
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static long glGetQueryObjectu(int id, int pname) {
        return glGetQueryObjectui64(id, pname);
    }

    public static long glGetQueryObjectui64(int id, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetQueryObjectui64(int, int)");
    }

    public static void glVertexAttribDivisor(int index, int divisor) {
        com.genir.renderer.bridge.commands.GL33.glVertexAttribDivisor(index, divisor);
    }

    public static void glVertexP2ui(int type, int value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexP2ui(int, int)");
    }

    public static void glVertexP3ui(int type, int value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexP3ui(int, int)");
    }

    public static void glVertexP4ui(int type, int value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexP4ui(int, int)");
    }

    public static void glVertexP2u(int type, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexP2u(int, IntBuffer)");
    }

    public static void glVertexP3u(int type, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexP3u(int, IntBuffer)");
    }

    public static void glVertexP4u(int type, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexP4u(int, IntBuffer)");
    }

    public static void glTexCoordP1ui(int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP1ui(int, int)");
    }

    public static void glTexCoordP2ui(int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP2ui(int, int)");
    }

    public static void glTexCoordP3ui(int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP3ui(int, int)");
    }

    public static void glTexCoordP4ui(int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP4ui(int, int)");
    }

    public static void glTexCoordP1u(int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP1u(int, IntBuffer)");
    }

    public static void glTexCoordP2u(int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP2u(int, IntBuffer)");
    }

    public static void glTexCoordP3u(int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP3u(int, IntBuffer)");
    }

    public static void glTexCoordP4u(int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP4u(int, IntBuffer)");
    }

    public static void glMultiTexCoordP1ui(int texture, int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP1ui(int, int, int)");
    }

    public static void glMultiTexCoordP2ui(int texture, int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP2ui(int, int, int)");
    }

    public static void glMultiTexCoordP3ui(int texture, int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP3ui(int, int, int)");
    }

    public static void glMultiTexCoordP4ui(int texture, int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP4ui(int, int, int)");
    }

    public static void glMultiTexCoordP1u(int texture, int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP1u(int, int, IntBuffer)");
    }

    public static void glMultiTexCoordP2u(int texture, int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP2u(int, int, IntBuffer)");
    }

    public static void glMultiTexCoordP3u(int texture, int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP3u(int, int, IntBuffer)");
    }

    public static void glMultiTexCoordP4u(int texture, int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP4u(int, int, IntBuffer)");
    }

    public static void glNormalP3ui(int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glNormalP3ui(int, int)");
    }

    public static void glNormalP3u(int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glNormalP3u(int, IntBuffer)");
    }

    public static void glColorP3ui(int type, int color) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glColorP3ui(int, int)");
    }

    public static void glColorP4ui(int type, int color) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glColorP4ui(int, int)");
    }

    public static void glColorP3u(int type, IntBuffer color) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glColorP3u(int, IntBuffer)");
    }

    public static void glColorP4u(int type, IntBuffer color) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glColorP4u(int, IntBuffer)");
    }

    public static void glSecondaryColorP3ui(int type, int color) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSecondaryColorP3ui(int, int)");
    }

    public static void glSecondaryColorP3u(int type, IntBuffer color) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSecondaryColorP3u(int, IntBuffer)");
    }

    public static void glVertexAttribP1ui(int index, int type, boolean normalized, int value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP1ui(int, int, boolean, int)");
    }

    public static void glVertexAttribP2ui(int index, int type, boolean normalized, int value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP2ui(int, int, boolean, int)");
    }

    public static void glVertexAttribP3ui(int index, int type, boolean normalized, int value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP3ui(int, int, boolean, int)");
    }

    public static void glVertexAttribP4ui(int index, int type, boolean normalized, int value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP4ui(int, int, boolean, int)");
    }

    public static void glVertexAttribP1u(int index, int type, boolean normalized, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP1u(int, int, boolean, IntBuffer)");
    }

    public static void glVertexAttribP2u(int index, int type, boolean normalized, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP2u(int, int, boolean, IntBuffer)");
    }

    public static void glVertexAttribP3u(int index, int type, boolean normalized, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP3u(int, int, boolean, IntBuffer)");
    }

    public static void glVertexAttribP4u(int index, int type, boolean normalized, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP4u(int, int, boolean, IntBuffer)");
    }
}
