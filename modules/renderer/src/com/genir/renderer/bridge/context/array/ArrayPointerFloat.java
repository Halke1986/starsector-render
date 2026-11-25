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
}
