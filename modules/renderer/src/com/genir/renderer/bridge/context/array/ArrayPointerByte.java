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
}
