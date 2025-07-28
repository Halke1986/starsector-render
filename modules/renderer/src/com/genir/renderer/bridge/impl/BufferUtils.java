package com.genir.renderer.bridge.impl;

import java.lang.reflect.Array;
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

    public static FloatBuffer reallocate(int size, FloatBuffer old) {
        FloatBuffer n = org.lwjgl.BufferUtils.createFloatBuffer(size);

        FloatBuffer oldReader = old.duplicate();
        oldReader.flip();

        n.put(0, oldReader, 0, Math.min(size, oldReader.limit()));
        return n;
    }

    public static <T> T[] reallocate(Class<T> c, int size, T[] old) {
        T[] n = (T[]) Array.newInstance(c, size);
        System.arraycopy(old, 0, n, 0, Math.min(size, old.length));

        return n;
    }
}
