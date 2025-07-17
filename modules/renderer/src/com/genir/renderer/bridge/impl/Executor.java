package com.genir.renderer.bridge.impl;

import java.util.List;
import java.util.concurrent.*;

public class Executor extends AbstractExecutorService {
    @Override
    public void execute(Runnable command) {
        command.run();
    }

    public void wait(Runnable command) {
        command.run();
    }

    @Override
    public <T> Future<T> submit(Callable<T> task) {
        try {
            T result = task.call();
            return CompletableFuture.completedFuture(result);
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    public <T> T get(Callable<T> task) {
        try {
            return submit(task).get();
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    @Override
    public void shutdown() {

    }

    @Override
    public List<Runnable> shutdownNow() {
        return null;
    }

    @Override
    public boolean isShutdown() {
        return false;
    }

    @Override
    public boolean isTerminated() {
        return false;
    }

    @Override
    public boolean awaitTermination(long timeout, TimeUnit unit) throws InterruptedException {
        return false;
    }
}
