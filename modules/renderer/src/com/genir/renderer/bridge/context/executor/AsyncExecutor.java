package com.genir.renderer.bridge.context.executor;

import com.genir.renderer.async.AsyncException;
import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.bridge.commands.GLSync;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.Frame;
import com.genir.renderer.bridge.context.Pool;
import com.genir.renderer.bridge.interfaces.DebugString;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLGetter;
import org.apache.log4j.Logger;

import java.util.concurrent.*;

/**
 * Default implementation. Runs commands in batched on a dedicated thread.
 */
public class AsyncExecutor implements Executor {
    private final Logger logger = Logger.getLogger(AsyncExecutor.class);
    private final Context context;

    private Frame currentFrame = new Frame();
    private final Pool framePool = new Pool();

    private Future<?> currentSwapFuture = CompletableFuture.completedFuture(null);

    // Exception handling.
    private final AsyncException asyncException = new AsyncException();
    private final ExceptionHandler exceptionHandler = new ExceptionHandler();
    private boolean isStateCorrupted = false;
    private boolean isExceptionRecovery = false;

    private final ExecutorService execActual = ExecutorFactory.newExecutorSingleThread("FR-Render", exceptionHandler);
    private static final Object execMutex = new Object();

    public AsyncExecutor(Context context) {
        this.context = context;
    }

    /**
     * Queue command for execution.
     */
    @Override
    public void execute(GLCommand command) {
        currentFrame.add(command);
    }

    @Override
    public void execute(GLCommand command, float arg0, float arg1, float arg2, float arg3) {
        currentFrame.add(command, arg0, arg1, arg2, arg3);
    }

    @Override
    public void executeFence(GLCommand command, GLSync fence) {
        currentFrame.add(command, fence);
    }

    /**
     * Execute callable and block until it returns a value.
     * This method stalls the concurrent pipeline.
     */
    @Override
    public <T> T get(GLGetter<T> task) {
        final Object[] result = new Object[1];

        wait(new AsyncExecutor$getWrapper(task, result));

        return (T) result[0];
    }

    private record AsyncExecutor$getWrapper(GLGetter<?> task, Object[] result) implements GLCommand, DebugString {
        @Override
        public void run(Context context, float[] args, int argsOffset) {
            result[0] = task.call(context);
        }

        @Override
        public String debugString(Context context, float[] args, int argsOffset) {
            return task.toString();
        }
    }

    /**
     * Execute command and block until it returns.
     * This method stalls the concurrent pipeline.
     */
    @Override
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
    @Override
    public void swapFramesAndSync() {
        Future<?> prevSwapFuture = currentSwapFuture;

        swapFrames();

        waitForFrame(prevSwapFuture);
    }

    /**
     * Execute queued commands.
     */
    @Override
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
                if (isStateCorrupted) {
                    return;
                }

                // Ensure all GLSync fences required by this command batch have been created.
                // Otherwise, glWaitSync() may execute before the corresponding glFenceSync(),
                // causing a deadlock inside the following synchronized block.
                for (GLSync sync : frameToExecute.getFences()) {
                    sync.future().get();
                }

                // Synchronize parallel GL calls. In theory, this should not be required
                // for correct execution. Serializing the calls, however, fixes entity
                // flicker that can occur on certain low-end GPUs with BoxUtil 1.5.4.
                synchronized (execMutex) {
                    executeCommands(frameToExecute);

                    try {
                        org.lwjgl.opengl.GL11.glFlush();
                    } catch (RuntimeException ignored) {
                        // Handle glFlush() called on a thread
                        // where GL context was not yet created.
                    }
                }

                // Return the frame object for reuse.
                frameToExecute.clear();
                framePool.put(frameToExecute);
            } catch (Throwable e) {
                exceptionHandler.setException(e);
            } finally {
                // Profile render work.
                if (context.renderingProfilerFrame != null) {
                    context.renderingProfilerFrame.addRenderTime(System.nanoTime() - start);
                }
            }
        });
    }

    /**
     * Queue a privileged command for execution.
     * The command will be executed between frames.
     */
    @Override
    public Future<Object> injectOutOfOrder(Callable<Object> command) {
        return execActual.submit(command);
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
        Throwable t = asyncException.getAndSet(null);
        if (t != null) {
            // Clear the state corruption flag on the render thread to ensure that all commands
            // issued between the exception's occurrence and its rethrow are cancelled.
            execActual.submit(() -> {
                isStateCorrupted = false;
            });

            throw new RuntimeException(t);
        }
    }

    private void executeCommands(Frame frame) {
        GLCommand[] commands = frame.getCommands();
        float[] args = frame.getArgs();

        // Run all scheduled commands.
        for (int i = 0; i < frame.getCommandsSize(); i++) {
            try {
                // logCommand(context, args, i * Frame.ARGS_NUM, commands[i]);
                commands[i].run(context, args, i * Frame.ARGS_NUM);
            } catch (AssertionError e) {
                // Do not interrupt application graceful shutdown with
                // assertion errors, as this could lead to a permanent freeze.
                if (isExceptionRecovery) {
                    continue;
                }

                throw e;
            }
        }
    }

    @Override
    public void shutdown() {
        execActual.shutdown();
    }

    /**
     * Returns true if no commands are being executed.
     */
    @Override
    public boolean isServerThreadIdle() {
        return currentSwapFuture.isDone();
    }

    private void logCommand(Context context, float[] args, int argsOffset, GLCommand command) {
        if (command instanceof DebugString printable) {
            logger.info(printable.debugString(context, args, argsOffset));
        } else {
            logger.info(command);
        }
    }

    private class ExceptionHandler implements Thread.UncaughtExceptionHandler {
        @Override
        public void uncaughtException(Thread t, Throwable e) {
            setException(e);
        }

        public void setException(Throwable e) {
            asyncException.set(e);
            isStateCorrupted = true;
            isExceptionRecovery = true;
        }
    }
}
