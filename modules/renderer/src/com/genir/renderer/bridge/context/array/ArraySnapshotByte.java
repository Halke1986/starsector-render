package com.genir.renderer.bridge.context.array;

import com.genir.renderer.bridge.pool.BufferPool;

public class ArraySnapshotByte extends ArraySnapshot {
    public final BufferPool.ByteBufferSnapshot snapshot;

    public ArraySnapshotByte(ArrayPointerByte array) {
        super(array);
        this.snapshot = BufferPool.bufferPool.snapshot(array.pointer);
    }

    @Override
    public void release() {
        snapshot.release();
    }
}
