package com.genir.renderer.bridge.context;

import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.bridge.context.stall.StallDetector;

import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicReference;

import static com.genir.renderer.debug.Profiler.profiler;

public class Executor {
    private final ListManager listManager;
    private final StallDetector stallDetector;

    private Runnable[] currentFrame = new Runnable[1];
    private int frameSize = 0;
    private int maxFrameSize = 1;

    private final ExecutorService execActual = ExecutorFactory.newSingleThreadExecutor("FR-Render");
    private final AtomicReference<Throwable> exception = new AtomicReference(null);

    private Future<?> lastFrameFuture = CompletableFuture.completedFuture(null);

    public Executor(ListManager listManager, StallDetector stallDetector) {
        this.listManager = listManager;
        this.stallDetector = stallDetector;
    }

    /**
     * Queue command for execution.
     */
    public void execute(Runnable command) {
        if (command == null) {
            return;
        }

        if (currentFrame.length <= frameSize) {
            maxFrameSize = currentFrame.length * 2;
            currentFrame = BufferUtil.reallocate(Runnable.class, maxFrameSize, currentFrame);
        }

        currentFrame[frameSize] = command;
        frameSize++;
    }

    /**
     * Execute callable and block until it returns a value.
     * This method stalls the concurrent pipeline.
     */
    public <T> T get(Callable<T> task) {
        final Object[] result = new Object[1];
        wait(() -> {
            try {
                result[0] = task.call();
            } catch (Throwable t) {
                // Sneaky throw the exeption to avoid an unncesessary
                // "Cause By" level. The exception will be properly
                // handled in executeCommands method.
                sneakyThrow(t);
            }
        });

        return (T) result[0];
    }

    /**
     * Execute command and block until it returns.
     * This method stalls the concurrent pipeline.
     */
    public void wait(Runnable command) {
        long start = System.nanoTime();

        stallDetector.detectStall();

        execute(command);
        swapFrames();

        try {
            waitForFrame(lastFrameFuture);
        } finally {
            if (profiler.mainThread == Thread.currentThread()) {
                profiler.frame.markStall(start);
            }
        }
    }

    /**
     * Execute queued commands.
     */
    public void swapFrames() {
        // Assume all commands issued before the producer thread was notified
        // of the exception are invalid and must not be executed.
        rethrowAndClearException();

        final Runnable[] commands = currentFrame;
        final boolean isMainThread = profiler.mainThread == Thread.currentThread();

        currentFrame = new Runnable[maxFrameSize];
        frameSize = 0;

        lastFrameFuture = execActual.submit(() ->
                executeCommands(commands, isMainThread)
        );
    }

    /**
     * Execute queued commands.
     * Wait until PREVIOUS frame is completed. This allows producer
     * and consumer threads to overlap with maximum flexibility.
     */
    public void swapFramesAndSync() {
        Future<?> prevFrameFuture = lastFrameFuture;

        swapFrames();

        waitForFrame(prevFrameFuture);
    }

    private void waitForFrame(Future<?> future) {
        try {
            future.get();
        } catch (InterruptedException | ExecutionException e) {
            throw new RuntimeException(e);
        }

        // Rethrow exceptions after finishing the frame
        // so that the get method can be notified of
        // a throw in its callable.
        rethrowAndClearException();
    }

    private void rethrowAndClearException() {
        Throwable t = exception.getAndSet(null);
        if (t != null) {
            currentFrame = new Runnable[maxFrameSize];
            frameSize = 0;

            lastFrameFuture = CompletableFuture.completedFuture(null);

            throw new RuntimeException(t);
        }
    }

    private void executeCommands(Runnable[] commands, boolean isMainThread) {
        long start = System.nanoTime();

        // Executor is in invalid state. Cancel all scheduled commands.
        if (exception.get() != null) {
            return;
        }

        try {
            // Run all scheduled commands.
            for (int i = 0; i < commands.length && commands[i] != null; i++) {
                Runnable command = commands[i];
                commands[i] = null;

                if (command instanceof Recordable && listManager.isRecording()) {
                    // Record the command instead of running it immediately.
                    listManager.record(command);
                } else {
                    command.run();
                }
            }

        } catch (Throwable t) {
            exception.set(t);
        } finally {
            if (isMainThread) {
                profiler.frame.markRenderWork(start);
            }
        }
    }

    public void shutdown() {
        execActual.shutdown();
    }

    /**
     * Returns true if no commands are being executed.
     */
    public boolean isIdle() {
        return lastFrameFuture.isDone();
    }

    public static <E extends Throwable> void sneakyThrow(Throwable t) throws E {
        throw (E) t;
    }
}
