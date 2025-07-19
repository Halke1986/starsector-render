package com.genir.renderer.bridge.impl;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

import static com.genir.renderer.Debug.log;
import static com.genir.renderer.Debug.logStack;

public class Executor {
    private final ExecutorService exec = Executors.newSingleThreadExecutor();

    public void execute(Runnable command) {
        exec.execute(command);
    }

    public void wait(Runnable command) {
//        log(Executor.class, "wait");
//        logStack();

        FutureTask<?> task = new FutureTask<>(command, null);
        exec.execute(task);

        try {
            task.get();
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    public <T> T get(Callable<T> task) {
//        log(Executor.class, "get");
//        logStack();

        try {
            return exec.submit(task).get();
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }
}
