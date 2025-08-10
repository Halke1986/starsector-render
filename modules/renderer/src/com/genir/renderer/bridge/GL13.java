package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.attribManager;

public class GL13 {
    public static void glActiveTexture(int mode) {
        attribManager.glActiveTexture(mode);
    }
}
