package com.genir.renderer.bridge.interfaces;

import com.genir.renderer.bridge.context.Context;

/**
 * OpenGL commands that return a value.
 */
public interface GLGetter<V> {
    V call(Context context);
}
