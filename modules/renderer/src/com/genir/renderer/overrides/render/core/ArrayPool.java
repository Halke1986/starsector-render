package com.genir.renderer.overrides.render.core;

import java.util.Arrays;

import static com.genir.renderer.debug.Debug.asertEqual;

public class ArrayPool {
    public static ArrayPool arrayPool = new ArrayPool();

    private final Pool[] pools = new Pool[32];

    public ArrayPool() {
        for (int i = 0; i < pools.length; i++) {
            pools[i] = new Pool(i);
        }
    }

    private int poolIdx(int x) {
        if (x <= 0) {
            return 0;
        }

        return 32 - Integer.numberOfLeadingZeros(x - 1);
    }

    public float[] get(int size) {
        return pools[poolIdx(size)].get();
    }

    public void put(float[] arr) {
        pools[poolIdx(arr.length)].put(arr);
    }

    private static class Pool {
        int arraySize;
        int size = 0;
        float[][] arrays = new float[1][];

        Pool(int idx) {
            arraySize = 1 << idx;
        }

        synchronized float[] get() {
            if (size == 0) {
                return new float[arraySize];
            }

            size--;
            float[] arr = arrays[size];
            arrays[size] = null;

            return arr;
        }

        synchronized void put(float[] arr) {
            asertEqual(arraySize, arr.length, this);

            if (size >= arrays.length) {
                arrays = Arrays.copyOf(arrays, arrays.length * 2);
            }

            arrays[size] = arr;
            size++;
        }
    }
}
