package com.genir.renderer.bridge.impl;

import java.lang.reflect.Array;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class BufferUtil {
    /**
     * Returns a snapshot copy of the given FloatBuffer, preserving its content and state.
     */
    public static FloatBuffer snapshot(FloatBuffer params) {
        if (params == null) {
            return null;
        }

        FloatBuffer snapshot = org.lwjgl.BufferUtils.createFloatBuffer(params.capacity());
        snapshot.put(0, params, 0, params.limit());

        snapshot.position(params.position());
        snapshot.limit(params.limit());

        return snapshot;
    }

    public static ByteBuffer snapshot(ByteBuffer params) {
        if (params == null) {
            return null;
        }

        ByteBuffer snapshot = org.lwjgl.BufferUtils.createByteBuffer(params.capacity());
        snapshot.put(0, params, 0, params.limit());

        snapshot.position(params.position());
        snapshot.limit(params.limit());

        return snapshot;
    }

    public static IntBuffer snapshot(IntBuffer params) {
        if (params == null) {
            return null;
        }

        IntBuffer snapshot = org.lwjgl.BufferUtils.createIntBuffer(params.capacity());
        snapshot.put(0, params, 0, params.limit());

        snapshot.position(params.position());
        snapshot.limit(params.limit());

        return snapshot;
    }

    public static float[] snapshotArray(FloatBuffer params) {
        if (params == null) {
            return null;
        }

        float[] snapshot = new float[params.limit()];
        params.get(0, snapshot, 0, snapshot.length);

        return snapshot;
    }

    public static byte[] snapshotArray(ByteBuffer params) {
        if (params == null) {
            return null;
        }

        byte[] snapshot = new byte[params.limit()];
        params.get(0, snapshot, 0, snapshot.length);

        return snapshot;
    }

    public static FloatBuffer reallocate(int size, FloatBuffer old) {
        FloatBuffer n = org.lwjgl.BufferUtils.createFloatBuffer(size);

        n.put(0, old, 0, Math.min(size, old.limit()));
        n.position(Math.min(size, old.position()));
        return n;
    }

    public static <T> T[] reallocate(Class<T> c, int size, T[] old) {
        T[] n = (T[]) Array.newInstance(c, size);
        System.arraycopy(old, 0, n, 0, Math.min(size, old.length));

        return n;
    }

    public static float[] reallocate(int size, float[] old) {
        float[] n = new float[size];
        System.arraycopy(old, 0, n, 0, Math.min(size, old.length));

        return n;
    }

    public static int capacityRequired(Buffer buffer, int elements) {
        int capacityRequired = buffer.position() + elements;
        int capacity = buffer.capacity();

        // Resize only if needed.
        if (capacity >= capacityRequired) {
            return -1;
        }

        do {
            capacity *= 2;
        } while (capacity < capacityRequired);

        return capacity;
    }
}
