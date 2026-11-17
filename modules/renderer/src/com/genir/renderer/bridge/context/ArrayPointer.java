package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.pool.BufferPool;
import com.genir.renderer.bridge.pool.BufferPool.ByteBufferSnapshot;
import com.genir.renderer.bridge.pool.BufferPool.FloatBufferSnapshot;
import org.lwjgl.opengl.GL11;

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
        } else {
            throw new UnsupportedOperationException("unsupported array type: " + pointer);
        }
    }

    public int getCapacity() {
        // VBO array.
        if (pointer == null) {
            return -1;
        }

        if (size <= 0 || stride < 0) {
            throw new IllegalArgumentException("Invalid array layout: size=" + size + " stride=" + stride);
        }

        int elementBytes = size * getTypeBytes(type);
        int strideBytes = stride == 0 ? elementBytes : stride;

        int bytesRemaining;
        if (pointer instanceof ByteBuffer bytePointer) {
            bytesRemaining = bytePointer.remaining();
        } else if (pointer instanceof FloatBuffer floatPointer) {
            bytesRemaining = floatPointer.remaining() * Float.BYTES;
        } else {
            throw new UnsupportedOperationException("unsupported array type: " + pointer);
        }

        if (bytesRemaining < elementBytes) {
            return 0;
        }

        return 1 + (bytesRemaining - elementBytes) / strideBytes;
    }

    public static int getTypeBytes(int type) {
        return switch (type) {
            case GL11.GL_BYTE, GL11.GL_UNSIGNED_BYTE -> Byte.BYTES;
            case GL11.GL_SHORT, GL11.GL_UNSIGNED_SHORT -> Short.BYTES;
            case GL11.GL_INT, GL11.GL_UNSIGNED_INT -> Integer.BYTES;
            case GL11.GL_FLOAT -> Float.BYTES;
            case GL11.GL_DOUBLE -> Double.BYTES;

            default -> throw new UnsupportedOperationException("unknown type :" + type);
        };
    }
}
