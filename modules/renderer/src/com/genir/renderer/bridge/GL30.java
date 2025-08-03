package com.genir.renderer.bridge;


import static com.genir.renderer.Debug.throwUnsupportedOperation;
import static com.genir.renderer.bridge.impl.Bridge.exec;
import static com.genir.renderer.bridge.impl.Bridge.listManager;

public class GL30 {
    public static void glGenerateMipmap(int target) {
        if (listManager.isRecording()) {
            throwUnsupportedOperation("glGenerateMipmap");
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL30.glGenerateMipmap(target));
        }
    }
}
