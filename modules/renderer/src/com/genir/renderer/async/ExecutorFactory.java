package com.genir.renderer.async;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ExecutorFactory {
    public static ExecutorService newSingleThreadExecutor(String name) {
        return newExecutor(1, name, null);
    }

    public static ExecutorService newExecutor(int threadNumber, String name, Thread.UncaughtExceptionHandler uah) {
        return Executors.newFixedThreadPool(threadNumber, runnable -> {
            Thread t = new Thread(runnable);
            t.setDaemon(true);

            if (uah != null) {
                t.setUncaughtExceptionHandler(uah);
            }

            t.setName(t.getName() + "-" + name);

            return t;
        });
    }
}
