package com.genir.renderer.bridge;

import static com.genir.renderer.bridge.Bridge.*;

public class GL14 {
    public static void glBlendEquation(int mode) {
        if (listManager.isRecording()) {
            listManager.glBlendEquation(mode);
            return;
        }

        if (interceptActive) {
            renderContext.glBlendEquation(mode);
            return;
        }

        org.lwjgl.opengl.GL14.glBlendEquation(mode);
    }
}
