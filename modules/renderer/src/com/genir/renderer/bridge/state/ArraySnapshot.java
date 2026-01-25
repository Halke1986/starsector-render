package com.genir.renderer.bridge.state;

import java.nio.ByteBuffer;

public record ArraySnapshot(int size, int type, int stride, int bytes, Object snapshot) {
    public void store(ByteBuffer buffer) {
        if (snapshot instanceof byte[]) {
            buffer.put((byte[]) snapshot);
        } else if (snapshot instanceof float[]) {
            buffer.asFloatBuffer().put((float[]) snapshot);
        } else if (snapshot == null) {
            // Do not store, data is already in GPU side VBO buffer.
        }
    }
}
