package com.genir.renderer.bridge;


import com.genir.renderer.bridge.impl.Recordable;

import static com.genir.renderer.bridge.impl.Bridge.attribManager;
import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL14 {
    public static void glBlendEquation(int mode) {
        record GL14glBlendEquation(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                attribManager.glBlendEquation(mode);
            }
        }
        exec.execute(new GL14glBlendEquation(mode));
    }

    public static void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        record GL14glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) implements Runnable, Recordable {
            @Override
            public void run() {
                attribManager.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
            }
        }
        exec.execute(new GL14glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha));
    }
}
