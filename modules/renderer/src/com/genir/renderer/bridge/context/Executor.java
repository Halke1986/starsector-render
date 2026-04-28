package com.genir.renderer.bridge.context;

import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.bridge.context.commands.GLCommand;
import com.genir.renderer.bridge.context.commands.GLGetter;
import com.genir.renderer.bridge.context.commands.Recordable;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;

import static com.genir.renderer.debug.Profiler.profiler;
import static java.util.concurrent.CompletableFuture.completedFuture;

public class Executor {
    private final Context context;

    private Frame currentFrame = new Frame();
    private Future<FrameResult> lastFrameFuture = completedFuture(new FrameResult(new Frame(), 0));

    private final ExecutorService execActual = ExecutorFactory.newSingleThreadExecutor("FR-Render");
    private final AtomicReference<Throwable> exception = new AtomicReference<>(null);

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

    public void execute(GLCommand command, int arg1) {
        Frame frame = currentFrame;
        frame.add(command);

        frame.args[frame.argsOffset++] = 2;
        frame.args[frame.argsOffset++] = arg1;
    }

    public void execute(GLCommand command, int arg1, int arg2) {
        Frame frame = currentFrame;
        frame.add(command);

        frame.args[frame.argsOffset++] = 3;
        frame.args[frame.argsOffset++] = arg1;
        frame.args[frame.argsOffset++] = arg2;
    }

    public void execute(GLCommand command, int arg1, int arg2, int arg3) {
        Frame frame = currentFrame;
        frame.add(command);

        frame.args[frame.argsOffset++] = 4;
        frame.args[frame.argsOffset++] = arg1;
        frame.args[frame.argsOffset++] = arg2;
        frame.args[frame.argsOffset++] = arg3;
    }

    public void execute(GLCommand command, int arg1, int arg2, int arg3, int arg4) {
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
        // Assume all commands issued before the producer thread was notified
        // of the exception are invalid and must not be executed.
        rethrowAndClearException();

        Future<FrameResult> frameFuture = lastFrameFuture;
        Frame frameToExecute = currentFrame;

        // Execute queued commands.
        lastFrameFuture = execActual.submit(() -> {
            long start = System.nanoTime();
            executeCommands(frameToExecute);

            // Reuse frame object.
            frameToExecute.clear();
            return new FrameResult(frameToExecute, System.nanoTime() - start);
        });

        // Wait until previous frame is completed.
        try {
            FrameResult result = frameFuture.get();
            currentFrame = result.frame;

            if (profiler.mainThread == Thread.currentThread()) {
                profiler.frame.setRenderWork(result.duration);
            }
        } catch (InterruptedException | ExecutionException e) {
            throw new RuntimeException(e);
        }

        return lastFrameFuture;
    }

    private void rethrowAndClearException() {
        Throwable t = exception.getAndSet(null);
        if (t != null) {
            currentFrame = new Frame();

            lastFrameFuture = completedFuture(new FrameResult(new Frame(), 0));

            throw new RuntimeException(t);
        }
    }

    private void executeCommands(Frame frame) {
        // Executor is in invalid state. Cancel all scheduled commands.
        if (exception.get() != null) {
            return;
        }

        try {
            GLCommand[] commands = frame.commands;
            int[] args = frame.args;
            int argsOffset = 0;

            // Run all scheduled commands.
            for (int i = 0; i < frame.commandsSize; i++) {
                GLCommand command = commands[i];
                int argsSize = args[argsOffset];

                if (context.listManager.isRecording() && command instanceof Recordable) {
                    // Record the command instead of running it immediately.
                    context.listManager.record(command, args, argsOffset);
                } else {
                    command.run(context, args, argsOffset);
                }

                argsOffset += argsSize;
            }
        } catch (Throwable t) {
            exception.set(t);
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

    private record FrameResult(Frame frame, long duration) {
    }
}
