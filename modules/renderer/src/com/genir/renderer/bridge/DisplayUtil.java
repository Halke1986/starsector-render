package com.genir.renderer.bridge;

import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.DisplayMode;

import static com.genir.renderer.bridge.context.ContextManager.getContext;

public class DisplayUtil {
    public static DisplayMode[] getAvailableDisplayModes(int minWidth, int minHeight, int maxWidth, int maxHeight, int minBPP, int maxBPP, int minFreq, int maxFreq) throws LWJGLException {
        return getContext().exec.get(() -> org.lwjgl.util.Display.getAvailableDisplayModes(minWidth, minHeight, maxWidth, maxHeight, minBPP, maxBPP, minFreq, maxFreq));
    }

    public static DisplayMode setDisplayMode(DisplayMode[] dm, final String[] param) throws Exception {
        return getContext().exec.get(() -> org.lwjgl.util.Display.setDisplayMode(dm, param));
    }
}
