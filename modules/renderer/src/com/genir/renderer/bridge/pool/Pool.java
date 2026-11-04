package com.genir.renderer.bridge.pool;

import java.util.Arrays;

public class Pool {
    int size = 0;
    Object[] pool = new Object[1];

    public synchronized Object get() {
        if (size == 0) {
            return null;
        }

        size--;
        Object result = pool[size];
        pool[size] = null;
        return result;
    }

    public synchronized void put(Object arr) {
        if (size >= pool.length) {
            pool = Arrays.copyOf(pool, pool.length * 2);
        }

        pool[size] = arr;
        size++;
    }
}