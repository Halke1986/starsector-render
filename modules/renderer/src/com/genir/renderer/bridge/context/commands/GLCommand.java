package com.genir.renderer.bridge.context.commands;

import com.genir.renderer.bridge.context.Context;

/**
 * OpenGL commands that return no value.
 */
public interface GLCommand {
    void run(Context context, int[] args);
}
