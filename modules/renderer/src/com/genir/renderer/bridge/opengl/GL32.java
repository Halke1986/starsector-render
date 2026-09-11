package com.genir.renderer.bridge.opengl;

import com.genir.renderer.bridge.commands.GLSync;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;

public final class GL32 {
    public static final int GL_CONTEXT_PROFILE_MASK = 37158;
    public static final int GL_CONTEXT_CORE_PROFILE_BIT = 1;
    public static final int GL_CONTEXT_COMPATIBILITY_PROFILE_BIT = 2;
    public static final int GL_MAX_VERTEX_OUTPUT_COMPONENTS = 37154;
    public static final int GL_MAX_GEOMETRY_INPUT_COMPONENTS = 37155;
    public static final int GL_MAX_GEOMETRY_OUTPUT_COMPONENTS = 37156;
    public static final int GL_MAX_FRAGMENT_INPUT_COMPONENTS = 37157;
    public static final int GL_FIRST_VERTEX_CONVENTION = 36429;
    public static final int GL_LAST_VERTEX_CONVENTION = 36430;
    public static final int GL_PROVOKING_VERTEX = 36431;
    public static final int GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION = 36428;
    public static final int GL_TEXTURE_CUBE_MAP_SEAMLESS = 34895;
    public static final int GL_SAMPLE_POSITION = 36432;
    public static final int GL_SAMPLE_MASK = 36433;
    public static final int GL_SAMPLE_MASK_VALUE = 36434;
    public static final int GL_TEXTURE_2D_MULTISAMPLE = 37120;
    public static final int GL_PROXY_TEXTURE_2D_MULTISAMPLE = 37121;
    public static final int GL_TEXTURE_2D_MULTISAMPLE_ARRAY = 37122;
    public static final int GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = 37123;
    public static final int GL_MAX_SAMPLE_MASK_WORDS = 36441;
    public static final int GL_MAX_COLOR_TEXTURE_SAMPLES = 37134;
    public static final int GL_MAX_DEPTH_TEXTURE_SAMPLES = 37135;
    public static final int GL_MAX_INTEGER_SAMPLES = 37136;
    public static final int GL_TEXTURE_BINDING_2D_MULTISAMPLE = 37124;
    public static final int GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = 37125;
    public static final int GL_TEXTURE_SAMPLES = 37126;
    public static final int GL_TEXTURE_FIXED_SAMPLE_LOCATIONS = 37127;
    public static final int GL_SAMPLER_2D_MULTISAMPLE = 37128;
    public static final int GL_INT_SAMPLER_2D_MULTISAMPLE = 37129;
    public static final int GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = 37130;
    public static final int GL_SAMPLER_2D_MULTISAMPLE_ARRAY = 37131;
    public static final int GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 37132;
    public static final int GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 37133;
    public static final int GL_DEPTH_CLAMP = 34383;
    public static final int GL_GEOMETRY_SHADER = 36313;
    public static final int GL_GEOMETRY_VERTICES_OUT = 36314;
    public static final int GL_GEOMETRY_INPUT_TYPE = 36315;
    public static final int GL_GEOMETRY_OUTPUT_TYPE = 36316;
    public static final int GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = 35881;
    public static final int GL_MAX_GEOMETRY_UNIFORM_COMPONENTS = 36319;
    public static final int GL_MAX_GEOMETRY_OUTPUT_VERTICES = 36320;
    public static final int GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = 36321;
    public static final int GL_LINES_ADJACENCY = 10;
    public static final int GL_LINE_STRIP_ADJACENCY = 11;
    public static final int GL_TRIANGLES_ADJACENCY = 12;
    public static final int GL_TRIANGLE_STRIP_ADJACENCY = 13;
    public static final int GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = 36264;
    public static final int GL_FRAMEBUFFER_ATTACHMENT_LAYERED = 36263;
    public static final int GL_PROGRAM_POINT_SIZE = 34370;
    public static final int GL_MAX_SERVER_WAIT_TIMEOUT = 37137;
    public static final int GL_OBJECT_TYPE = 37138;
    public static final int GL_SYNC_CONDITION = 37139;
    public static final int GL_SYNC_STATUS = 37140;
    public static final int GL_SYNC_FLAGS = 37141;
    public static final int GL_SYNC_FENCE = 37142;
    public static final int GL_SYNC_GPU_COMMANDS_COMPLETE = 37143;
    public static final int GL_UNSIGNALED = 37144;
    public static final int GL_SIGNALED = 37145;
    public static final int GL_SYNC_FLUSH_COMMANDS_BIT = 1;
    public static final long GL_TIMEOUT_IGNORED = -1L;
    public static final int GL_ALREADY_SIGNALED = 37146;
    public static final int GL_TIMEOUT_EXPIRED = 37147;
    public static final int GL_CONDITION_SATISFIED = 37148;
    public static final int GL_WAIT_FAILED = 37149;

