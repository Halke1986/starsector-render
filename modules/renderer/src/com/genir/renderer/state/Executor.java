package com.genir.renderer.state;

import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.state.stall.StallDetector;
import org.apache.log4j.Logger;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;

import static java.lang.Math.min;

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
        commandIntegrityCheck(command);

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
        commandIntegrityCheck(command);

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
        commandIntegrityCheck(command);

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

        batchIntegrityCheck(commandBatch, batchSize);

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
            batchIntegrityCheck(commands, count);

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

    private void commandIntegrityCheck(Object command) {
        if (!(command instanceof Runnable)) {
            Logger logger = Logger.getLogger(Executor.class);
            logger.info("command " + command);

            throw new AssertionError("executor commandIntegrityCheck");
        }
    }

    private void batchIntegrityCheck(Runnable[] commands, int count) {
        boolean correct = true;

        if (count < 0 || count > commands.length) {
            correct = false;
        }

        if (commands.length != 1 && commands.length != BATCH_CAPACITY) {
            correct = false;
        }

        int actualCount = min(count, commands.length);

        for (int i = 0; i < actualCount; i++) {
            if (!(commands[i] instanceof Runnable)) {
                correct = false;
            }
        }

        for (int i = actualCount; i < commands.length; i++) {
            if (commands[i] != null) {
                correct = false;
            }
        }

        if (correct) {
            return;
        }

        Logger logger = Logger.getLogger(Executor.class);

        logger.info("count: " + count);
        logger.info("length: " + commands.length);
        for (int i = 0; i < commands.length; i++) {
            logger.info("command " + i + ": " + commands[i]);
        }

        throw new AssertionError("executor batchIntegrityCheck");
    }
}
