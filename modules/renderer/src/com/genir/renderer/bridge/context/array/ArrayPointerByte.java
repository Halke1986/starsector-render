package com.genir.renderer.bridge.context.array;

import java.nio.ByteBuffer;

public class ArrayPointerByte extends ArrayPointer {
    public final ByteBuffer pointer;

    public ArrayPointerByte(int size, int type, int stride, ByteBuffer pointer) {
        super(size, type, stride);

        this.pointer = pointer;
    }

    @Override
    public ArraySnapshot makeSnapshot() {
        return new ArraySnapshotByte(this);
    }


    public int getCapacity() {
        if (size <= 0 || stride < 0) {
            throw new IllegalArgumentException("Invalid array layout: size=" + size + " stride=" + stride);
        }

        int elementBytes = size * getTypeBytes(type);
        int strideBytes = stride == 0 ? elementBytes : stride;
        int bytesRemaining = pointer.remaining();

        if (bytesRemaining < elementBytes) {
            return 0;
        }

        return 1 + (bytesRemaining - elementBytes) / strideBytes;
    }
}
