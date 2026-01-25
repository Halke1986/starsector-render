package com.genir.renderer.bridge;

import static com.genir.renderer.bridge.state.AppState.state;

public class GL13 {
    public static void glActiveTexture(int mode) {
        record glActiveTexture(int mode) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL13.glActiveTexture(mode);
            }
        }
        state.attribTracker.glActiveTexture(mode);
        state.exec.execute(new glActiveTexture(mode));
    }
}
