package com.genir.renderer.bridge.impl;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public record ArrayPointer(int size, int type, int stride, Buffer buffer) {
    public ArraySnapshot getSnapshot() {
        if (buffer instanceof ByteBuffer) {
            byte[] snapshot = BufferUtil.snapshotArray((ByteBuffer) buffer);
            return new ArraySnapshot(size, type, stride, snapshot.length * Byte.BYTES, snapshot);
        } else if (buffer instanceof FloatBuffer) {
            float[] snapshot = BufferUtil.snapshotArray((FloatBuffer) buffer);
            return new ArraySnapshot(size, type, stride, snapshot.length * Float.BYTES, snapshot);
        }

        return null;
    }
}
