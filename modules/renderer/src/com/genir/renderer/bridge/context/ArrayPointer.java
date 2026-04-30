package com.genir.renderer.bridge.context;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public record ArrayPointer(int size, int type, int stride, Buffer pointer) {
    public ArraySnapshot getSnapshot() {
        if (pointer instanceof ByteBuffer) {
            float[] snapshot = BufferUtil.snapshotArray((ByteBuffer) pointer);
            return new ArraySnapshot(size, type, stride, snapshot);
        } else if (pointer instanceof FloatBuffer) {
            float[] snapshot = BufferUtil.snapshotArray((FloatBuffer) pointer);
            return new ArraySnapshot(size, type, stride, snapshot);
        } else if (pointer == null) {
            return new ArraySnapshot(size, type, stride, null); // VBO
        }

        return null;
    }
}
