package com.genir.renderer.bridge.context;

import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLGetter;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;

import static java.util.concurrent.CompletableFuture.completedFuture;

public class Executor {
    private final Context context;

    private Frame currentFrame = new Frame();
    private final Pool framePool = new Pool();

    private Future<?> currentSwapFuture = completedFuture(null);
    private final AtomicReference<Throwable> exception = new AtomicReference<>(null);

    private final ExecutorService execActual = ExecutorFactory.newSingleThreadExecutor("FR-Render");

    public Executor(Context context) {
        this.context = context;
    }

    /**
     * Queue command for execution.
     */
    public void execute(GLCommand command) {
        Frame frame = currentFrame;
        frame.add(command);

        frame.args[frame.argsOffset++] = 1;
    }

    public void execute(GLCommand command, float arg1) {
        Frame frame = currentFrame;
        frame.add(command);

        frame.args[frame.argsOffset++] = 2;
        frame.args[frame.argsOffset++] = arg1;
    }

    public void execute(GLCommand command, float arg1, float arg2) {
        Frame frame = currentFrame;
        frame.add(command);

        frame.args[frame.argsOffset++] = 3;
        frame.args[frame.argsOffset++] = arg1;
        frame.args[frame.argsOffset++] = arg2;
    }

    public void execute(GLCommand command, float arg1, float arg2, float arg3) {
        Frame frame = currentFrame;
        frame.add(command);

        frame.args[frame.argsOffset++] = 4;
        frame.args[frame.argsOffset++] = arg1;
        frame.args[frame.argsOffset++] = arg2;
        frame.args[frame.argsOffset++] = arg3;
    }

    public void execute(GLCommand command, float arg1, float arg2, float arg3, float arg4) {
        Frame frame = currentFrame;
        frame.add(command);

        frame.args[frame.argsOffset++] = 5;
        frame.args[frame.argsOffset++] = arg1;
        frame.args[frame.argsOffset++] = arg2;
        frame.args[frame.argsOffset++] = arg3;
        frame.args[frame.argsOffset++] = arg4;
    }

    /**
     * Execute callable and block until it returns a value.
     * This method stalls the concurrent pipeline.
     */
    public <T> T get(GLGetter<T> task) {
        final Object[] result = new Object[1];
        wait((context, args, offset) ->
                result[0] = task.call(context)
        );

        return (T) result[0];
    }

    /**
     * Execute command and block until it returns.
     * This method stalls the concurrent pipeline.
     */
    public void wait(GLCommand command) {
        long start = System.nanoTime();

        context.stallDetector.detectStall();

        execute(command);
        swapFrames();

        try {
            // Wait for the command to execute.
            waitForFrame(currentSwapFuture);
        } finally {
            if (context.mainProfilerFrame != null) {
                context.mainProfilerFrame.addStallTime(System.nanoTime() - start);
            }
        }
    }

    /**
     * Execute queued commands.
     * Wait until PREVIOUS frame is completed. This allows producer
     * and consumer threads to overlap with maximum flexibility.
     */
    public void swapFramesAndSync() {
        Future<?> prevSwapFuture = currentSwapFuture;

        swapFrames();

        waitForFrame(prevSwapFuture);
    }

    /**
     * Execute queued commands.
     */
    public void swapFrames() {
        // Assume all commands issued before the producer thread was notified
        // of the exception are invalid and must not be executed.
        rethrowAndClearException();

        final Frame frameToExecute = currentFrame;

        // Reuse the frame array to avoid excessive heap pressure.
        currentFrame = (Frame) framePool.get();
        if (currentFrame == null) {
            currentFrame = new Frame();
        }

        // Execute queued commands.
        currentSwapFuture = execActual.submit(() -> {
            long start = System.nanoTime();

            try {
                // Executor is in invalid state. Cancel all scheduled commands.
                if (exception.get() != null) {
                    return;
                }

                executeCommands(frameToExecute);

                // Return the frame object for reuse.
                frameToExecute.clear();
                framePool.put(frameToExecute);
            } catch (Throwable t) {
                exception.set(t);
            } finally {
                // Profile render work.
                if (context.renderingProfilerFrame != null) {
                    context.renderingProfilerFrame.addRenderTime(System.nanoTime() - start);
                }
            }
        });
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
            currentFrame = new Frame();
            currentSwapFuture = completedFuture(null);

            throw new RuntimeException(t);
        }
    }

    private void executeCommands(Frame frame) {
        GLCommand[] commands = frame.commands;
        float[] args = frame.args;
        int argsOffset = 0;

        // Run all scheduled commands.
        for (int i = 0; i < frame.commandsSize; i++) {
            GLCommand command = commands[i];
            int argsSize = (int) args[argsOffset];

            command.run(context, args, argsOffset);

            argsOffset += argsSize;
        }
    }

    public void shutdown() {
        execActual.shutdown();
    }

    /**
     * Returns true if no commands are being executed.
     */
    public boolean isIdle() {
        return currentSwapFuture.isDone();
    }
}
