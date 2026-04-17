package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLGetter;
import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.DisplayMode;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class DisplayUtil {
    public static DisplayMode[] getAvailableDisplayModes(int minWidth, int minHeight, int maxWidth, int maxHeight, int minBPP, int maxBPP, int minFreq, int maxFreq) {
        record getAvailableDisplayModes(int minWidth, int minHeight, int maxWidth, int maxHeight, int minBPP, int maxBPP, int minFreq, int maxFreq) implements GLGetter<DisplayMode[]> {
            @Override
            public DisplayMode[] call(Context context) {
                try {
                    return org.lwjgl.util.Display.getAvailableDisplayModes(minWidth, minHeight, maxWidth, maxHeight, minBPP, maxBPP, minFreq, maxFreq);
                } catch (LWJGLException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        return getThreadContext().exec.get(new getAvailableDisplayModes(minWidth, minHeight, maxWidth, maxHeight, minBPP, maxBPP, minFreq, maxFreq));
    }

    public static DisplayMode setDisplayMode(DisplayMode[] dm, String[] param) {
        record setDisplayMode(DisplayMode[] dm, String[] param) implements GLGetter<DisplayMode> {
            @Override
            public DisplayMode call(Context context) {
                try {
                    return org.lwjgl.util.Display.setDisplayMode(dm, param);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        }

        return getThreadContext().exec.get(new setDisplayMode(dm, param));
    }
}
