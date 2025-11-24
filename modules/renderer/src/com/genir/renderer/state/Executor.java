package com.genir.renderer.state;

import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.state.stall.StallDetector;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;

public class Executor {
    private final ListManager listManager;
    private final StallDetector stallDetector;

    private final AtomicReference<RuntimeException> exception = new AtomicReference<>();
    private boolean exceptionCaptured = false;

    static final int BATCH_CAPACITY = 2048;
    private Runnable[] commandBatch = new Runnable[BATCH_CAPACITY];
    private int batchSize = 0;

    private static final ExecutorService execActual = ExecutorFactory.newSingleThreadExecutor("FR-Render");

    public Executor(ListManager listManager, StallDetector stallDetector) {
        this.listManager = listManager;
        this.stallDetector = stallDetector;
    }

    synchronized public void execute(Runnable command) {
        rethrowExecutionException();

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

    synchronized public void wait(Runnable command, boolean cleanup) {
        rethrowExecutionException();

        stallDetector.detectStall();
        flushCommands();

        long start = System.nanoTime();
        try {
            execActual.submit(() -> executeCommand(command, cleanup)).get();
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            Profiler.FrameMark.markStall(start);
        }
    }

    synchronized public Future<?> submit(Runnable command) {
        rethrowExecutionException();

        flushCommands();

        return execActual.submit(() -> executeCommand(command, false));
    }

    /**
     * Execute callable and block until it returns a value.
     * This method stalls the concurrent pipeline.
     */
    synchronized public <T> T get(Callable<T> task) {
        stallDetector.detectStall();
        flushCommands();

        long start = System.nanoTime();
        try {
            return execActual.submit(() -> {
                long taskStart = System.nanoTime();
                try {
                    return task.call();
                } finally {
                    Profiler.FrameMark.markRenderWork(taskStart);
                }
            }).get();
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            Profiler.FrameMark.markStall(start);
        }
    }

    private void flushCommands() {
        if (batchSize == 0) {
            return;
        }

        final Runnable[] currentBatch = commandBatch;
        final int count = batchSize;

        commandBatch = new Runnable[BATCH_CAPACITY];
        batchSize = 0;

        execActual.execute(() -> executeCommands(currentBatch, count, false));
    }

    private void executeCommand(Runnable command, boolean cleanup) {
        executeCommands(new Runnable[]{command}, 1, cleanup);
    }

    private void executeCommands(Runnable[] commands, int count, boolean cleanup) {
        long start = System.nanoTime();
        try {
            // Rendering thread has already thrown an exception.
            // Skip further commands, except get and cleanup,
            // to avoid a potential hard crash without logging.
            if (exceptionCaptured && !cleanup) {
                return;
            }

            // Run all scheduled commands.
            for (int i = 0; i < count; i++) {
                Runnable command = commands[i];

                // Record the command instead of running it immediately.
                if (command instanceof Recordable && listManager.isRecording()) {
                    listManager.record(command);
                    continue;
                }

                command.run();
            }

        } catch (RuntimeException e) {
            setExecutionException(e);
        } catch (Throwable t) {
            setExecutionException(new RuntimeException(t));
        } finally {
            Profiler.FrameMark.markRenderWork(start);
        }
    }

    private void setExecutionException(RuntimeException e) {
        if (!exceptionCaptured) {
            exceptionCaptured = true;
            exception.set(e);
        }
    }

    private void rethrowExecutionException() {
        // If the rendering thread throws an exception, crash the application.
        // This ensures a clear log message. Rethrow the exception only once,
        // to not interrupt main thread cleanup triggered by the first rethrow.
        RuntimeException e = exception.getAndSet(null);
        if (e != null) {
            throw e;
        }
    }
}
