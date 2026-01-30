package com.genir.renderer.bridge.context;

import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.bridge.context.stall.StallDetector;

import java.util.Deque;
import java.util.concurrent.*;

import static com.genir.renderer.debug.Profiler.profiler;

public class Executor {
    private final StallDetector stallDetector;

    private Runnable[] currentFrame = new Runnable[1];
    private int frameSize = 0;
    private int maxFrameSize = 1;

    private final ExecutorService execActual = ExecutorFactory.newSingleThreadExecutor("FR-Render");
    private final Deque<Throwable> exceptions = new ConcurrentLinkedDeque<>();

    private Future<?> lastFrameFuture = CompletableFuture.completedFuture(null);

    public Executor(StallDetector stallDetector) {
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
            if (profiler.mainThread == Thread.currentThread()) {
                profiler.frame.markStall(start);
            }
        }
    }

    /**
     * Execute queued commands.
     */
    public void swapFrames() {
        rethrowLast();

        final Runnable[] commands = currentFrame;
        final boolean isMainThread = profiler.mainThread == Thread.currentThread();

        currentFrame = new Runnable[maxFrameSize];
        frameSize = 0;

        lastFrameFuture = execActual.submit(() -> executeCommands(commands, isMainThread));
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
    }

    private void executeCommands(Runnable[] commands, boolean isMainThread) {
        long start = System.nanoTime();

        try {
            // Run all scheduled commands.
            for (int i = 0; i < commands.length && commands[i] != null; i++) {
                Runnable command = commands[i];
                commands[i] = null;

                try {
                    command.run();
                } catch (Throwable t) {
                    throw new RuntimeException(command.toString(), t);
                }
            }

        } catch (Throwable t) {
            exceptions.add(t);
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

    private void rethrowLast() {
        if (!exceptions.isEmpty()) {
            Throwable t = exceptions.pop();
            exceptions.clear();
            rethrowAsRuntimeException(t);
        }
    }

    private void rethrowAsRuntimeException(Throwable t) {
        if (t == null) {
            return;
        } else if (t instanceof RuntimeException e) {
            throw e;
        } else {
            throw new RuntimeException(t);
        }
    }
}
