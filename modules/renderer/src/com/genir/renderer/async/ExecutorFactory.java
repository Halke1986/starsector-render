package com.genir.renderer.async;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

public class ExecutorFactory {
    public static ExecutorService newSingleThreadExecutor(String name) {
        return newMultiThreadedExecutor(1, name);
    }

    public static ExecutorService newMultiThreadedExecutor(int threadNumber, String name) {
        final AtomicInteger threadCounter = new AtomicInteger(0);

        return Executors.newFixedThreadPool(threadNumber, runnable -> {
            Thread t = new Thread(runnable);
            t.setDaemon(true);

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
