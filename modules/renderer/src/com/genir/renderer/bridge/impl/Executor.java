package com.genir.renderer.bridge.impl;

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

    static final int BATCH_CAPACITY = 2048;
    private Runnable[] commandBatch = new Runnable[BATCH_CAPACITY];
    private int batchSize = 0;

    public void execute(Runnable command) {
        commandBatch[batchSize] = command;
        batchSize++;

        if (batchSize == BATCH_CAPACITY) {
            flushCommands();
        }
    }

    /**
     * Execute callable and block until it returns.
     * This method stalls the concurrent pipeline.
     */
    public void wait(Runnable command) {
        wait(command, false);
    }

    public void wait(Runnable command, boolean cleanup) {
        flushCommands();

        try {
            exec.submit(() -> tryRun(command, cleanup)).get();
        } catch (RuntimeException e) {
            throw e;
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    /**
     * Execute callable and block until it returns a value.
     * This method stalls the concurrent pipeline.
     */
    public <T> T get(Callable<T> task) {
        flushCommands();

        try {
            return exec.submit(task).get();
        } catch (RuntimeException e) {
            throw e;
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    public void flushCommands() {
        final Runnable[] currentBatch = commandBatch;
        final int count = batchSize;

        commandBatch = new Runnable[BATCH_CAPACITY];
        batchSize = 0;

        exec.execute(() -> tryRun(currentBatch, count));

        // If the rendering thread throws an exception, crash the application.
        // This ensures a clear log message. Rethrow the exception only once,
        // to not interrupt main thread cleanup triggered by the first rethrow.
        RuntimeException e = exception.getAndSet(null);
        if (e != null) {
            throw e;
        }
    }

    private void tryRun(Runnable[] commands, int count) {
        // Rendering thread has already thrown an exception.
        // Skip further commands, except get and cleanup,
        // to avoid a potential hard crash without logging.
        if (exceptionCaptured) {
            return;
        }

        for (int i = 0; i < count; i++) {
            Runnable command = commands[i];
            try {
                command.run();
            } catch (RuntimeException e) {
                setException(e);
                return;
            } catch (Throwable t) {
                setException(new RuntimeException(t));
                return;
            }
        }
    }

    private void tryRun(Runnable command, boolean cleanup) {
        if (exceptionCaptured && !cleanup) {
            return;
        }

        try {
            command.run();
        } catch (RuntimeException e) {
            setException(e);
        } catch (Throwable t) {
            setException(new RuntimeException(t));
        }
    }

    private void setException(RuntimeException e) {
        if (!exceptionCaptured) {
            exceptionCaptured = true;
            exception.set(e);
        }
    }
}
