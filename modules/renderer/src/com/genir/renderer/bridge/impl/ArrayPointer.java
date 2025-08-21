package com.genir.renderer.bridge.impl;

import org.lwjgl.opengl.GL11;

import java.nio.Buffer;
import java.nio.FloatBuffer;

public class ArrayPointer {
    private final int size;
    private final int type;
    private final int stride;
    private final Buffer buffer;

    public ArrayPointer(int size, int stride, FloatBuffer pointer) {
        this.size = size;
        this.type = GL11.GL_FLOAT;
        this.stride = stride;
        this.buffer = pointer;
    }

    public ArraySnapshot getSnapshot() {
        if (buffer instanceof FloatBuffer) {
            float[] snapshot = BufferUtil.snapshotArray((FloatBuffer) buffer);
            return new ArraySnapshot(size, type, stride, snapshot.length * Float.BYTES, snapshot);
        }

        return null;
    }
}
