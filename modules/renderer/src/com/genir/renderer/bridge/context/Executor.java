package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.context.stall.StallDetector;
import com.genir.renderer.debug.Profiler;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

public class Executor extends ExecutorCore {
    private final StallDetector stallDetector;

    public Executor(StallDetector stallDetector) {
        this.stallDetector = stallDetector;
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
            } catch (Exception e) {
                rethrowAsRuntimeException(e);
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
            rethrowLast();
        } finally {
            Profiler.profiler.frame.markStall(start);
        }
    }

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
    }
}
