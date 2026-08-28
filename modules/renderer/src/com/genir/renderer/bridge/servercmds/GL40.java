package com.genir.renderer.bridge.servercmds;

import com.genir.renderer.bridge.context.Context;

public class GL40 {
    public static void glBlendEquationi(Context context, int buf, int mode) {
        record glBlendEquationi(int buf, int mode) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL40.glBlendEquationi(buf, mode);
            }
        }

        context.exec.executeNow(new glBlendEquationi(buf, mode));
    }

    public static void glBlendFuncSeparatei(Context context, int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
        record glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL40.glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
            }
        }

        context.exec.executeNow(new glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha));
    }
}
