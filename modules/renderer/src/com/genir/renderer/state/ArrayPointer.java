package com.genir.renderer.state;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public record ArrayPointer(int size, int type, int stride, Buffer pointer) {
    public ArraySnapshot getSnapshot() {
        if (pointer instanceof ByteBuffer) {
            byte[] snapshot = BufferUtil.snapshotArray((ByteBuffer) pointer);
            return new ArraySnapshot(size, type, stride, snapshot.length * Byte.BYTES, snapshot);
        } else if (pointer instanceof FloatBuffer) {
            float[] snapshot = BufferUtil.snapshotArray((FloatBuffer) pointer);
            return new ArraySnapshot(size, type, stride, snapshot.length * Float.BYTES, snapshot);
        } else if (pointer == null) {
            return new ArraySnapshot(size, type, stride, 0, null); // VBO
        }

        return null;
    }
}
