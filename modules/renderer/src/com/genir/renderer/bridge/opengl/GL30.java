package com.genir.renderer.bridge.opengl;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

public final class GL30 {
    public static String glGetStringi(int name, int index) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetStringi(int, int)");
    }

    public static void glClearBuffer(int buffer, int drawbuffer, FloatBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glClearBuffer(int, int, FloatBuffer)");
    }

    public static void glClearBuffer(int buffer, int drawbuffer, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glClearBuffer(int, int, IntBuffer)");
    }

    public static void glClearBufferu(int buffer, int drawbuffer, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glClearBufferu(int, int, IntBuffer)");
    }

    public static void glClearBufferfi(int buffer, int drawbuffer, float depth, int stencil) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glClearBufferfi(int, int, float, int)");
    }

    public static void glVertexAttribI1i(int index, int x) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI1i(int, int)");
    }

    public static void glVertexAttribI2i(int index, int x, int y) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI2i(int, int, int)");
    }

    public static void glVertexAttribI3i(int index, int x, int y, int z) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI3i(int, int, int, int)");
    }

    public static void glVertexAttribI4i(int index, int x, int y, int z, int w) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI4i(int, int, int, int, int)");
    }

    public static void glVertexAttribI1ui(int index, int x) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI1ui(int, int)");
    }

    public static void glVertexAttribI2ui(int index, int x, int y) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI2ui(int, int, int)");
    }

    public static void glVertexAttribI3ui(int index, int x, int y, int z) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI3ui(int, int, int, int)");
    }

    public static void glVertexAttribI4ui(int index, int x, int y, int z, int w) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI4ui(int, int, int, int, int)");
    }

    public static void glVertexAttribI1(int index, IntBuffer v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI1(int, IntBuffer)");
    }

    public static void glVertexAttribI2(int index, IntBuffer v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI2(int, IntBuffer)");
    }

    public static void glVertexAttribI3(int index, IntBuffer v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI3(int, IntBuffer)");
    }

    public static void glVertexAttribI4(int index, IntBuffer v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI4(int, IntBuffer)");
    }

    public static void glVertexAttribI1u(int index, IntBuffer v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI1u(int, IntBuffer)");
    }

    public static void glVertexAttribI2u(int index, IntBuffer v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI2u(int, IntBuffer)");
    }

    public static void glVertexAttribI3u(int index, IntBuffer v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI3u(int, IntBuffer)");
    }

    public static void glVertexAttribI4u(int index, IntBuffer v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI4u(int, IntBuffer)");
    }

    public static void glVertexAttribI4(int index, ByteBuffer v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI4(int, ByteBuffer)");
    }

    public static void glVertexAttribI4(int index, ShortBuffer v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI4(int, ShortBuffer)");
    }

    public static void glVertexAttribI4u(int index, ByteBuffer v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI4u(int, ByteBuffer)");
    }

    public static void glVertexAttribI4u(int index, ShortBuffer v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribI4u(int, ShortBuffer)");
    }

    public static void glVertexAttribIPointer(int index, int size, int type, int stride, ByteBuffer buffer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribIPointer(int, int, int, int, ByteBuffer)");
    }

    public static void glVertexAttribIPointer(int index, int size, int type, int stride, IntBuffer buffer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribIPointer(int, int, int, int, IntBuffer)");
    }

    public static void glVertexAttribIPointer(int index, int size, int type, int stride, ShortBuffer buffer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glVertexAttribIPointer(int, int, int, int, ShortBuffer)");
    }

    public static void glVertexAttribIPointer(int index, int size, int type, int stride, long buffer_buffer_offset) {
        com.genir.renderer.bridge.commands.GL30.glVertexAttribIPointer(index, size, type, stride, buffer_buffer_offset);
    }

    public static void glGetVertexAttribI(int index, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetVertexAttribI(int, int, IntBuffer)");
    }

    public static void glGetVertexAttribIu(int index, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetVertexAttribIu(int, int, IntBuffer)");
    }

    public static void glUniform1ui(int location, int v0) {
        com.genir.renderer.bridge.commands.GL30.glUniform1ui(location, v0);
    }

    public static void glUniform2ui(int location, int v0, int v1) {
        com.genir.renderer.bridge.commands.GL30.glUniform2ui(location, v0, v1);
    }

    public static void glUniform3ui(int location, int v0, int v1, int v2) {
        com.genir.renderer.bridge.commands.GL30.glUniform3ui(location, v0, v1, v2);
    }

    public static void glUniform4ui(int location, int v0, int v1, int v2, int v3) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glUniform4ui(int, int, int, int, int)");
    }

    public static void glUniform1u(int location, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glUniform1u(int, IntBuffer)");
    }

    public static void glUniform2u(int location, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glUniform2u(int, IntBuffer)");
    }

    public static void glUniform3u(int location, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glUniform3u(int, IntBuffer)");
    }

    public static void glUniform4u(int location, IntBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glUniform4u(int, IntBuffer)");
    }

    public static void glGetUniformu(int program, int location, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetUniformu(int, int, IntBuffer)");
    }

    public static void glBindFragDataLocation(int program, int colorNumber, ByteBuffer name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glBindFragDataLocation(int, int, ByteBuffer)");
    }

    public static void glBindFragDataLocation(int program, int colorNumber, CharSequence name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glBindFragDataLocation(int, int, CharSequence)");
    }

    public static int glGetFragDataLocation(int program, ByteBuffer name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetFragDataLocation(int, ByteBuffer)");
    }

    public static int glGetFragDataLocation(int program, CharSequence name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetFragDataLocation(int, CharSequence)");
    }

    public static void glBeginConditionalRender(int id, int mode) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glBeginConditionalRender(int, int)");
    }

    public static void glEndConditionalRender() {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glEndConditionalRender()");
    }

    public static ByteBuffer glMapBufferRange(int target, long offset, long length, int access, ByteBuffer old_buffer) {
        return com.genir.renderer.bridge.commands.GL30.glMapBufferRange(target, offset, length, access, old_buffer);
    }

    public static void glFlushMappedBufferRange(int target, long offset, long length) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glFlushMappedBufferRange(int, long, long)");
    }

    public static void glClampColor(int target, int clamp) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glClampColor(int, int)");
    }

    public static boolean glIsRenderbuffer(int renderbuffer) {
        return com.genir.renderer.bridge.commands.GL30.glIsRenderbuffer(renderbuffer);
    }

    public static void glBindRenderbuffer(int target, int renderbuffer) {
        com.genir.renderer.bridge.commands.GL30.glBindRenderbuffer(target, renderbuffer);
    }

    public static void glDeleteRenderbuffers(IntBuffer renderbuffers) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glDeleteRenderbuffers(IntBuffer)");
    }

    public static void glDeleteRenderbuffers(int renderbuffer) {
        com.genir.renderer.bridge.commands.GL30.glDeleteRenderbuffers(renderbuffer);
    }

    public static void glGenRenderbuffers(IntBuffer renderbuffers) {
        com.genir.renderer.bridge.commands.GL30.glGenRenderbuffers(renderbuffers);
    }

    public static int glGenRenderbuffers() {
        return com.genir.renderer.bridge.commands.GL30.glGenRenderbuffers();
    }

    public static void glRenderbufferStorage(int target, int internalformat, int width, int height) {
        com.genir.renderer.bridge.commands.GL30.glRenderbufferStorage(target, internalformat, width, height);
    }

    public static void glGetRenderbufferParameter(int target, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetRenderbufferParameter(int, int, IntBuffer)");
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetRenderbufferParameter(int target, int pname) {
        return glGetRenderbufferParameteri(target, pname);
    }

    public static int glGetRenderbufferParameteri(int target, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetRenderbufferParameteri(int, int)");
    }

    public static boolean glIsFramebuffer(int framebuffer) {
        return com.genir.renderer.bridge.commands.GL30.glIsFramebuffer(framebuffer);
    }

    public static void glBindFramebuffer(int target, int framebuffer) {
        com.genir.renderer.bridge.commands.GL30.glBindFramebuffer(target, framebuffer);
    }

    public static void glDeleteFramebuffers(IntBuffer framebuffers) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glDeleteFramebuffers(IntBuffer)");
    }

    public static void glDeleteFramebuffers(int framebuffer) {
        com.genir.renderer.bridge.commands.GL30.glDeleteFramebuffers(framebuffer);
    }

    public static void glGenFramebuffers(IntBuffer framebuffers) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGenFramebuffers(IntBuffer)");
    }

    public static int glGenFramebuffers() {
        return com.genir.renderer.bridge.commands.GL30.glGenFramebuffers();
    }

    public static int glCheckFramebufferStatus(int target) {
        return com.genir.renderer.bridge.commands.GL30.glCheckFramebufferStatus(target);
    }

    public static void glFramebufferTexture1D(int target, int attachment, int textarget, int texture, int level) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glFramebufferTexture1D(int, int, int, int, int)");
    }

    public static void glFramebufferTexture2D(int target, int attachment, int textarget, int texture, int level) {
        com.genir.renderer.bridge.commands.GL30.glFramebufferTexture2D(target, attachment, textarget, texture, level);
    }

    public static void glFramebufferTexture3D(int target, int attachment, int textarget, int texture, int level, int zoffset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glFramebufferTexture3D(int, int, int, int, int, int)");
    }

    public static void glFramebufferRenderbuffer(int target, int attachment, int renderbuffertarget, int renderbuffer) {
        com.genir.renderer.bridge.commands.GL30.glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer);
    }

    public static void glGetFramebufferAttachmentParameter(int target, int attachment, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetFramebufferAttachmentParameter(int, int, int, IntBuffer)");
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetFramebufferAttachmentParameter(int target, int attachment, int pname) {
        return glGetFramebufferAttachmentParameteri(target, attachment, pname);
    }

    public static int glGetFramebufferAttachmentParameteri(int target, int attachment, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetFramebufferAttachmentParameteri(int, int, int)");
    }

    public static void glGenerateMipmap(int target) {
        com.genir.renderer.bridge.commands.GL30.glGenerateMipmap(target);
    }

    public static void glRenderbufferStorageMultisample(int target, int samples, int internalformat, int width, int height) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glRenderbufferStorageMultisample(int, int, int, int, int)");
    }

    public static void glBlitFramebuffer(int srcX0, int srcY0, int srcX1, int srcY1, int dstX0, int dstY0, int dstX1, int dstY1, int mask, int filter) {
        com.genir.renderer.bridge.commands.GL30.glBlitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
    }

    public static void glTexParameterI(int target, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glTexParameterI(int, int, IntBuffer)");
    }

    public static void glTexParameterIi(int target, int pname, int param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glTexParameterIi(int, int, int)");
    }

    public static void glTexParameterIu(int target, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glTexParameterIu(int, int, IntBuffer)");
    }

    public static void glTexParameterIui(int target, int pname, int param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glTexParameterIui(int, int, int)");
    }

    public static void glGetTexParameterI(int target, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetTexParameterI(int, int, IntBuffer)");
    }

    public static int glGetTexParameterIi(int target, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetTexParameterIi(int, int)");
    }

    public static void glGetTexParameterIu(int target, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetTexParameterIu(int, int, IntBuffer)");
    }

    public static int glGetTexParameterIui(int target, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetTexParameterIui(int, int)");
    }

    public static void glFramebufferTextureLayer(int target, int attachment, int texture, int level, int layer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glFramebufferTextureLayer(int, int, int, int, int)");
    }

    public static void glColorMaski(int buf, boolean r, boolean g, boolean b, boolean a) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glColorMaski(int, boolean, boolean, boolean, boolean)");
    }

    public static void glGetBoolean(int value, int index, ByteBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetBoolean(int, int, ByteBuffer)");
    }

    public static boolean glGetBoolean(int value, int index) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetBoolean(int, int)");
    }

    public static void glGetInteger(int value, int index, IntBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetInteger(int, int, IntBuffer)");
    }

    public static int glGetInteger(int value, int index) {
        return com.genir.renderer.bridge.commands.GL30.glGetInteger(value, index);
    }

    public static void glEnablei(int target, int index) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glEnablei(int, int)");
    }

    public static void glDisablei(int target, int index) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glDisablei(int, int)");
    }

    public static boolean glIsEnabledi(int target, int index) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glIsEnabledi(int, int)");
    }

    public static void glBindBufferRange(int target, int index, int buffer, long offset, long size) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glBindBufferRange(int, int, int, long, long)");
    }

    public static void glBindBufferBase(int target, int index, int buffer) {
        com.genir.renderer.bridge.commands.GL30.glBindBufferBase(target, index, buffer);
    }

    public static void glBeginTransformFeedback(int primitiveMode) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glBeginTransformFeedback(int)");
    }

    public static void glEndTransformFeedback() {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glEndTransformFeedback()");
    }

    public static void glTransformFeedbackVaryings(int program, int count, ByteBuffer varyings, int bufferMode) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glTransformFeedbackVaryings(int, int, ByteBuffer, int)");
    }

    public static void glTransformFeedbackVaryings(int program, CharSequence[] varyings, int bufferMode) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glTransformFeedbackVaryings(int, CharSequence[], int)");
    }

    public static void glGetTransformFeedbackVarying(int program, int index, IntBuffer length, IntBuffer size, IntBuffer type, ByteBuffer name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetTransformFeedbackVarying(int, int, IntBuffer, IntBuffer, IntBuffer, ByteBuffer)");
    }

    public static String glGetTransformFeedbackVarying(int program, int index, int bufSize, IntBuffer size, IntBuffer type) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGetTransformFeedbackVarying(int, int, int, IntBuffer, IntBuffer)");
    }

    public static void glBindVertexArray(int array) {
        com.genir.renderer.bridge.commands.GL30.glBindVertexArray(array);
    }

    public static void glDeleteVertexArrays(IntBuffer arrays) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glDeleteVertexArrays(IntBuffer)");
    }

    public static void glDeleteVertexArrays(int array) {
        com.genir.renderer.bridge.commands.GL30.glDeleteVertexArrays(array);
    }

    public static void glGenVertexArrays(IntBuffer arrays) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glGenVertexArrays(IntBuffer)");
    }

    public static int glGenVertexArrays() {
        return com.genir.renderer.bridge.commands.GL30.glGenVertexArrays();
    }

    public static boolean glIsVertexArray(int array) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL30.glIsVertexArray(int)");
    }
}
