package com.genir.renderer.bridge.context.executor;

import com.genir.renderer.bridge.commands.GLSync;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLGetter;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;

public interface Executor {
    void execute(GLCommand command);

    void execute(GLCommand command, float arg0, float arg1, float arg2, float arg3);

    void executeFence(GLCommand command, GLSync fence);

    <T> T get(GLGetter<T> task);

    void wait(GLCommand command);

    void swapFramesAndSync();

    void swapFrames();

    Future<Object> injectOutOfOrder(Callable<Object> privilegedCommand);

    void shutdown();
}
