package com.genir.renderer.bridge.context.executor.debug;

import com.genir.renderer.bridge.commands.GLSync;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.executor.Executor;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLGetter;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Future;

/**
 * Runs commands immediately on caller thread.
 */
public class SyncExecutor implements Executor {
    private final Context context;
    private final float[] args = new float[4];

    public SyncExecutor(Context context) {
        this.context = context;
    }

    @Override
    public void execute(GLCommand command) {
        command.run(context, args, 0);
    }

    @Override
    public void execute(GLCommand command, float arg0, float arg1, float arg2, float arg3) {
        args[0] = arg0;
        args[1] = arg1;
        args[2] = arg2;
        args[3] = arg3;

        command.run(context, args, 0);
    }

    @Override
    public void executeFence(GLCommand command, GLSync fence) {
        command.run(context, args, 0);
    }

    @Override
    public <T> T get(GLGetter<T> task) {
        return task.call(context);
    }

    @Override
    public void wait(GLCommand command) {
        command.run(context, args, 0);
    }

    @Override
    public void swapFramesAndSync() {
    }

    @Override
    public void swapFrames() {
    }

    @Override
    public Future<?> injectOutOfOrder(Runnable privilegedCommand) {
        // There's no command ordering to bypass. Do nothing.
        return CompletableFuture.completedFuture(null);
    }

    @Override
    public void shutdown() {
    }

    @Override
    public boolean isServerThreadIdle() {
        return true;
    }
}
