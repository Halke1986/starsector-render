package com.genir.renderer.bridge.context;

import com.genir.renderer.Pool;
import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.bridge.context.commands.GLCommand;
import com.genir.renderer.bridge.context.commands.GLGetter;
import com.genir.renderer.bridge.context.commands.Recordable;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;

import static com.genir.renderer.debug.Profiler.profiler;

public class Executor {
    private final Context context;

    private Frame currentFrame = new Frame();
    private final Pool framePool = new Pool();

    private final ExecutorService execActual = ExecutorFactory.newSingleThreadExecutor("FR-Render");
    private final AtomicReference<Throwable> exception = new AtomicReference<>(null);

    private Future<?> lastFrameFuture = CompletableFuture.completedFuture(null);

    public Executor(Context context) {
        this.context = context;
    }

    /**
     * Queue command for execution.
     */
    public void execute(GLCommand command) {
        if (command == null) {
            return;
        }

        currentFrame.add(command);
    }

    /**
     * Execute callable and block until it returns a value.
     * This method stalls the concurrent pipeline.
     */
    public <T> T get(GLGetter<T> task) {
        final Object[] result = new Object[1];
        wait(context ->
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

        final Frame frameToExecute = currentFrame;
        final boolean isMainThread = profiler.mainThread == Thread.currentThread();

        // Reuse frame array to avoid excessive heap pressure.
        currentFrame = (Frame) framePool.get();
        if (currentFrame == null) {
            currentFrame = new Frame();
        }

        lastFrameFuture = execActual.submit(() -> {
            executeCommands(frameToExecute, isMainThread);

            // Reuse frame array.
            frameToExecute.clear();
            framePool.put(frameToExecute);
        });
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
            currentFrame = new Frame();

            lastFrameFuture = CompletableFuture.completedFuture(null);

            throw new RuntimeException(t);
        }
    }

    private void executeCommands(Frame frame, boolean isMainThread) {
        long start = System.nanoTime();

        // Executor is in invalid state. Cancel all scheduled commands.
        if (exception.get() != null) {
            return;
        }

        try {
            // Run all scheduled commands.
            GLCommand[] commands = frame.commands;
            for (int i = 0; i < commands.length && commands[i] != null; i++) {
                GLCommand command = commands[i];
                if (context.listManager.isRecording() && command instanceof Recordable) {
                    // Record the command instead of running it immediately.
                    context.listManager.record(command);
                } else {
                    command.run(context);
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
}
