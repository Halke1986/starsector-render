package com.genir.renderer.bridge;

import com.genir.renderer.bridge.impl.BufferUtil;

import java.nio.FloatBuffer;

import static com.genir.renderer.Debug.throwUnsupportedOperation;
import static com.genir.renderer.bridge.impl.Bridge.*;

public class GL15 {
    public static void glBindBuffer(int target, int buffer) {
        clientAttribTracker.glVertexPointer(0, 0, null);
        clientAttribTracker.glColorPointer(0, false, 0, null);
        clientAttribTracker.glTexCoordPointer(0, 0, null);

        vertexInterceptor.arraysTouched();

        if (listManager.isRecording()) {
            throwUnsupportedOperation("glBindBuffer");
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL15.glBindBuffer(target, buffer));
        }
    }

    public static void glDeleteBuffers(int buffer) {
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
        final FloatBuffer snapshot = BufferUtil.snapshot(data);

        if (listManager.isRecording()) {
            throwUnsupportedOperation("glBufferData");
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL15.glBufferData(target, snapshot, usage));
        }
    }
}
