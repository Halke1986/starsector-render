package com.genir.renderer.bridge.context.array;

public class ArraySnapshotGLBuffer extends ArraySnapshot {
    public final long pointer;

    public ArraySnapshotGLBuffer(ArrayPointerGLBuffer array) {
        super(array);
        this.pointer = array.pointer;
    }

    @Override
    public void release() {
    }
}
