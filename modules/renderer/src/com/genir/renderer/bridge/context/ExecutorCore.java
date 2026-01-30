package com.genir.renderer.bridge.context;

import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.debug.Profiler;

import java.util.Deque;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

public class ExecutorCore {
    private Runnable[] currentFrame = new Runnable[1];
    private int frameSize = 0;
    private int maxFrameSize = 1;

    private final ExecutorService execActual = ExecutorFactory.newSingleThreadExecutor("FR-Render");
    private final Deque<Throwable> exceptions = new ConcurrentLinkedDeque<>();

    protected Future<?> lastFrameFuture = CompletableFuture.completedFuture(null);

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
     * Execute queued commands.
     */
    public void swapFrames() {
        rethrowLast();

        final Runnable[] commands = currentFrame;

        currentFrame = new Runnable[maxFrameSize];
        frameSize = 0;

        lastFrameFuture = execActual.submit(() -> executeCommands(commands));
    }

    private void executeCommands(Runnable[] commands) {
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
        return lastFrameFuture.isDone();
    }

    protected void rethrowLast() {
        if (!exceptions.isEmpty()) {
            Throwable t = exceptions.pop();
            exceptions.clear();
            rethrowAsRuntimeException(t);
        }
    }

    protected void rethrowAsRuntimeException(Throwable t) {
        if (t == null) {
            return;
        } else if (t instanceof RuntimeException e) {
            throw e;
        } else {
            throw new RuntimeException(t);
        }
    }
}
