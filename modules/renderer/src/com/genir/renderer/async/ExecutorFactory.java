package com.genir.renderer.async;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class ExecutorFactory {
    public static ExecutorService newSingleThreadExecutor(String name, AsyncException exceptionHandler) {
        return newExecutor(1, name, exceptionHandler);
    }

    public static ExecutorService newExecutor(int threadNumber, String name, AsyncException exceptionHandler) {
        return Executors.newFixedThreadPool(threadNumber, runnable -> {
            Thread t = new Thread(runnable);
            t.setDaemon(true);

            if (exceptionHandler != null) {
                t.setUncaughtExceptionHandler(exceptionHandler.getHandler());
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
