package com.genir.renderer.bridge;

import com.genir.renderer.bridge.impl.BufferUtil;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

import static com.genir.renderer.bridge.impl.Bridge.bufferGenerator;
import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL15 {
    public static int glGenBuffers() {
        return bufferGenerator.get();
    }

    public static void glGenBuffers(IntBuffer buffers) {
        while (buffers.remaining() > 0) {
            buffers.put(bufferGenerator.get());
        }
    }

    public static void glDeleteBuffers(int buffer) {
        exec.execute(() -> org.lwjgl.opengl.GL15.glDeleteBuffers(buffer));
    }

    public static void glDeleteBuffers(IntBuffer buffers) {
        final IntBuffer snapshot = BufferUtil.snapshot(buffers);
        exec.execute(() -> org.lwjgl.opengl.GL15.glDeleteBuffers(snapshot));
    }

    public static void glBindBuffer(int target, int buffer) {
        exec.execute(() -> org.lwjgl.opengl.GL15.glBindBuffer(target, buffer));
    }

    public static void glBufferData(int target, long data_size, int usage) {
        exec.execute(() -> org.lwjgl.opengl.GL15.glBufferData(target, data_size, usage));
    }

    public static void glBufferData(int target, FloatBuffer data, int usage) {
        final FloatBuffer snapshot = BufferUtil.snapshot(data);
        exec.execute(() -> org.lwjgl.opengl.GL15.glBufferData(target, snapshot, usage));
    }

    public static void glBufferData(int target, ByteBuffer data, int usage) {
        final ByteBuffer snapshot = BufferUtil.snapshot(data);
        exec.execute(() -> org.lwjgl.opengl.GL15.glBufferData(target, snapshot, usage));
    }

    public static void glBufferData(int target, ShortBuffer data, int usage) {
        final ShortBuffer snapshot = BufferUtil.snapshot(data);
        exec.execute(() -> org.lwjgl.opengl.GL15.glBufferData(target, snapshot, usage));
    }

    public static void glBufferSubData(int target, long offset, FloatBuffer data) {
        final FloatBuffer snapshot = BufferUtil.snapshot(data);
        exec.execute(() -> org.lwjgl.opengl.GL15.glBufferSubData(target, offset, snapshot));
    }

    public static void glBufferSubData(int target, long offset, ShortBuffer data) {
        final ShortBuffer snapshot = BufferUtil.snapshot(data);
        exec.execute(() -> org.lwjgl.opengl.GL15.glBufferSubData(target, offset, snapshot));
    }

    public static void glBufferSubData(int target, long offset, IntBuffer data) {
        final IntBuffer snapshot = BufferUtil.snapshot(data);
        exec.execute(() -> org.lwjgl.opengl.GL15.glBufferSubData(target, offset, snapshot));
    }

    public static void glBufferSubData(int target, long offset, ByteBuffer data) {
        final ByteBuffer snapshot = BufferUtil.snapshot(data);
        exec.execute(() -> org.lwjgl.opengl.GL15.glBufferSubData(target, offset, snapshot));
    }

    public static boolean glUnmapBuffer(int target) {
        return exec.get(() -> org.lwjgl.opengl.GL15.glUnmapBuffer(target));
    }
}
