package com.genir.renderer.bridge.impl;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

public class Executor {
    private final ExecutorService exec = Executors.newSingleThreadExecutor();

    public void execute(Runnable command) {
        exec.execute(command);
    }

    public void wait(Runnable command) {
        FutureTask<?> task = new FutureTask<>(command, null);
        exec.execute(task);

        try {
            task.get();
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    public <T> T get(Callable<T> task) {
        try {
            return exec.submit(task).get();
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }
}
