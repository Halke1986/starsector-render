package com.genir.renderer.bridge;


import com.genir.renderer.state.Recordable;

import static com.genir.renderer.state.AppState.attribManager;
import static com.genir.renderer.state.AppState.exec;

public class GL14 {
    public static void glBlendEquation(int mode) {
        record glBlendEquation(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                attribManager.glBlendEquation(mode);
            }
        }
        exec.execute(new glBlendEquation(mode));
    }

    public static void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        record glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) implements Runnable, Recordable {
            @Override
            public void run() {
                attribManager.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
            }
        }
        exec.execute(new glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha));
    }
}
