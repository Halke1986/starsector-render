package com.genir.renderer.state;

import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.state.stall.StallDetector;

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

    public void wait(Runnable command) {
        stallDetector.detectStall();

        long start = System.nanoTime();

        execute(command);
        swapFrames();

        FrameResult currFrameResult;
        try {
            currFrameResult = waitForFrame(executedFrameFuture);
            if (currFrameResult.caught != null) {
                executedFrameFuture = CompletableFuture.completedFuture(new FrameResult(currFrameResult.commands, null));
                rethrowAsRuntimeException(currFrameResult.caught);
            }
        } finally {
            Profiler.FrameMark.markStall(start);
        }
    }

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

    public void swapFrames() {
        final Runnable[] currentFrame = this.currentFrame;
        final Future<FrameResult> prevFrameFuture = this.executedFrameFuture;
        Future<FrameResult> frameFuture = execActual.submit(() -> executeCommands(currentFrame, prevFrameFuture));

        // Wait for the previous frame.
        FrameResult prevFrameResult = waitForFrame(prevFrameFuture);

        this.currentFrame = prevFrameResult.commands; // Reuse command buffer.
        this.executedFrameFuture = frameFuture;
        frameSize = 0;

        rethrowAsRuntimeException(prevFrameResult.caught);
    }

    private FrameResult executeCommands(Runnable[] commands, Future<FrameResult> prevFrameFuture) {
        long start = System.nanoTime();
        Throwable caught = null;
        boolean prevFrameFailed = false;

        try {
            FrameResult prevFrameResult = prevFrameFuture.get();
            prevFrameFailed = prevFrameResult.caught != null;

            // Run all scheduled commands.
            for (int i = 0; i < commands.length; i++) {
                Runnable command = commands[i];
                commands[i] = null;

                if (command == null) {
                    break;
                }

                // Skip further commands if an exception occured, including the previous frame.
                if (caught != null || prevFrameFailed) {
                    continue;
                }

                try {
                    // Record the command instead of running it immediately.
                    if (command instanceof Recordable && listManager.isRecording()) {
                        listManager.record(command);
                        continue;
                    }

                    command.run();
                } catch (Throwable t) {
                    caught = t;
                }
            }
        } catch (Throwable t) {
            caught = t;
        } finally {
            // Cleanup.
            if (caught != null || prevFrameFailed) {
                for (int i = 0; i < commands.length; i++) {
                    commands[i] = null;
                }
            }
            Profiler.FrameMark.markRenderWork(start);
        }

        return new FrameResult(commands, caught);
    }

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

    private static record FrameResult(Runnable[] commands, Throwable caught) {
    }
}
