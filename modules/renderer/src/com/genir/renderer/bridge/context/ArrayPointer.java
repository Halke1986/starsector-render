package com.genir.renderer.bridge.context;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import com.genir.renderer.bridge.context.BufferPool.FloatBufferSnapshot;
import com.genir.renderer.bridge.context.BufferPool.ByteBufferSnapshot;

public record ArrayPointer(int size, int type, int stride, Buffer pointer) {
    public ArraySnapshot getSnapshot(BufferPool bufferPool) {
        if (pointer instanceof ByteBuffer bytePointer) {
            ByteBufferSnapshot snapshot = bufferPool.snapshot(bytePointer);
            return new ArraySnapshot(size, type, stride, bytePointer.limit() * Byte.BYTES, snapshot);
        } else if (pointer instanceof FloatBuffer floatPointer) {
            FloatBufferSnapshot snapshot = bufferPool.snapshot(floatPointer);
            return new ArraySnapshot(size, type, stride, floatPointer.limit() * Float.BYTES, snapshot);
        } else if (pointer == null) {
            return new ArraySnapshot(size, type, stride, 0, null); // VBO
        }

        return null;
    }
}
