package com.genir.renderer.bridge.context.commands;

import com.genir.renderer.bridge.context.Context;

/**
 * OpenGL commands that return no value.
 */
public interface GLCommand {
    // Execute the GL command. int[] args is used by
    // memory-optimized commands to avoid heap allocation.
    void run(Context context, float[] args, int offset);
}
