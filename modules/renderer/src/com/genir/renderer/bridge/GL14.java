package com.genir.renderer.bridge;

import static com.genir.renderer.bridge.Bridge.*;

public class GL14 {
    public static void glBlendEquation(int mode) {
        if (listManager.isRecording()) {
            listManager.glBlendEquation(mode);
            return;
        }

        renderContext.glBlendEquation(mode);

        if (!interceptActive) {
            org.lwjgl.opengl.GL14.glBlendEquation(mode);
        }
    }
}
