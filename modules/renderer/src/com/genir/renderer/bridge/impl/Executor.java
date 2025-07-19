package com.genir.renderer.bridge.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

import static com.genir.renderer.Debug.log;
import static com.genir.renderer.Debug.logStack;

public class Executor {
    private final ExecutorService exec = Executors.newSingleThreadExecutor();

    static final int batchCapacity = 128;
    private List<Runnable> commandBuffer = new ArrayList<>(batchCapacity);

    public void execute(Runnable command) {
        commandBuffer.add(command);

        if (commandBuffer.size() == batchCapacity) {
            executeCommands();
        }
    }

    public void wait(Runnable command) {
        log(Executor.class, "wait");
        logStack();

        executeCommands();

        FutureTask<?> task = new FutureTask<>(command, null);
        exec.execute(task);

        try {
            task.get();
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    public void barrier(Runnable command) {
        executeCommands();

        FutureTask<?> task = new FutureTask<>(command, null);
        exec.execute(task);

        try {
            task.get();
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    public <T> T get(Callable<T> task) {
        log(Executor.class, "get");
        logStack();

        executeCommands();

        try {
            return exec.submit(task).get();
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    private void executeCommands() {
        List<Runnable> currentBatch = commandBuffer;
        commandBuffer = new ArrayList<>(batchCapacity);

        exec.execute(() -> {
            for (Runnable command : currentBatch) {
                command.run();
            }
        });
    }
}
