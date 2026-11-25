package com.genir.renderer.bridge.context.array;

public class ArrayPointerGLBuffer extends ArrayPointer {
    public final long pointer;

    public ArrayPointerGLBuffer(int size, int type, int stride, long pointer) {
        super(size, type, stride);

        this.pointer = pointer;
    }

    @Override
    public ArraySnapshot makeSnapshot() {
        return new ArraySnapshotGLBuffer(this);
    }
}
