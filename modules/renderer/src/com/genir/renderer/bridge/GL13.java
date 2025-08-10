package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.attribManager;
import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL13 {
    public static void glActiveTexture(int mode) {
        record glActiveTexture(int mode) implements Runnable {
            @Override
            public void run() {
                attribManager.glActiveTexture(mode);
            }
        }
        exec.execute(new glActiveTexture(mode));
    }
}
