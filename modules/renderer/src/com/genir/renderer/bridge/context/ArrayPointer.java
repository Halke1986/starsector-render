package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.pool.BufferPool;
import com.genir.renderer.bridge.pool.BufferPool.ByteBufferSnapshot;
import com.genir.renderer.bridge.pool.BufferPool.FloatBufferSnapshot;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public record ArrayPointer(int size, int type, int stride, Buffer pointer) {
    public ArraySnapshot getSnapshot() {
        if (pointer instanceof ByteBuffer bytePointer) {
            ByteBufferSnapshot snapshot = BufferPool.bufferPool.snapshot(bytePointer);
            return new ArraySnapshot(size, type, stride, bytePointer.limit() * Byte.BYTES, snapshot);
        } else if (pointer instanceof FloatBuffer floatPointer) {
            FloatBufferSnapshot snapshot = BufferPool.bufferPool.snapshot(floatPointer);
            return new ArraySnapshot(size, type, stride, floatPointer.limit() * Float.BYTES, snapshot);
        } else if (pointer == null) {
            return new ArraySnapshot(size, type, stride, 0, null); // VBO
        }

        return null;
    }
}
