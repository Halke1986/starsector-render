package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.context.commands.Releasable;

import java.nio.ByteBuffer;

public record ArraySnapshot(int size, int type, int stride, int bytes, Object snapshot) implements Releasable {
    public void store(ByteBuffer buffer) {
        if (snapshot instanceof BufferPool.ByteBufferSnapshot bytePointer) {
            buffer.put(bytePointer.buffer);
        } else if (snapshot instanceof BufferPool.FloatBufferSnapshot floatPointer) {
            buffer.asFloatBuffer().put(floatPointer.buffer);
        } else if (snapshot == null) {
            // Do not store, data is already in GPU side VBO buffer.
        }
    }

    @Override
    public void release() {
        if (snapshot instanceof Releasable releasable) {
            releasable.release();
        }
    }
}
