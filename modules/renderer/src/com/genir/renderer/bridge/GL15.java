package com.genir.renderer.bridge;

import java.nio.FloatBuffer;

import static com.genir.renderer.bridge.impl.State.exec;

public class GL15 {
    public static void glBindBuffer(int target, int buffer) { // MOD
        exec.execute(() -> org.lwjgl.opengl.GL15.glBindBuffer(target, buffer));
    }

    public static void glDeleteBuffers(int buffer) {
        exec.execute(() -> org.lwjgl.opengl.GL15.glDeleteBuffers(buffer));
    }

    /**
     * Blocking.
     */
    public static int glGenBuffers() { // MOD
        return exec.get(() -> org.lwjgl.opengl.GL15.glGenBuffers());
    }

    public static void glBufferData(int target, FloatBuffer data, int usage) { // MOD
        exec.wait(() -> org.lwjgl.opengl.GL15.glBufferData(target, data, usage));
    }
}
