package com.genir.renderer.bridge;


import java.nio.ByteBuffer;
import java.nio.IntBuffer;

import static com.genir.renderer.bridge.impl.Bridge.arrayGenerator;
import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL30 {
    public static void glGenerateMipmap(int target) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glGenerateMipmap(target));
    }

    public static void glGenRenderbuffers(IntBuffer renderbuffers) {
        exec.wait(() -> org.lwjgl.opengl.GL30.glGenRenderbuffers(renderbuffers));
    }

    public static int glGenRenderbuffers() {
        return exec.get(() -> org.lwjgl.opengl.GL30.glGenRenderbuffers());
    }

    public static void glBindRenderbuffer(int target, int renderbuffer) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glBindRenderbuffer(target, renderbuffer));
    }

    public static void glRenderbufferStorage(int target, int internalformat, int width, int height) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glRenderbufferStorage(target, internalformat, width, height));
    }

    public static int glGenFramebuffers() {
        return exec.get(() -> org.lwjgl.opengl.GL30.glGenFramebuffers());
    }

    public static void glBindFramebuffer(int target, int framebuffer) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glBindFramebuffer(target, framebuffer));
    }

    public static void glDeleteFramebuffers(int framebuffer) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glDeleteFramebuffers(framebuffer));
    }

    public static void glFramebufferTexture2D(int target, int attachment, int textarget, int texture, int level) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glFramebufferTexture2D(target, attachment, textarget, texture, level));
    }

    public static void glFramebufferRenderbuffer(int target, int attachment, int renderbuffertarget, int renderbuffer) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer));
    }

    public static int glCheckFramebufferStatus(int target) {
        return exec.get(() -> org.lwjgl.opengl.GL30.glCheckFramebufferStatus(target));
    }

    public static void glBindVertexArray(int array) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glBindVertexArray(array));
    }

    public static void glDeleteVertexArrays(int array) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glDeleteVertexArrays(array));
    }

    public static int glGenVertexArrays() {
        return arrayGenerator.get();
    }

    public static void glBindBufferBase(int target, int index, int buffer) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glBindBufferBase(target, index, buffer));
    }

    public static ByteBuffer glMapBufferRange(int target, long offset, long length, int access, ByteBuffer old_buffer) {
        return exec.get(() -> org.lwjgl.opengl.GL30.glMapBufferRange(target, offset, length, access, old_buffer));
    }

    public static int glGetInteger(int value, int index) {
        return exec.get(() -> org.lwjgl.opengl.GL30.glGetInteger(value, index));
    }

    public static void glBlitFramebuffer(int srcX0, int srcY0, int srcX1, int srcY1, int dstX0, int dstY0, int dstX1, int dstY1, int mask, int filter) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glBlitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter));
    }

    public static void glDeleteRenderbuffers(int renderbuffer) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glDeleteRenderbuffers(renderbuffer));
    }
}
