package com.genir.renderer.bridge;

import com.genir.renderer.bridge.state.BufferUtil;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.state.AppState.state;

public class GL15 {
    public static int glGenBuffers() {
        return state.bufferGenerator.get();
    }

    public static void glGenBuffers(IntBuffer buffers) {
        while (buffers.remaining() > 0) {
            buffers.put(state.bufferGenerator.get());
        }
    }

    public static void glDeleteBuffers(int buffer) {
        record glDeleteBuffers(int buffer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL15.glDeleteBuffers(buffer);
            }
        }
        state.exec.execute(new glDeleteBuffers(buffer));
    }

    public static void glDeleteBuffers(IntBuffer buffers) {
        record glDeleteBuffers(IntBuffer buffers) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL15.glDeleteBuffers(buffers);
            }
        }
        final IntBuffer snapshot = BufferUtil.snapshot(buffers);
        state.exec.execute(new glDeleteBuffers(snapshot));
    }

    public static void glBindBuffer(int target, int buffer) {
        record glBindBuffer(int target, int buffer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL15.glBindBuffer(target, buffer);
            }
        }
        state.bufferManager.glBindBuffer(target, buffer);
        state.attribTracker.glBindBuffer(target, buffer);
        state.exec.execute(new glBindBuffer(target, buffer));
    }

    public static void glBufferData(int target, long data_size, int usage) {
        record glBufferData(int target, long data_size, int usage) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL15.glBufferData(target, data_size, usage);
            }
        }
        state.exec.execute(new glBufferData(target, data_size, usage));
    }

    public static void glBufferData(int target, FloatBuffer data, int usage) {
        record glBufferData(int target, FloatBuffer data, int usage) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL15.glBufferData(target, data, usage);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(data);
        state.exec.execute(new glBufferData(target, snapshot, usage));
    }

    public static void glBufferData(int target, ByteBuffer data, int usage) {
        record glBufferData(int target, ByteBuffer data, int usage) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL15.glBufferData(target, data, usage);
            }
        }
        final ByteBuffer snapshot = BufferUtil.snapshot(data);
        state.exec.execute(new glBufferData(target, snapshot, usage));
    }

    public static void glBufferData(int target, ShortBuffer data, int usage) {
        record glBufferData(int target, ShortBuffer data, int usage) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL15.glBufferData(target, data, usage);
            }
        }
        final ShortBuffer snapshot = BufferUtil.snapshot(data);
        state.exec.execute(new glBufferData(target, snapshot, usage));
    }

    public static void glBufferData(int target, IntBuffer data, int usage) {
        record glBufferData(int target, IntBuffer data, int usage) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL15.glBufferData(target, data, usage);
            }
        }
        final IntBuffer snapshot = BufferUtil.snapshot(data);
        state.exec.execute(new glBufferData(target, snapshot, usage));
    }

    public static void glBufferSubData(int target, long offset, FloatBuffer data) {
        record glBufferSubData(int target, long offset, FloatBuffer data) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL15.glBufferSubData(target, offset, data);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(data);
        state.exec.execute(new glBufferSubData(target, offset, snapshot));
    }

    public static void glBufferSubData(int target, long offset, ShortBuffer data) {
        record glBufferSubData(int target, long offset, ShortBuffer data) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL15.glBufferSubData(target, offset, data);
            }
        }
        final ShortBuffer snapshot = BufferUtil.snapshot(data);
        state.exec.execute(new glBufferSubData(target, offset, snapshot));
    }

    public static void glBufferSubData(int target, long offset, IntBuffer data) {
        record glBufferSubData(int target, long offset, IntBuffer data) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL15.glBufferSubData(target, offset, data);
            }
        }
        final IntBuffer snapshot = BufferUtil.snapshot(data);
        state.exec.execute(new glBufferSubData(target, offset, snapshot));
    }

    public static void glBufferSubData(int target, long offset, ByteBuffer data) {
        record glBufferSubData(int target, long offset, ByteBuffer data) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL15.glBufferSubData(target, offset, data);
            }
        }
        final ByteBuffer snapshot = BufferUtil.snapshot(data);
        state.exec.execute(new glBufferSubData(target, offset, snapshot));
    }

    public static boolean glUnmapBuffer(int target) {
        boolean handled = state.bufferManager.glUnmapBuffer(target);
        if (handled) {
            return true;
        }

        // Fall back to OpenGL glUnmapBuffer if bufferManager cannot handle the buffer.
        record glUnmapBuffer(int target) implements Callable<Boolean> {
            @Override
            public Boolean call() throws Exception {
                return org.lwjgl.opengl.GL15.glUnmapBuffer(target);
            }
        }
        return state.exec.get(new glUnmapBuffer(target));
    }
}
