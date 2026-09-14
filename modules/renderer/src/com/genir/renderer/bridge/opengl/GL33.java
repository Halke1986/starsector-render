package com.genir.renderer.bridge.opengl;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;

public final class GL33 {
    public static void glBindFragDataLocationIndexed(int program, int colorNumber, int index, ByteBuffer name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glBindFragDataLocationIndexed");
    }

    public static void glBindFragDataLocationIndexed(int program, int colorNumber, int index, CharSequence name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glBindFragDataLocationIndexed");
    }

    public static int glGetFragDataIndex(int program, ByteBuffer name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetFragDataIndex");
    }

    public static int glGetFragDataIndex(int program, CharSequence name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetFragDataIndex");
    }

    public static void glGenSamplers(IntBuffer samplers) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGenSamplers");
    }

    public static int glGenSamplers() {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGenSamplers");
    }

    public static void glDeleteSamplers(IntBuffer samplers) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glDeleteSamplers");
    }

    public static void glDeleteSamplers(int sampler) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glDeleteSamplers");
    }

    public static boolean glIsSampler(int sampler) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glIsSampler");
    }

    public static void glBindSampler(int unit, int sampler) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glBindSampler");
    }

    public static void glSamplerParameteri(int sampler, int pname, int param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSamplerParameteri");
    }

    public static void glSamplerParameterf(int sampler, int pname, float param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSamplerParameterf");
    }

    public static void glSamplerParameter(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSamplerParameter");
    }

    public static void glSamplerParameter(int sampler, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSamplerParameter");
    }

    public static void glSamplerParameterI(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSamplerParameterI");
    }

    public static void glSamplerParameterIu(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSamplerParameterIu");
    }

    public static void glGetSamplerParameter(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameter");
    }

    public static int glGetSamplerParameteri(int sampler, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameteri");
    }

    public static void glGetSamplerParameter(int sampler, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameter");
    }

    public static float glGetSamplerParameterf(int sampler, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameterf");
    }

    public static void glGetSamplerParameterI(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameterI");
    }

    public static int glGetSamplerParameterIi(int sampler, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameterIi");
    }

    public static void glGetSamplerParameterIu(int sampler, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameterIu");
    }

    public static int glGetSamplerParameterIui(int sampler, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetSamplerParameterIui");
    }

    public static void glQueryCounter(int id, int target) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glQueryCounter");
    }

    public static void glGetQueryObject(int id, int pname, LongBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetQueryObject");
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static long glGetQueryObject(int id, int pname) {
        return glGetQueryObjecti64(id, pname);
    }

    public static long glGetQueryObjecti64(int id, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetQueryObjecti64");
    }

    public static void glGetQueryObjectu(int id, int pname, LongBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetQueryObjectu");
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static long glGetQueryObjectu(int id, int pname) {
        return glGetQueryObjectui64(id, pname);
    }

    public static long glGetQueryObjectui64(int id, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glGetQueryObjectui64");
    }

    public static void glVertexAttribDivisor(int index, int divisor) {
        com.genir.renderer.bridge.commands.GL33.glVertexAttribDivisor(index, divisor);
    }

    public static void glVertexP2ui(int type, int value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexP2ui");
    }

    public static void glVertexP3ui(int type, int value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexP3ui");
    }

    public static void glVertexP4ui(int type, int value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexP4ui");
    }

    public static void glVertexP2u(int type, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexP2u");
    }

    public static void glVertexP3u(int type, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexP3u");
    }

    public static void glVertexP4u(int type, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexP4u");
    }

    public static void glTexCoordP1ui(int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP1ui");
    }

    public static void glTexCoordP2ui(int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP2ui");
    }

    public static void glTexCoordP3ui(int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP3ui");
    }

    public static void glTexCoordP4ui(int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP4ui");
    }

    public static void glTexCoordP1u(int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP1u");
    }

    public static void glTexCoordP2u(int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP2u");
    }

    public static void glTexCoordP3u(int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP3u");
    }

    public static void glTexCoordP4u(int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glTexCoordP4u");
    }

    public static void glMultiTexCoordP1ui(int texture, int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP1ui");
    }

    public static void glMultiTexCoordP2ui(int texture, int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP2ui");
    }

    public static void glMultiTexCoordP3ui(int texture, int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP3ui");
    }

    public static void glMultiTexCoordP4ui(int texture, int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP4ui");
    }

    public static void glMultiTexCoordP1u(int texture, int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP1u");
    }

    public static void glMultiTexCoordP2u(int texture, int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP2u");
    }

    public static void glMultiTexCoordP3u(int texture, int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP3u");
    }

    public static void glMultiTexCoordP4u(int texture, int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glMultiTexCoordP4u");
    }

    public static void glNormalP3ui(int type, int coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glNormalP3ui");
    }

    public static void glNormalP3u(int type, IntBuffer coords) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glNormalP3u");
    }

    public static void glColorP3ui(int type, int color) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glColorP3ui");
    }

    public static void glColorP4ui(int type, int color) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glColorP4ui");
    }

    public static void glColorP3u(int type, IntBuffer color) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glColorP3u");
    }

    public static void glColorP4u(int type, IntBuffer color) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glColorP4u");
    }

    public static void glSecondaryColorP3ui(int type, int color) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSecondaryColorP3ui");
    }

    public static void glSecondaryColorP3u(int type, IntBuffer color) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glSecondaryColorP3u");
    }

    public static void glVertexAttribP1ui(int index, int type, boolean normalized, int value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP1ui");
    }

    public static void glVertexAttribP2ui(int index, int type, boolean normalized, int value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP2ui");
    }

    public static void glVertexAttribP3ui(int index, int type, boolean normalized, int value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP3ui");
    }

    public static void glVertexAttribP4ui(int index, int type, boolean normalized, int value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP4ui");
    }

    public static void glVertexAttribP1u(int index, int type, boolean normalized, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP1u");
    }

    public static void glVertexAttribP2u(int index, int type, boolean normalized, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP2u");
    }

    public static void glVertexAttribP3u(int index, int type, boolean normalized, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP3u");
    }

    public static void glVertexAttribP4u(int index, int type, boolean normalized, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL33.glVertexAttribP4u");
    }
}
