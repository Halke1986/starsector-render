package com.genir.renderer.bridge;

import java.nio.FloatBuffer;

import static com.genir.renderer.Debug.throwUnsupportedOperation;
import static com.genir.renderer.bridge.impl.Bridge.exec;
import static com.genir.renderer.bridge.impl.Bridge.listManager;

public class GL15 {
    public static void glBindBuffer(int target, int buffer) {
        if (listManager.isRecording()) {
            throwUnsupportedOperation("glBindBuffer");
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL15.glBindBuffer(target, buffer));
        }
    }

    public static void glDeleteBuffers(int buffer) { // MOD
        if (listManager.isRecording()) {
            throwUnsupportedOperation("glDeleteBuffers");
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL15.glDeleteBuffers(buffer));
        }
    }

    /**
     * Blocking.
     */
    public static int glGenBuffers() {
        if (listManager.isRecording()) {
            throwUnsupportedOperation("glGenBuffers");
            return 0;
        } else {
            return exec.get(() -> org.lwjgl.opengl.GL15.glGenBuffers());
        }
    }

    public static void glBufferData(int target, FloatBuffer data, int usage) {
        if (listManager.isRecording()) {
            throwUnsupportedOperation("glBufferData");
        } else {
            exec.wait(() -> org.lwjgl.opengl.GL15.glBufferData(target, data, usage));
        }
    }
}
