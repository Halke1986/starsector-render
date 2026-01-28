package com.genir.renderer.bridge.context;

import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.bridge.context.stall.StallDetector;
import com.genir.renderer.debug.Profiler;

import java.util.concurrent.*;

public class Executor {
    private final ListManager listManager;
    private final StallDetector stallDetector;

    private Runnable[] currentFrame = new Runnable[1];
    private int frameSize = 0;
    private Future<FrameResult> executedFrameFuture = CompletableFuture.completedFuture(new FrameResult(new Runnable[1], null));

    private final ExecutorService execActual = ExecutorFactory.newSingleThreadExecutor("FR-Render");

    public Executor(ListManager listManager, StallDetector stallDetector) {
        this.listManager = listManager;
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
        stallDetector.detectStall();

        waitPrivileged(command);
    }

    public void waitPrivileged(Runnable command) {
        long start = System.nanoTime();

        execute(command);
        swapFrames();

        FrameResult currFrameResult;
        try {
            currFrameResult = waitForFrame(executedFrameFuture);
            rethrowAsRuntimeException(currFrameResult.caught);
        } finally {
            Profiler.profiler.frame.markStall(start);
        }
    }

    /**
     * Queue command for execution.
     */
    public void execute(Runnable command) {
        if (command == null) {
            return;
        }

        if (currentFrame.length <= frameSize) {
            currentFrame = BufferUtil.reallocate(Runnable.class, currentFrame.length * 2, currentFrame);
        }

        currentFrame[frameSize] = command;
        frameSize++;
    }

    /**
     * Execute queued commands.
     */
    private void swapFrames() {
        // Wait for the previous frame.
        FrameResult prevFrameResult = waitForFrame(this.executedFrameFuture);

        // If previous frame failed, do not execute the current one.
        // This is because the producer composed the frame without
        // learning the previous one failed.
        if (prevFrameResult.caught != null) {
            cleanBuffer(this.currentFrame);
        }

        final Runnable[] currentFrame = this.currentFrame;
        this.executedFrameFuture = execActual.submit(() -> executeCommands(currentFrame));
        this.currentFrame = prevFrameResult.commands; // Reuse command buffer.
        this.frameSize = 0;

        rethrowAsRuntimeException(prevFrameResult.caught);
    }

    private FrameResult executeCommands(Runnable[] commands) {
        long start = System.nanoTime();

        try {
            // Run all scheduled commands.
            for (int i = 0; i < commands.length && commands[i] != null; i++) {
                Runnable command = commands[i];
                commands[i] = null;

                if (command instanceof Recordable && listManager.isRecording()) {
                    // Record the command instead of running it immediately.
                    listManager.record(command);
                } else {
                    try {
                        command.run();
                    } catch (Throwable t) {
                        throw new RuntimeException(command.toString(), t);
                    }
                }
            }

            return new FrameResult(commands, null);
        } catch (Throwable t) {
            cleanBuffer(commands);

            return new FrameResult(commands, t);
        } finally {
            Profiler.profiler.frame.markRenderWork(start);
        }
    }

    public void shutdown() {
        execActual.shutdown();
    }

    /**
     * Returns true if no commands are being executed.
     */
    public boolean isIdle() {
        return executedFrameFuture.isDone();
    }

    private FrameResult waitForFrame(Future<FrameResult> resultFuture) {
        try {
            return resultFuture.get();
        } catch (InterruptedException | ExecutionException e) {
            throw new RuntimeException(e);
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

    private void cleanBuffer(Runnable[] commands) {
        for (int i = 0; i < commands.length; i++) {
            commands[i] = null;
        }
    }

    private static record FrameResult(Runnable[] commands, Throwable caught) {
    }
}
