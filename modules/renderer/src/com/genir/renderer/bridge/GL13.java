package com.genir.renderer.bridge;


import com.genir.renderer.bridge.context.Context;

import static com.genir.renderer.bridge.context.ContextManager.getContext;

public class GL13 {
    public static void glActiveTexture(int mode) {
        record glActiveTexture(int mode) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL13.glActiveTexture(mode);
            }
        }
        final Context context = getContext();
        context.attribTracker.glActiveTexture(mode);
        context.exec.execute(new glActiveTexture(mode));
    }
}
