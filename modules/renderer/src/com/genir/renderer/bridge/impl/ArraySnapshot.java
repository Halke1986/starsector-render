package com.genir.renderer.bridge.impl;

import java.nio.ByteBuffer;

public record ArraySnapshot(int size, int type, int stride, int bytes, Object array) {
    public void store(ByteBuffer buffer) {
        if (array instanceof float[]) {
            buffer.asFloatBuffer().put((float[]) array);
        }
    }
}
