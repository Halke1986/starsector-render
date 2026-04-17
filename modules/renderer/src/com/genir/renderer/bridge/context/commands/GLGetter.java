package com.genir.renderer.bridge.context.commands;

import com.genir.renderer.bridge.context.Context;

/**
 * OpenGL commands that return a value.
 */
public interface GLGetter<V> {
    V call(Context context);
}
