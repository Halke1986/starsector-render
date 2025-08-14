package com.genir.renderer.bridge;

import java.nio.FloatBuffer;

public class ARBVertexBufferObject {
    public static int glGenBuffersARB() {
        return GL15.glGenBuffers();
    }

    public static void glDeleteBuffersARB(int buffer) {
        GL15.glDeleteBuffers(buffer);
    }

    public static void glBindBufferARB(int target, int buffer) {
        GL15.glBindBuffer(target, buffer);
    }

    public static void glBufferDataARB(int target, long data_size, int usage) {
        GL15.glBufferData(target, data_size, usage);
    }

    public static void glBufferSubDataARB(int target, long offset, FloatBuffer data) {
        GL15.glBufferSubData(target, offset, data);
    }
}
