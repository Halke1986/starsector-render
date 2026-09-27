package com.genir.renderer.bridge.context.executor;

import com.genir.renderer.bridge.commands.GLSync;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.Frame;
import com.genir.renderer.bridge.interfaces.DebugString;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLGetter;

/**
 * Runs commands in batched on caller thread.
 */
public class SyncBatchExecutor implements Executor {
    private final Context context;

    private final Frame frame = new Frame();
    private static final Object execMutex = new Object();

    public SyncBatchExecutor(Context context) {
        this.context = context;
    }

    @Override
    public void execute(GLCommand command) {
        frame.add(command);
    }

    @Override
    public void executeSync(GLCommand command, GLSync fence) {
        frame.add(command);

        frame.fences.add(fence);
    }

    @Override
    public void execute(GLCommand command, float arg1) {
        int argsOffset = frame.add(command);

        frame.args[argsOffset] = arg1;
    }

    @Override
    public void execute(GLCommand command, float arg1, float arg2) {
        int argsOffset = frame.add(command);

        frame.args[argsOffset + 0] = arg1;
        frame.args[argsOffset + 1] = arg2;
    }

    @Override
    public void execute(GLCommand command, float arg1, float arg2, float arg3) {
        int argsOffset = frame.add(command);

        frame.args[argsOffset + 0] = arg1;
        frame.args[argsOffset + 1] = arg2;
        frame.args[argsOffset + 2] = arg3;
    }

    @Override
    public void execute(GLCommand command, float arg1, float arg2, float arg3, float arg4) {
        int argsOffset = frame.add(command);

        frame.args[argsOffset + 0] = arg1;
        frame.args[argsOffset + 1] = arg2;
        frame.args[argsOffset + 2] = arg3;
        frame.args[argsOffset + 3] = arg4;
    }

    /**
     * Execute callable and block until it returns a value.
     * This method stalls the concurrent pipeline.
     */
    @Override
    public <T> T get(GLGetter<T> task) {
        final Object[] result = new Object[1];

        wait(new GetWrapper(task, result));

        return (T) result[0];
    }

    private record GetWrapper(GLGetter<?> task, Object[] result) implements GLCommand, DebugString {
        @Override
        public void run(Context context, float[] args, int argsOffset) {
            result[0] = task.call(context);
        }

        @Override
        public String debugString(Context context, float[] args, int argsOffset) {
            return task.toString();
        }
    }

    @Override
    public void wait(GLCommand command) {
        execute(command);

        executeCommands();
    }

    @Override
    public void swapFramesAndSync() {
        executeCommands();
    }

    @Override
    public void swapFrames() {
        executeCommands();
    }

    private void executeCommands() {
        GLCommand[] commands = frame.commands;
        float[] args = frame.args;

        // Run all scheduled commands.
        synchronized (execMutex) {
            for (int i = 0; i < frame.commandsSize; i++) {
                commands[i].run(context, args, i * Frame.ARGS_NUM);
            }
        }

        frame.clear();
    }

    @Override
    public void shutdown() {
    }

    @Override
    public boolean isIdle() {
        return true;
    }
}
