package com.genir.renderer.bridge.impl;

import org.lwjgl.opengl.Display;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class Executor {
    private static final AtomicInteger threadCounter = new AtomicInteger(0);

    private final AtomicReference<RuntimeException> exception = new AtomicReference<>();
    private boolean exceptionCaptured = false; // Accessed by rendering thread.

    private final ExecutorService exec = Executors.newSingleThreadExecutor(runnable -> {
        Thread t = new Thread(runnable);
        t.setDaemon(true);
        t.setName("Render-Thread-" + threadCounter.getAndIncrement());

        return t;
    });

    static final int batchCapacity = 128;
    private List<Runnable> commandBuffer = new ArrayList<>(batchCapacity);

    public void execute(Runnable command) {
        commandBuffer.add(command);

        if (commandBuffer.size() == batchCapacity) {
            flushCommands();
        }
    }

    /**
     * Execute callable and block until it returns.
     * This method stalls the concurrent pipeline.
     */
    public void wait(Runnable command) {
//        log(Executor.class, "wait");
//        logStack();

        flushCommands();

        try {
            exec.submit(() -> tryRun(List.of(command))).get();
        } catch (Throwable t) {
            throw new RuntimeException(command + " " + t);
        }
    }

    /**
     * Executes callable and block until it returns.
     * Same as wait, but stalls the concurrent pipeline
     * on purpose, to synchronize threads.
     */
    public void barrier(Runnable command) {
        flushCommands();

        try {
            exec.submit(() -> tryRun(List.of(command))).get();
        } catch (Throwable t) {
            throw new RuntimeException(command + " " + t);
        }
    }

    /**
     * Execute callable and block until it returns a value.
     * This method stalls the concurrent pipeline.
     */
    public <T> T get(Callable<T> task) {
//        log(Executor.class, "get");
//        logStack();

        flushCommands();

        try {
            return exec.submit(task).get();
        } catch (Throwable t) {
            throw new RuntimeException(task + " " + t);
        }
    }

    private void flushCommands() {
        final List<Runnable> currentBatch = commandBuffer;
        commandBuffer = new ArrayList<>(batchCapacity);

        exec.execute(() -> tryRun(currentBatch));

        // If the rendering thread throws an exception, crash the application.
        // This ensures a clear log message. Rethrow the exception only once,
        // to not interrupt main thread cleanup triggered by the first rethrow.
        RuntimeException e = exception.getAndSet(null);
        if (e != null) {
            throw e;
        }
    }

    private void tryRun(List<Runnable> commands) {
        for (Runnable command : commands) {
            // Rendering thread has already thrown an exception.
            // Skip further commands, except get, to avoid a potential
            // hard crash without logging.
            if (exceptionCaptured) {
                return;
            }

            try {
                command.run();
            } catch (Throwable t) {
                exceptionCaptured = true;
                exception.set(new RuntimeException(command + " " + t));

                // Destroy the display. Main thread will attempt to do the cleanup itself,
                // but its commands are ignored after an exception was thrown.
                Display.destroy();
            }
        }
    }
}
