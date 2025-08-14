package com.genir.renderer.bridge.impl;

import java.util.Stack;
import java.util.concurrent.Callable;

public class ResourceGenerator {
    private final Executor exec;
    private final Callable<Integer> generate;

    private int requiredPerFrame = 0;
    private Stack<Integer> stash = new Stack<>();

    public ResourceGenerator(Callable<Integer> generate, Executor exec) {
        this.exec = exec;
        this.generate = generate;
    }

    public int get() {
        if (stash.isEmpty()) {
            requiredPerFrame++;

            return exec.get(() -> generate.call());
        }

        return stash.pop();
    }

    public void update() {
        exec.wait(() -> {
            while (stash.size() < requiredPerFrame) {
                try {
                    stash.push(generate.call());
                } catch (RuntimeException e) {
                    throw e;
                } catch (Throwable t) {
                    throw new RuntimeException(t);
                }
            }
        });
    }
}
