package com.genir.renderer.bridge.context.executor;

import com.genir.renderer.bridge.commands.GLSync;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLGetter;

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
    public void executeSync(GLCommand command, GLSync fence) {
        command.run(context, args, 0);
    }

    @Override
    public void execute(GLCommand command, float arg1) {
        args[0] = arg1;

        command.run(context, args, 0);
    }

    @Override
    public void execute(GLCommand command, float arg1, float arg2) {
        args[0] = arg1;
        args[1] = arg2;

        command.run(context, args, 0);
    }

    @Override
    public void execute(GLCommand command, float arg1, float arg2, float arg3) {
        args[0] = arg1;
        args[1] = arg2;
        args[2] = arg3;

        command.run(context, args, 0);
    }

    @Override
    public void execute(GLCommand command, float arg1, float arg2, float arg3, float arg4) {
        args[0] = arg1;
        args[1] = arg2;
        args[2] = arg3;
        args[3] = arg4;

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
    public void shutdown() {
    }

    @Override
    public boolean isIdle() {
        return true;
    }
}
