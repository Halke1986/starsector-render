package com.genir.renderer.bridge.opengl;

import org.lwjgl.PointerWrapper;
import org.lwjgl.opengl.KHRDebugCallback;

import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;

public final class GL43 {
    public static void glClearBufferData(int target, int internalformat, int format, int type, ByteBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glClearBufferData");
    }

    public static void glClearBufferSubData(int target, int internalformat, long offset, long size, int format, int type, ByteBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glClearBufferSubData");
    }

    public static void glDispatchCompute(int num_groups_x, int num_groups_y, int num_groups_z) {
        com.genir.renderer.bridge.commands.GL43.glDispatchCompute(num_groups_x, num_groups_y, num_groups_z);
    }

    public static void glDispatchComputeIndirect(long indirect) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glDispatchComputeIndirect");
    }

    public static void glCopyImageSubData(int srcName, int srcTarget, int srcLevel, int srcX, int srcY, int srcZ, int dstName, int dstTarget, int dstLevel, int dstX, int dstY, int dstZ, int srcWidth, int srcHeight, int srcDepth) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glCopyImageSubData");
    }

    public static void glDebugMessageControl(int source, int type, int severity, IntBuffer ids, boolean enabled) {
        com.genir.renderer.bridge.commands.GL43.glDebugMessageControl(source, type, severity, ids, enabled);
    }

    public static void glDebugMessageInsert(int source, int type, int id, int severity, ByteBuffer buf) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glDebugMessageInsert");
    }

    public static void glDebugMessageInsert(int source, int type, int id, int severity, CharSequence buf) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glDebugMessageInsert");
    }

    public static void glDebugMessageCallback(KHRDebugCallback callback) {
        com.genir.renderer.bridge.commands.GL43.glDebugMessageCallback(callback);
    }

    public static int glGetDebugMessageLog(int count, IntBuffer sources, IntBuffer types, IntBuffer ids, IntBuffer severities, IntBuffer lengths, ByteBuffer messageLog) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetDebugMessageLog");
    }

    public static void glPushDebugGroup(int source, int id, ByteBuffer message) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glPushDebugGroup");
    }

    public static void glPushDebugGroup(int source, int id, CharSequence message) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glPushDebugGroup");
    }

    public static void glPopDebugGroup() {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glPopDebugGroup");
    }

    public static void glObjectLabel(int identifier, int name, ByteBuffer label) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glObjectLabel");
    }

    public static void glObjectLabel(int identifier, int name, CharSequence label) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glObjectLabel");
    }

    public static void glGetObjectLabel(int identifier, int name, IntBuffer length, ByteBuffer label) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetObjectLabel");
    }

    public static String glGetObjectLabel(int identifier, int name, int bufSize) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetObjectLabel");
    }

    public static void glObjectPtrLabel(PointerWrapper ptr, ByteBuffer label) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glObjectPtrLabel");
    }

    public static void glObjectPtrLabel(PointerWrapper ptr, CharSequence label) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glObjectPtrLabel");
    }

    public static void glGetObjectPtrLabel(PointerWrapper ptr, IntBuffer length, ByteBuffer label) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetObjectPtrLabel");
    }

    public static String glGetObjectPtrLabel(PointerWrapper ptr, int bufSize) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetObjectPtrLabel");
    }

    public static void glFramebufferParameteri(int target, int pname, int param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glFramebufferParameteri");
    }

    public static void glGetFramebufferParameter(int target, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetFramebufferParameter");
    }

    public static int glGetFramebufferParameteri(int target, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetFramebufferParameteri");
    }

    public static void glGetInternalformat(int target, int internalformat, int pname, LongBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetInternalformat");
    }

    public static long glGetInternalformati64(int target, int internalformat, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetInternalformati64");
    }

    public static void glInvalidateTexSubImage(int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glInvalidateTexSubImage");
    }

    public static void glInvalidateTexImage(int texture, int level) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glInvalidateTexImage");
    }

    public static void glInvalidateBufferSubData(int buffer, long offset, long length) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glInvalidateBufferSubData");
    }

    public static void glInvalidateBufferData(int buffer) {
        com.genir.renderer.bridge.commands.GL43.glInvalidateBufferData(buffer);
    }

    public static void glInvalidateFramebuffer(int target, IntBuffer attachments) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glInvalidateFramebuffer");
    }

    public static void glInvalidateSubFramebuffer(int target, IntBuffer attachments, int x, int y, int width, int height) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glInvalidateSubFramebuffer");
    }

    public static void glMultiDrawArraysIndirect(int mode, ByteBuffer indirect, int primcount, int stride) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glMultiDrawArraysIndirect");
    }

    public static void glMultiDrawArraysIndirect(int mode, long indirect_buffer_offset, int primcount, int stride) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glMultiDrawArraysIndirect");
    }

    public static void glMultiDrawArraysIndirect(int mode, IntBuffer indirect, int primcount, int stride) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glMultiDrawArraysIndirect");
    }

    public static void glMultiDrawElementsIndirect(int mode, int type, ByteBuffer indirect, int primcount, int stride) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glMultiDrawElementsIndirect");
    }

    public static void glMultiDrawElementsIndirect(int mode, int type, long indirect_buffer_offset, int primcount, int stride) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glMultiDrawElementsIndirect");
    }

    public static void glMultiDrawElementsIndirect(int mode, int type, IntBuffer indirect, int primcount, int stride) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glMultiDrawElementsIndirect");
    }

    public static void glGetProgramInterface(int program, int programInterface, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetProgramInterface");
    }

    public static int glGetProgramInterfacei(int program, int programInterface, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetProgramInterfacei");
    }

    public static int glGetProgramResourceIndex(int program, int programInterface, ByteBuffer name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetProgramResourceIndex");
    }

    public static int glGetProgramResourceIndex(int program, int programInterface, CharSequence name) {
        return com.genir.renderer.bridge.commands.GL43.glGetProgramResourceIndex(program, programInterface, name);
    }

    public static void glGetProgramResourceName(int program, int programInterface, int index, IntBuffer length, ByteBuffer name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetProgramResourceName");
    }

    public static String glGetProgramResourceName(int program, int programInterface, int index, int bufSize) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetProgramResourceName");
    }

    public static void glGetProgramResource(int program, int programInterface, int index, IntBuffer props, IntBuffer length, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetProgramResource");
    }

    public static int glGetProgramResourceLocation(int program, int programInterface, ByteBuffer name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetProgramResourceLocation");
    }

    public static int glGetProgramResourceLocation(int program, int programInterface, CharSequence name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetProgramResourceLocation");
    }

    public static int glGetProgramResourceLocationIndex(int program, int programInterface, ByteBuffer name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetProgramResourceLocationIndex");
    }

    public static int glGetProgramResourceLocationIndex(int program, int programInterface, CharSequence name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glGetProgramResourceLocationIndex");
    }

    public static void glShaderStorageBlockBinding(int program, int storageBlockIndex, int storageBlockBinding) {
        com.genir.renderer.bridge.commands.GL43.glShaderStorageBlockBinding(program, storageBlockIndex, storageBlockBinding);
    }

    public static void glTexBufferRange(int target, int internalformat, int buffer, long offset, long size) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glTexBufferRange");
    }

    public static void glTexStorage2DMultisample(int target, int samples, int internalformat, int width, int height, boolean fixedsamplelocations) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glTexStorage2DMultisample");
    }

    public static void glTexStorage3DMultisample(int target, int samples, int internalformat, int width, int height, int depth, boolean fixedsamplelocations) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glTexStorage3DMultisample");
    }

    public static void glTextureView(int texture, int target, int origtexture, int internalformat, int minlevel, int numlevels, int minlayer, int numlayers) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glTextureView");
    }

    public static void glBindVertexBuffer(int bindingindex, int buffer, long offset, int stride) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glBindVertexBuffer");
    }

    public static void glVertexAttribFormat(int attribindex, int size, int type, boolean normalized, int relativeoffset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glVertexAttribFormat");
    }

    public static void glVertexAttribIFormat(int attribindex, int size, int type, int relativeoffset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glVertexAttribIFormat");
    }

    public static void glVertexAttribLFormat(int attribindex, int size, int type, int relativeoffset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glVertexAttribLFormat");
    }

    public static void glVertexAttribBinding(int attribindex, int bindingindex) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glVertexAttribBinding");
    }

    public static void glVertexBindingDivisor(int bindingindex, int divisor) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL43.glVertexBindingDivisor");
    }
}
