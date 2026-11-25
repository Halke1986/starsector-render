package com.genir.renderer.bridge.context.array;

import com.genir.renderer.bridge.pool.BufferPool;

public class ArraySnapshotFloat extends ArraySnapshot {
    public final BufferPool.FloatBufferSnapshot snapshot;

    public ArraySnapshotFloat(ArrayPointerFloat array) {
        super(array);
        this.snapshot = BufferPool.bufferPool.snapshot(array.pointer);
    }

    @Override
    public void release() {
        snapshot.release();
    }
}
