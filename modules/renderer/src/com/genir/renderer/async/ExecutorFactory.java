package com.genir.renderer.async;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

public class ExecutorFactory {
    public static ExecutorService newSingleThreadExecutor(String name) {
        final AtomicInteger threadCounter = new AtomicInteger(0);

        return Executors.newSingleThreadExecutor(runnable -> {
            Thread t = new Thread(runnable);
            t.setDaemon(true);
            t.setName(name + "-" + threadCounter.getAndIncrement());

            return t;
        });
    }
}
