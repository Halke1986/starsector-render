package com.genir.renderer.bridge.context.executor;

import com.genir.renderer.bridge.commands.GLSync;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLGetter;

public interface Executor {
    void execute(GLCommand command);

    void execute(GLCommand command, float[] args);

    void executeSync(GLCommand command, GLSync fence);

    <T> T get(GLGetter<T> task);

    void wait(GLCommand command);

    void swapFramesAndSync();

    void swapFrames();

    void shutdown();

    boolean isIdle();
}