    public static void glGetBufferParameter(int target, int pname, LongBuffer params) {
        throw new UnsupportedOperationException();
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static long glGetBufferParameter(int target, int pname) {
        return glGetBufferParameteri64(target, pname);
    }

    public static long glGetBufferParameteri64(int target, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsBaseVertex(int mode, ByteBuffer indices, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsBaseVertex(int mode, IntBuffer indices, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsBaseVertex(int mode, ShortBuffer indices, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsBaseVertex(int mode, int indices_count, int type, long indices_buffer_offset, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawRangeElementsBaseVertex(int mode, int start, int end, ByteBuffer indices, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawRangeElementsBaseVertex(int mode, int start, int end, IntBuffer indices, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawRangeElementsBaseVertex(int mode, int start, int end, ShortBuffer indices, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawRangeElementsBaseVertex(int mode, int start, int end, int indices_count, int type, long indices_buffer_offset, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseVertex(int mode, ByteBuffer indices, int primcount, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseVertex(int mode, IntBuffer indices, int primcount, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseVertex(int mode, ShortBuffer indices, int primcount, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseVertex(int mode, int indices_count, int type, long indices_buffer_offset, int primcount, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glProvokingVertex(int mode) {
        throw new UnsupportedOperationException();
    }

    public static void glTexImage2DMultisample(int target, int samples, int internalformat, int width, int height, boolean fixedsamplelocations) {
        throw new UnsupportedOperationException();
    }

    public static void glTexImage3DMultisample(int target, int samples, int internalformat, int width, int height, int depth, boolean fixedsamplelocations) {
        throw new UnsupportedOperationException();
    }

    public static void glGetMultisample(int pname, int index, FloatBuffer val) {
        throw new UnsupportedOperationException();
    }

    public static void glSampleMaski(int index, int mask) {
        throw new UnsupportedOperationException();
    }

    public static void glFramebufferTexture(int target, int attachment, int texture, int level) {
        throw new UnsupportedOperationException();
    }

    public static GLSync glFenceSync(int condition, int flags) {
        return com.genir.renderer.bridge.commands.GL32.glFenceSync(condition, flags);
    }

    public static boolean glIsSync(GLSync sync) {
        throw new UnsupportedOperationException();
    }

    public static void glDeleteSync(GLSync sync) {
        com.genir.renderer.bridge.commands.GL32.glDeleteSync(sync);
    }

    public static int glClientWaitSync(GLSync sync, int flags, long timeout) {
        throw new UnsupportedOperationException();
    }

    public static void glWaitSync(GLSync sync, int flags, long timeout) {
        com.genir.renderer.bridge.commands.GL32.glWaitSync(sync, flags, timeout);
    }

    public static void glGetInteger64(int pname, LongBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static long glGetInteger64(int pname) {
        return com.genir.renderer.bridge.commands.GL32.glGetInteger64(pname);
    }

    public static void glGetInteger64(int value, int index, LongBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static long glGetInteger64(int value, int index) {
        return com.genir.renderer.bridge.commands.GL32.glGetInteger64(value, index);
    }

    public static void glGetSync(com.genir.renderer.bridge.commands.GLSync sync, int pname, IntBuffer length, IntBuffer values) {
        throw new UnsupportedOperationException();
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetSync(GLSync sync, int pname) {
        return glGetSynci(sync, pname);
    }

    public static int glGetSynci(GLSync sync, int pname) {
        throw new UnsupportedOperationException();
    }
}
