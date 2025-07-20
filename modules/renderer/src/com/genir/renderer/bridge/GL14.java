package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.exec;
import static com.genir.renderer.bridge.impl.Bridge.listManager;

public class GL14 {
    public static void glBlendEquation(int mode) {
        if (listManager.isRecording()) {
            listManager.record(() -> glBlendEquation(mode));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL14.glBlendEquation(mode));
        }
    }
}
