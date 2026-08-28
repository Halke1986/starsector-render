package com.genir.renderer.bridge.servercmds;

import com.genir.renderer.bridge.context.Context;

public class GL13 {
    public static void glActiveTexture(Context context, int mode) {
        record glActiveTexture(int mode) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL13.glActiveTexture(mode);
            }
        }

        context.exec.executeNow(new glActiveTexture(mode));
    }

    public static void glClientActiveTexture(Context context, int texture) {
        record glClientActiveTexture(int texture) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL13.glClientActiveTexture(texture);
            }
        }

        context.exec.executeNow(new glClientActiveTexture(texture));
    }


}
