package com.genir.renderer.bridge.context;

import org.lwjgl.BufferUtils;

import java.lang.reflect.Array;
import java.nio.*;

import static com.genir.renderer.debug.Debug.asert;

public class BufferUtil {
    /**
     * Returns a snapshot copy of the given FloatBuffer, preserving its content and state.
     */
    public static FloatBuffer snapshot(FloatBuffer params) {
        if (params == null) {
            return null;
        }

        FloatBuffer snapshot = BufferUtils.createFloatBuffer(params.capacity());
        snapshot.put(0, params, 0, params.limit());

        snapshot.position(params.position());
        snapshot.limit(params.limit());

        return snapshot;
    }

    public static ByteBuffer snapshot(ByteBuffer params) {
        if (params == null) {
            return null;
        }

        ByteBuffer snapshot = BufferUtils.createByteBuffer(params.capacity());
        snapshot.put(0, params, 0, params.limit());

        snapshot.position(params.position());
        snapshot.limit(params.limit());

        return snapshot;
    }

    public static IntBuffer snapshot(IntBuffer params) {
        if (params == null) {
            return null;
        }

        IntBuffer snapshot = BufferUtils.createIntBuffer(params.capacity());
        snapshot.put(0, params, 0, params.limit());

        snapshot.position(params.position());
        snapshot.limit(params.limit());

        return snapshot;
    }

    public static ShortBuffer snapshot(ShortBuffer params) {
        if (params == null) {
            return null;
        }

        ShortBuffer snapshot = BufferUtils.createShortBuffer(params.capacity());
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

    public static float[] snapshotArray(ByteBuffer params) {
        if (params == null) {
            return null;
        }

        int bytes = params.limit();
        int floats = bytes / Float.BYTES;

        asert(bytes % Float.BYTES == 0); // TODO handle byte reminder

        float[] snapshot = new float[floats];
        params.asFloatBuffer().get(0, snapshot, 0, snapshot.length);

        return snapshot;
    }

    public static FloatBuffer reallocate(int size, FloatBuffer old) {
        FloatBuffer n = BufferUtils.createFloatBuffer(size);

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

    public static int[] reallocate(int size, int[] old) {
        int[] n = new int[size];
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

    public static void putIfPossible(IntBuffer buffer, int element) {
        if (buffer != null && buffer.hasRemaining()) {
            buffer.put(element);
        }
    }
}
