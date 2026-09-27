package com.genir.renderer.bridge.context.executor;

import com.genir.renderer.bridge.commands.GLSync;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLGetter;

public interface Executor {
    void execute(GLCommand command);

    void executeSync(GLCommand command, GLSync fence);

    void execute(GLCommand command, float arg1);

    void execute(GLCommand command, float arg1, float arg2);

    void execute(GLCommand command, float arg1, float arg2, float arg3);

    void execute(GLCommand command, float arg1, float arg2, float arg3, float arg4);

    <T> T get(GLGetter<T> task);

    void wait(GLCommand command);

    void swapFramesAndSync();

    void swapFrames();

    void shutdown();

    boolean isIdle();
}
