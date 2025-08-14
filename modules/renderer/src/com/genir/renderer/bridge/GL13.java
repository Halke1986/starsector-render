package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.attribTracker;
import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL13 {
    public static void glActiveTexture(int mode) {
        attribTracker.glActiveTexture(mode);
        exec.execute(() -> org.lwjgl.opengl.GL13.glActiveTexture(mode));
    }
}
