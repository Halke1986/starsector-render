package com.genir.renderer.bridge;


import static com.genir.renderer.Debug.throwUnsupportedOperation;
import static com.genir.renderer.bridge.impl.Bridge.exec;
import static com.genir.renderer.bridge.impl.Bridge.listManager;

public class GL13 {
    public static void glActiveTexture(int mode) {
        if (listManager.isRecording()) {
            throwUnsupportedOperation("glActiveTexture");
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL13.glActiveTexture(mode));
        }
    }
}
