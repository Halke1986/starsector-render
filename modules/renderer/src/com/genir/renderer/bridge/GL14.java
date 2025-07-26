package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.*;

public class GL14 {
    public static void glBlendEquation(int mode) {
        if (listManager.isRecording()) {
            listManager.record(() -> renderContext.glBlendEquation(mode));
        } else {
            renderContext.glBlendEquation(mode);
        }
    }
}
