package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.attribTracker;
import static com.genir.renderer.bridge.impl.Bridge.listManager;

public class GL14 {
    public static void glBlendEquation(int mode) {
        if (listManager.isRecording()) {
            listManager.record(() -> attribTracker.glBlendEquation(mode));
        } else {
            attribTracker.glBlendEquation(mode);
        }
    }
}
