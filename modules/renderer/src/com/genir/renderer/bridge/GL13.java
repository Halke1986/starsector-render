package com.genir.renderer.bridge;


import static com.genir.renderer.state.AppState.attribTracker;
import static com.genir.renderer.state.AppState.exec;

public class GL13 {
    public static void glActiveTexture(int mode) {
        record glActiveTexture(int mode) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL13.glActiveTexture(mode);
            }
        }
        attribTracker.glActiveTexture(mode);
        exec.execute(new glActiveTexture(mode));
    }
}
