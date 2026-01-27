package com.genir.renderer.bridge;


import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.state.AppState.state;

public class GL30 {
    public static void glGenerateMipmap(int target) {
        record glGenerateMipmap(int target) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glGenerateMipmap(target);
            }
        }
        state.exec.execute(new glGenerateMipmap(target));
    }

    public static void glGenRenderbuffers(IntBuffer renderbuffers) {
        record glGenRenderbuffers(IntBuffer renderbuffers) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glGenRenderbuffers(renderbuffers);
            }
        }
        state.exec.wait(new glGenRenderbuffers(renderbuffers));
    }

    public static int glGenRenderbuffers() {
        record glGenRenderbuffers() implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL30.glGenRenderbuffers();
            }
        }
        return state.exec.get(new glGenRenderbuffers());
    }

    public static void glBindRenderbuffer(int target, int renderbuffer) {
        record glBindRenderbuffer(int target, int renderbuffer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glBindRenderbuffer(target, renderbuffer);
            }
        }
        state.exec.execute(new glBindRenderbuffer(target, renderbuffer));
    }

    public static void glRenderbufferStorage(int target, int internalformat, int width, int height) {
        record glRenderbufferStorage(int target, int internalformat, int width, int height) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glRenderbufferStorage(target, internalformat, width, height);
            }
        }
        state.exec.execute(new glRenderbufferStorage(target, internalformat, width, height));
    }

    public static int glGenFramebuffers() {
        record glGenFramebuffers() implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL30.glGenFramebuffers();
            }
        }
        return state.exec.get(new glGenFramebuffers());
    }

    public static void glBindFramebuffer(int target, int framebuffer) {
        record glBindFramebuffer(int target, int framebuffer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glBindFramebuffer(target, framebuffer);
            }
        }
        state.attribTracker.glBindFramebuffer(target, framebuffer);
        state.exec.execute(new glBindFramebuffer(target, framebuffer));
    }

    public static void glDeleteFramebuffers(int framebuffer) {
        record glDeleteFramebuffers(int framebuffer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glDeleteFramebuffers(framebuffer);
            }
        }
        state.exec.execute(new glDeleteFramebuffers(framebuffer));
    }

    public static void glFramebufferTexture2D(int target, int attachment, int textarget, int texture, int level) {
        record glFramebufferTexture2D(int target, int attachment, int textarget, int texture, int level) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glFramebufferTexture2D(target, attachment, textarget, texture, level);
            }
        }
        state.exec.execute(new glFramebufferTexture2D(target, attachment, textarget, texture, level));
    }

    public static void glFramebufferRenderbuffer(int target, int attachment, int renderbuffertarget, int renderbuffer) {
        record glFramebufferRenderbuffer(int target, int attachment, int renderbuffertarget, int renderbuffer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer);
            }
        }
        state.exec.execute(new glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer));
    }

    public static int glCheckFramebufferStatus(int target) {
        record glCheckFramebufferStatus(int target) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL30.glCheckFramebufferStatus(target);
            }
        }
        return state.exec.get(new glCheckFramebufferStatus(target));
    }

    public static void glBindVertexArray(int array) {
        record glBindVertexArray(int array) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glBindVertexArray(array);
            }
        }
        state.attribTracker.glBindVertexArray(array);
        state.exec.execute(new glBindVertexArray(array));
    }

    public static void glDeleteVertexArrays(int array) {
        record glDeleteVertexArrays(int array) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glDeleteVertexArrays(array);
            }
        }
        state.exec.execute(new glDeleteVertexArrays(array));
    }

    public static int glGenVertexArrays() {
        return state.arrayGenerator.get();
    }

    public static void glBindBufferBase(int target, int index, int buffer) {
        record glBindBufferBase(int target, int index, int buffer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glBindBufferBase(target, index, buffer);
            }
        }
        state.exec.execute(new glBindBufferBase(target, index, buffer));
    }

    public static ByteBuffer glMapBufferRange(int target, long offset, long length, int access, ByteBuffer old_buffer) {
        try {
            ByteBuffer range = state.bufferManager.glMapBufferRange(target, offset, length, access, old_buffer);
            if (range != null) {
                return range;
            }
        } catch (RuntimeException e) {
            return null;
        }

        // Fall back to OpenGL glMapBufferRange if bufferManager cannot map the buffer.
        record glMapBufferRange(int target, long offset, long length, int access, ByteBuffer old_buffer) implements Callable<ByteBuffer> {
            @Override
            public ByteBuffer call() throws Exception {
                return org.lwjgl.opengl.GL30.glMapBufferRange(target, offset, length, access, old_buffer);
            }
        }
        return state.exec.get(new glMapBufferRange(target, offset, length, access, old_buffer));
    }

    public static int glGetInteger(int value, int index) {
        record glGetInteger(int value, int index) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL30.glGetInteger(value, index);
            }
        }
        return state.exec.get(new glGetInteger(value, index));
    }

    public static void glBlitFramebuffer(int srcX0, int srcY0, int srcX1, int srcY1, int dstX0, int dstY0, int dstX1, int dstY1, int mask, int filter) {
        record glBlitFramebuffer(int srcX0, int srcY0, int srcX1, int srcY1, int dstX0, int dstY0, int dstX1, int dstY1, int mask, int filter) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glBlitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
            }
        }
        state.exec.execute(new glBlitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter));
    }

    public static void glDeleteRenderbuffers(int renderbuffer) {
        record glDeleteRenderbuffers(int renderbuffer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glDeleteRenderbuffers(renderbuffer);
            }
        }
        state.exec.execute(new glDeleteRenderbuffers(renderbuffer));
    }

    public static void glVertexAttribIPointer(int index, int size, int type, int stride, long buffer_buffer_offset) {
        record glVertexAttribIPointer(int index, int size, int type, int stride, long buffer_buffer_offset) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glVertexAttribIPointer(index, size, type, stride, buffer_buffer_offset);
            }
        }
        state.exec.execute(new glVertexAttribIPointer(index, size, type, stride, buffer_buffer_offset));
    }

    public static void glUniform1ui(int location, int v0) {
        record glUniform1ui(int location, int v0) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glUniform1ui(location, v0);
            }
        }
        state.exec.execute(new glUniform1ui(location, v0));
    }

    public static void glUniform2ui(int location, int v0, int v1) {
        record glUniform2ui(int location, int v0, int v1) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glUniform2ui(location, v0, v1);
            }
        }
        state.exec.execute(new glUniform2ui(location, v0, v1));
    }

    public static void glUniform3ui(int location, int v0, int v1, int v2) {
        record glUniform3ui(int location, int v0, int v1, int v2) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL30.glUniform3ui(location, v0, v1, v2);
            }
        }
        state.exec.execute(new glUniform3ui(location, v0, v1, v2));
    }
}
