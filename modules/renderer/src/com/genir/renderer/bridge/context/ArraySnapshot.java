package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.interfaces.Releasable;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public record ArraySnapshot(int size, int type, int stride, int bytes, Object snapshot) implements Releasable {
    public void store(ByteBuffer buffer) {
        if (snapshot instanceof BufferPool.ByteBufferSnapshot bytePointer) {
            ByteBuffer bytes = bytePointer.buffer;
            buffer.put(buffer.position(), bytes, 0, bytes.limit());
        } else if (snapshot instanceof BufferPool.FloatBufferSnapshot floatPointer) {
            FloatBuffer floats = floatPointer.buffer;
            buffer.asFloatBuffer().put(buffer.position(), floats, 0, floats.limit());
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
