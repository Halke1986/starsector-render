package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.attribManager;
import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL31 {
    public static void glDrawArraysInstanced(int mode, int first, int count, int primcount) {
        exec.execute(() -> {
            attribManager.applyEnableAndColorBufferBit();
            org.lwjgl.opengl.GL31.glDrawArraysInstanced(mode, first, count, primcount);
        });
    }
}
