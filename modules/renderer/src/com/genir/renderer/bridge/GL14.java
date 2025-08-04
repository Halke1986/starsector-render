package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.attribManager;
import static com.genir.renderer.bridge.impl.Bridge.listManager;

public class GL14 {
    public static void glBlendEquation(int mode) {
        if (listManager.isRecording()) {
            listManager.record(() -> attribManager.glBlendEquation(mode));
        } else {
            attribManager.glBlendEquation(mode);
        }
    }
}
