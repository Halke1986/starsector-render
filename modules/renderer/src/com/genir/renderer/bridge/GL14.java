package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.*;

public class GL14 {
    public static void glBlendEquation(int mode) {
        record glBlendEquation(int mode) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL14.glBlendEquation(mode);
            }
        }
        exec.execute(new glBlendEquation(mode));
    }
}
