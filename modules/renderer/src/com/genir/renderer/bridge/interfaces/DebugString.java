package com.genir.renderer.bridge.interfaces;

import com.genir.renderer.bridge.context.Context;

/**
 * OpenGL commands that return a custom debug string description.
 */
public interface DebugString {
    String debugString(Context context, float[] args, int argsOffset);
}
