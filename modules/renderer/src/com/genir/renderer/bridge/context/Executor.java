package com.genir.renderer.bridge.context;

import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.bridge.context.commands.GLCommand;
import com.genir.renderer.bridge.context.commands.GLGetter;
import com.genir.renderer.bridge.context.commands.Recordable;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

import static com.genir.renderer.debug.Profiler.profiler;
import static java.util.concurrent.CompletableFuture.completedFuture;

public class Executor {
    private final Context context;

    private Frame currentFrame = new Frame();
    private Future<FrameResult> lastFrameFuture = completedFuture(new FrameResult(new Frame(), 0, null));

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
        Future<FrameResult> frameFuture = swapFrames();

        try {
            // Wait for the command to execute.
            frameFuture.get();
        } catch (InterruptedException | ExecutionException e) {
            throw new RuntimeException(e);
        } finally {
            if (profiler.mainThread == Thread.currentThread()) {
                profiler.frame.markStall(start);
            }
        }
    }

    /**
     * Execute queued commands.
     */
    public Future<FrameResult> swapFrames() {
        Future<FrameResult> prevFrameFuture = lastFrameFuture;
        Frame frameToExecute = currentFrame;

        // Execute queued commands.
        lastFrameFuture = execActual.submit(() -> {
            long start = System.nanoTime();
            Throwable thrown = null;

            try {
                executeCommands(frameToExecute, prevFrameFuture);
            } catch (Throwable t) {
                thrown = t;
            }

            // Reuse frame object.
            frameToExecute.clear();
            return new FrameResult(frameToExecute, System.nanoTime() - start, thrown);
        });

        // Wait until previous frame is completed.
        FrameResult result = null;
        try {
            result = prevFrameFuture.get();
        } catch (InterruptedException | ExecutionException e) {
            throw new RuntimeException(e);
        }

        currentFrame = result.frame;

        if (profiler.mainThread == Thread.currentThread()) {
            profiler.frame.setRenderWork(result.duration);
        }

        // Rethrow any exception captured during previous frame execution.
        if (result.thrown != null) {
            throw new RuntimeException(result.thrown);
        }

        return lastFrameFuture;
    }

    private void executeCommands(Frame frame, Future<FrameResult> prevFrameFuture) throws ExecutionException, InterruptedException {
        // Executor is in invalid state. Cancel all scheduled commands.
        if (prevFrameFuture.get().thrown != null) {
            return;
        }

        GLCommand[] commands = frame.commands;
        float[] args = frame.args;
        int argsOffset = 0;

        // Run all scheduled commands.
        for (int i = 0; i < frame.commandsSize; i++) {
            GLCommand command = commands[i];
            int argsSize = (int) args[argsOffset];

            if (context.listManager.isRecording() && command instanceof Recordable) {
                // Record the command instead of running it immediately.
                context.listManager.record(command, args, argsOffset);
            } else {
                command.run(context, args, argsOffset);
            }

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
        return lastFrameFuture.isDone();
    }

    private record FrameResult(Frame frame, long duration, Throwable thrown) {
    }
}
