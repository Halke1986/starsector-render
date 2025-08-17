package com.genir.renderer.bridge;

import com.genir.renderer.bridge.impl.BufferUtil;

import java.nio.FloatBuffer;

import static com.genir.renderer.bridge.impl.Bridge.*;

public class GL15 {
    public static int glGenBuffers() {
        return bufferGenerator.get();
    }

    public static void glDeleteBuffers(int buffer) {
        exec.execute(() -> org.lwjgl.opengl.GL15.glDeleteBuffers(buffer));
    }

    public static void glBindBuffer(int target, int buffer) {
        clientAttribTracker.glBindBuffer(target, buffer);
        exec.execute(() -> {
            vertexInterceptor.arraysTouched();
            org.lwjgl.opengl.GL15.glBindBuffer(target, buffer);
        });
    }

    public static void glBufferData(int target, long data_size, int usage) {
        exec.execute(() -> org.lwjgl.opengl.GL15.glBufferData(target, data_size, usage));
    }

    public static void glBufferData(int target, FloatBuffer data, int usage) {
        final FloatBuffer snapshot = BufferUtil.snapshot(data);
        exec.execute(() -> org.lwjgl.opengl.GL15.glBufferData(target, snapshot, usage));
    }

    public static void glBufferSubData(int target, long offset, FloatBuffer data) {
        final FloatBuffer snapshot = BufferUtil.snapshot(data);
        exec.execute(() -> org.lwjgl.opengl.GL15.glBufferSubData(target, offset, snapshot));
    }

    public static boolean glUnmapBuffer(int target) {
        return exec.get(() -> org.lwjgl.opengl.GL15.glUnmapBuffer(target));
    }
}
