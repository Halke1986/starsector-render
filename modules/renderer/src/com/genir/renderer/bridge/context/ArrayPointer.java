package com.genir.renderer.bridge.context;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public record ArrayPointer(int size, int type, int stride, Buffer pointer) {
    public ArraySnapshot getSnapshot(BufferPool bufferPool) {
        if (pointer instanceof ByteBuffer) {
            byte[] snapshot = BufferUtil.snapshotArray((ByteBuffer) pointer);
            return new ArraySnapshot(size, type, stride, snapshot.length * Byte.BYTES, snapshot);
        } else if (pointer instanceof FloatBuffer floatPointer) {
            BufferPool.FloatBufferSnapshot snapshot = bufferPool.snapshot(floatPointer);
            return new ArraySnapshot(size, type, stride, floatPointer.limit() * Float.BYTES, snapshot);
        } else if (pointer == null) {
            return new ArraySnapshot(size, type, stride, 0, null); // VBO
        }

        return null;
    }
}
