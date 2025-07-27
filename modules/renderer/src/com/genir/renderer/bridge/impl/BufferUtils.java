package com.genir.renderer.bridge.impl;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class BufferUtils {
    /**
     * Returns a snapshot copy of the given FloatBuffer, preserving its content from position 0 to limit.
     */
    public static FloatBuffer snapshot(FloatBuffer params) {
        FloatBuffer reader = params.duplicate();
        reader.rewind();

        FloatBuffer snapshot = org.lwjgl.BufferUtils.createFloatBuffer(reader.limit());
        snapshot.put(reader);

        snapshot.flip();
        return snapshot;
    }

    public static ByteBuffer snapshot(ByteBuffer params) {
        ByteBuffer reader = params.duplicate();
        reader.rewind();

        ByteBuffer snapshot = org.lwjgl.BufferUtils.createByteBuffer(reader.limit());
        snapshot.put(reader);

        snapshot.flip();
        return snapshot;
    }

    public static FloatBuffer resize(int size, FloatBuffer old) {
        FloatBuffer n = org.lwjgl.BufferUtils.createFloatBuffer(size);

        FloatBuffer oldReader = old.duplicate();
        oldReader.flip();

        n.put(oldReader);
        return n;
    }
}
