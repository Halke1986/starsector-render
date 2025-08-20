package com.genir.renderer.bridge.impl.stall;

import com.genir.renderer.bridge.impl.Executor;

import java.util.Stack;
import java.util.concurrent.Callable;

public class ResourceGenerator {
    private final Executor exec;
    private final Callable<Integer> generate;

    private int requiredThisFrame = 0;
    private int maxRequiredPerFrame = 0;

    private Stack<Integer> stash = new Stack<>();

    public ResourceGenerator(Callable<Integer> generate, Executor exec) {
        this.exec = exec;
        this.generate = generate;
    }

    public int get() { // Main thread
        synchronized (this) {
            requiredThisFrame++;

            if (!stash.isEmpty()) {
                return stash.pop();
            }
        }

        // If cache is empty, fall back to generating
        // the resource using an actual OpenGL call.
        return exec.get(() -> generate.call());
    }

    synchronized public void update() { // Render thread
        maxRequiredPerFrame = Math.max(maxRequiredPerFrame, requiredThisFrame);
        requiredThisFrame = 0;

        while (stash.size() < maxRequiredPerFrame) {
            try {
                stash.push(generate.call());
            } catch (RuntimeException e) {
                throw e;
            } catch (Throwable t) {
                throw new RuntimeException(t);
            }
        }
    }
}
