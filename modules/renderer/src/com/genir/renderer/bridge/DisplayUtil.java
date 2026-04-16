package com.genir.renderer.bridge;

import org.lwjgl.opengl.DisplayMode;

import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class DisplayUtil {
    public static DisplayMode[] getAvailableDisplayModes(int minWidth, int minHeight, int maxWidth, int maxHeight, int minBPP, int maxBPP, int minFreq, int maxFreq) {
        record getAvailableDisplayModes(int minWidth, int minHeight, int maxWidth, int maxHeight, int minBPP, int maxBPP, int minFreq, int maxFreq) implements Callable<DisplayMode[]> {
            @Override
            public DisplayMode[] call() throws Exception {
                return org.lwjgl.util.Display.getAvailableDisplayModes(minWidth, minHeight, maxWidth, maxHeight, minBPP, maxBPP, minFreq, maxFreq);
            }
        }

        return getThreadContext().exec.get(new getAvailableDisplayModes(minWidth, minHeight, maxWidth, maxHeight, minBPP, maxBPP, minFreq, maxFreq));
    }

    public static DisplayMode setDisplayMode(DisplayMode[] dm, String[] param) {
        record setDisplayMode(DisplayMode[] dm, String[] param) implements Callable<DisplayMode> {
            @Override
            public DisplayMode call() throws Exception {
                return org.lwjgl.util.Display.setDisplayMode(dm, param);
            }
        }

        return getThreadContext().exec.get(new setDisplayMode(dm, param));
    }
}
