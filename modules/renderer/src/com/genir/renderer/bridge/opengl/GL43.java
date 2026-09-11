package com.genir.renderer.bridge.opengl;

import org.lwjgl.PointerWrapper;
import org.lwjgl.opengl.KHRDebugCallback;

import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;

public final class GL43 {
    public static void glClearBufferData(int target, int internalformat, int format, int type, ByteBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glClearBufferSubData(int target, int internalformat, long offset, long size, int format, int type, ByteBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glDispatchCompute(int num_groups_x, int num_groups_y, int num_groups_z) {
        com.genir.renderer.bridge.commands.GL43.glDispatchCompute(num_groups_x, num_groups_y, num_groups_z);
    }

    public static void glDispatchComputeIndirect(long indirect) {
        throw new UnsupportedOperationException();
    }

    public static void glCopyImageSubData(int srcName, int srcTarget, int srcLevel, int srcX, int srcY, int srcZ, int dstName, int dstTarget, int dstLevel, int dstX, int dstY, int dstZ, int srcWidth, int srcHeight, int srcDepth) {
        throw new UnsupportedOperationException();
    }

    public static void glDebugMessageControl(int source, int type, int severity, IntBuffer ids, boolean enabled) {
        com.genir.renderer.bridge.commands.GL43.glDebugMessageControl(source, type, severity, ids, enabled);
    }

    public static void glDebugMessageInsert(int source, int type, int id, int severity, ByteBuffer buf) {
        throw new UnsupportedOperationException();
    }

    public static void glDebugMessageInsert(int source, int type, int id, int severity, CharSequence buf) {
        throw new UnsupportedOperationException();
    }

    public static void glDebugMessageCallback(KHRDebugCallback callback) {
        com.genir.renderer.bridge.commands.GL43.glDebugMessageCallback(callback);
    }

    public static int glGetDebugMessageLog(int count, IntBuffer sources, IntBuffer types, IntBuffer ids, IntBuffer severities, IntBuffer lengths, ByteBuffer messageLog) {
        throw new UnsupportedOperationException();
    }

    public static void glPushDebugGroup(int source, int id, ByteBuffer message) {
        throw new UnsupportedOperationException();
    }

    public static void glPushDebugGroup(int source, int id, CharSequence message) {
        throw new UnsupportedOperationException();
    }

    public static void glPopDebugGroup() {
        throw new UnsupportedOperationException();
    }

    public static void glObjectLabel(int identifier, int name, ByteBuffer label) {
        throw new UnsupportedOperationException();
    }

    public static void glObjectLabel(int identifier, int name, CharSequence label) {
        throw new UnsupportedOperationException();
    }

    public static void glGetObjectLabel(int identifier, int name, IntBuffer length, ByteBuffer label) {
        throw new UnsupportedOperationException();
    }

    public static String glGetObjectLabel(int identifier, int name, int bufSize) {
        throw new UnsupportedOperationException();
    }

    public static void glObjectPtrLabel(PointerWrapper ptr, ByteBuffer label) {
        throw new UnsupportedOperationException();
    }

    public static void glObjectPtrLabel(PointerWrapper ptr, CharSequence label) {
        throw new UnsupportedOperationException();
    }

    public static void glGetObjectPtrLabel(PointerWrapper ptr, IntBuffer length, ByteBuffer label) {
        throw new UnsupportedOperationException();
    }

    public static String glGetObjectPtrLabel(PointerWrapper ptr, int bufSize) {
        throw new UnsupportedOperationException();
    }

    public static void glFramebufferParameteri(int target, int pname, int param) {
        throw new UnsupportedOperationException();
    }

    public static void glGetFramebufferParameter(int target, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetFramebufferParameteri(int target, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetInternalformat(int target, int internalformat, int pname, LongBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static long glGetInternalformati64(int target, int internalformat, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glInvalidateTexSubImage(int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth) {
        throw new UnsupportedOperationException();
    }

    public static void glInvalidateTexImage(int texture, int level) {
        throw new UnsupportedOperationException();
    }

    public static void glInvalidateBufferSubData(int buffer, long offset, long length) {
        throw new UnsupportedOperationException();
    }

    public static void glInvalidateBufferData(int buffer) {
        com.genir.renderer.bridge.commands.GL43.glInvalidateBufferData(buffer);
    }

    public static void glInvalidateFramebuffer(int target, IntBuffer attachments) {
        throw new UnsupportedOperationException();
    }

    public static void glInvalidateSubFramebuffer(int target, IntBuffer attachments, int x, int y, int width, int height) {
        throw new UnsupportedOperationException();
    }

    public static void glMultiDrawArraysIndirect(int mode, ByteBuffer indirect, int primcount, int stride) {
        throw new UnsupportedOperationException();
    }

    public static void glMultiDrawArraysIndirect(int mode, long indirect_buffer_offset, int primcount, int stride) {
        throw new UnsupportedOperationException();
    }

    public static void glMultiDrawArraysIndirect(int mode, IntBuffer indirect, int primcount, int stride) {
        throw new UnsupportedOperationException();
    }

    public static void glMultiDrawElementsIndirect(int mode, int type, ByteBuffer indirect, int primcount, int stride) {
        throw new UnsupportedOperationException();
    }

    public static void glMultiDrawElementsIndirect(int mode, int type, long indirect_buffer_offset, int primcount, int stride) {
        throw new UnsupportedOperationException();
    }

    public static void glMultiDrawElementsIndirect(int mode, int type, IntBuffer indirect, int primcount, int stride) {
        throw new UnsupportedOperationException();
    }

    public static void glGetProgramInterface(int program, int programInterface, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetProgramInterfacei(int program, int programInterface, int pname) {
        throw new UnsupportedOperationException();
    }

    public static int glGetProgramResourceIndex(int program, int programInterface, ByteBuffer name) {
        throw new UnsupportedOperationException();
    }

    public static int glGetProgramResourceIndex(int program, int programInterface, CharSequence name) {
        return com.genir.renderer.bridge.commands.GL43.glGetProgramResourceIndex(program, programInterface, name);
    }

    public static void glGetProgramResourceName(int program, int programInterface, int index, IntBuffer length, ByteBuffer name) {
        throw new UnsupportedOperationException();
    }

    public static String glGetProgramResourceName(int program, int programInterface, int index, int bufSize) {
        throw new UnsupportedOperationException();
    }

    public static void glGetProgramResource(int program, int programInterface, int index, IntBuffer props, IntBuffer length, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetProgramResourceLocation(int program, int programInterface, ByteBuffer name) {
        throw new UnsupportedOperationException();
    }

    public static int glGetProgramResourceLocation(int program, int programInterface, CharSequence name) {
        throw new UnsupportedOperationException();
    }

    public static int glGetProgramResourceLocationIndex(int program, int programInterface, ByteBuffer name) {
        throw new UnsupportedOperationException();
    }

    public static int glGetProgramResourceLocationIndex(int program, int programInterface, CharSequence name) {
        throw new UnsupportedOperationException();
    }

    public static void glShaderStorageBlockBinding(int program, int storageBlockIndex, int storageBlockBinding) {
        com.genir.renderer.bridge.commands.GL43.glShaderStorageBlockBinding(program, storageBlockIndex, storageBlockBinding);
    }

    public static void glTexBufferRange(int target, int internalformat, int buffer, long offset, long size) {
        throw new UnsupportedOperationException();
    }

    public static void glTexStorage2DMultisample(int target, int samples, int internalformat, int width, int height, boolean fixedsamplelocations) {
        throw new UnsupportedOperationException();
    }

    public static void glTexStorage3DMultisample(int target, int samples, int internalformat, int width, int height, int depth, boolean fixedsamplelocations) {
        throw new UnsupportedOperationException();
    }

    public static void glTextureView(int texture, int target, int origtexture, int internalformat, int minlevel, int numlevels, int minlayer, int numlayers) {
        throw new UnsupportedOperationException();
    }

    public static void glBindVertexBuffer(int bindingindex, int buffer, long offset, int stride) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribFormat(int attribindex, int size, int type, boolean normalized, int relativeoffset) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribIFormat(int attribindex, int size, int type, int relativeoffset) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribLFormat(int attribindex, int size, int type, int relativeoffset) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribBinding(int attribindex, int bindingindex) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexBindingDivisor(int bindingindex, int divisor) {
        throw new UnsupportedOperationException();
    }
}
