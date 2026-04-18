package com.genir.renderer.bridge.context;

import java.util.ArrayList;
import java.util.List;

public class Pool {
    private final List<Object> pool = new ArrayList<>();

    synchronized public Object get() {
        if (pool.isEmpty()) {
            return null;
        }

        return pool.remove(pool.size() - 1);
    }

    synchronized public void put(Object elem) {
        pool.add(elem);
    }
}
