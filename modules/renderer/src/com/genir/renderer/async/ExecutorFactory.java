package com.genir.renderer.async;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class ExecutorFactory {
    public static ExecutorService newSingleThreadExecutor(String name, Thread.UncaughtExceptionHandler ueh) {
        return newExecutor(1, name, ueh);
    }

    public static ExecutorService newExecutor(int threadNumber, String name, Thread.UncaughtExceptionHandler ueh) {
        return Executors.newFixedThreadPool(threadNumber, runnable -> {
            Thread t = new Thread(runnable);
            t.setDaemon(true);

            if (ueh != null) {
                t.setUncaughtExceptionHandler(ueh);
            }

            t.setName(t.getName() + "-" + name);

            return t;
        });
    }

    public static void awaitTermination(ExecutorService exec) {
        try {
            exec.awaitTermination(30, TimeUnit.MINUTES);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
