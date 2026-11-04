package com.genir.renderer.bridge.pool;

public class ArrayPool {
    public static ArrayPool arrayPool = new ArrayPool();

    private final Pool[] pools = new Pool[32];

    public ArrayPool() {
        for (int i = 0; i < pools.length; i++) {
            pools[i] = new Pool();
        }
    }

    private int poolIdx(int x) {
        if (x <= 0) {
            return 0;
        }

        return 32 - Integer.numberOfLeadingZeros(x - 1);
    }

    public float[] get(int size) {
        Object arr = pools[poolIdx(size)].get();
        if (arr != null) {
            return (float[]) arr;
        }

        return new float[1 << poolIdx(size)];
    }

    public void put(float[] arr) {
        pools[poolIdx(arr.length)].put(arr);
    }
}
