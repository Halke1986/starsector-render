package com.genir.renderer.bridge.context.array;

import java.nio.FloatBuffer;

public class ArrayPointerFloat extends ArrayPointer {
    public final FloatBuffer pointer;

    public ArrayPointerFloat(int size, int type, int stride, FloatBuffer pointer) {
        super(size, type, stride);

        this.pointer = pointer;
    }

    @Override
    public ArraySnapshot makeSnapshot() {
        return new ArraySnapshotFloat(this);
    }

    public int getCapacity() {
        if (size <= 0 || stride < 0) {
            throw new IllegalArgumentException("Invalid array layout: size=" + size + " stride=" + stride);
        }

        int elementBytes = size * getTypeBytes(type);
        int strideBytes = stride == 0 ? elementBytes : stride;
        int bytesRemaining = pointer.remaining() * Float.BYTES;

        if (bytesRemaining < elementBytes) {
            return 0;
        }

        return 1 + (bytesRemaining - elementBytes) / strideBytes;
    }
}
