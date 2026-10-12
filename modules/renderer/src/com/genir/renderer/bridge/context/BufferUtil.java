package com.genir.renderer.bridge.context;

import java.nio.IntBuffer;

public class BufferUtil {
    public static void putIfPossible(IntBuffer buffer, int element) {
        if (buffer != null && buffer.hasRemaining()) {
            buffer.put(element);
        }
    }

    public static int[] getArray(IntBuffer buffer) {
        if (buffer == null) {
            return null;
        }

        int[] arr = new int[buffer.remaining()];
        IntBuffer reader = buffer.duplicate();

        for (int i = 0; i < arr.length; i++) {
            arr[i] = reader.get();
        }

        return arr;
    }
}
