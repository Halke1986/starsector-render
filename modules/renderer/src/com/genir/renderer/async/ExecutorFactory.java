package com.genir.renderer.async;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

public class ExecutorFactory {
    public static ExecutorService newSingleThreadExecutor(String name) {
        return newExecutor(1, name, null);
    }

    public static ExecutorService newExecutor(int threadNumber, String name, Thread.UncaughtExceptionHandler uah) {
        final AtomicInteger threadCounter = new AtomicInteger(0);

        return Executors.newFixedThreadPool(threadNumber, runnable -> {
            Thread t = new Thread(runnable);
            t.setDaemon(true);

            if (uah != null) {
                t.setUncaughtExceptionHandler(uah);
            }

            int threadIdx = threadCounter.getAndIncrement();
            if (threadIdx == 0 && threadNumber == 1) {
                t.setName(name);
            } else {
                t.setName(name + "-" + threadIdx);
            }

            return t;
        });
    }
}
