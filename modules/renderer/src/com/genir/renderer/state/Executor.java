package com.genir.renderer.state;

import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.state.stall.StallDetector;

import java.util.concurrent.*;

public class Executor {
    private final ListManager listManager;
    private final StallDetector stallDetector;

    private Runnable[] currentFrame = new Runnable[2];
    private int frameSize = 0;
    private Future<FrameResult> prevFrameFuture = CompletableFuture.completedFuture(new FrameResult(new Runnable[1], null));

    private static final ExecutorService execActual = ExecutorFactory.newSingleThreadExecutor("FR-Render");

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
                throw new RuntimeException(e);
            }
        });

        return (T) result[0];
    }

    /**
     * Execute callable and block until it returns.
     * This method stalls the concurrent pipeline.
     */
    public void wait(Runnable command) {
        stallDetector.detectStall();

        execute(command);
        swapFrames();

        long start = System.nanoTime();
        try {
            // Wait for previous frame.
            getResult(prevFrameFuture);
        } finally {
            Profiler.FrameMark.markStall(start);
        }
    }

    public void execute(Runnable command) {
        if (currentFrame.length <= frameSize) {
            currentFrame = BufferUtil.reallocate(Runnable.class, currentFrame.length * 2, currentFrame);
        }

        currentFrame[frameSize] = command;
        frameSize++;
    }

    public void swapFrames() {
        final Runnable[] currentFrame = this.currentFrame;
        final Future<FrameResult> prevFrameFuture = this.prevFrameFuture;
        Future<FrameResult> frameFuture = execActual.submit(() -> executeCommands(currentFrame, prevFrameFuture));

        // Wait for the previous frame.
        FrameResult prevFrameResult = getResult(prevFrameFuture);

        this.currentFrame = prevFrameResult.commands;
        this.prevFrameFuture = frameFuture;
        frameSize = 0;

        Throwable caught = prevFrameResult.caught;
        if (caught != null) {
            if (caught instanceof RuntimeException e) {
                throw e;
            } else {
                throw new RuntimeException(caught);
            }
        }
    }

    private FrameResult executeCommands(Runnable[] commands, Future<FrameResult> prevFrameFuture) {
        long start = System.nanoTime();
        Throwable caught = null;

        try {
            FrameResult prevFrameResult = prevFrameFuture.get();
            caught = prevFrameResult.caught;

            // Run all scheduled commands.
            for (int i = 0; i < commands.length; i++) {
                Runnable command = commands[i];
                commands[i] = null;

                if (command == null) {
                    break;
                }

                // Skip further commands if an exception occured.
                if (caught != null) {
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
            Profiler.FrameMark.markRenderWork(start);
            return new FrameResult(commands, caught);
        }
    }

    public boolean isIdle() {
        return prevFrameFuture.isDone();
    }

    private FrameResult getResult(Future<FrameResult> resultFuture) {
        try {
            return resultFuture.get();
        } catch (InterruptedException | ExecutionException e) {
            throw new RuntimeException(e);
        }
    }

    private static record FrameResult(Runnable[] commands, Throwable caught) {
    }
}
