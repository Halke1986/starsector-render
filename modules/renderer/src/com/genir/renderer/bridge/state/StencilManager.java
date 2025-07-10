package com.genir.renderer.bridge.state;

import org.lwjgl.opengl.GL11;

import static com.genir.renderer.Debug.asert;

public class StencilManager {
    private boolean stencilEnabled = false;

    public void glEnable(int cap) {
        if (cap == GL11.GL_STENCIL_TEST) {
            stencilEnabled = true;
        }
    }

    public void glDisable(int cap) {
        if (cap == GL11.GL_STENCIL_TEST) {

            stencilEnabled = false;
        }
    }

    public void glStencilFunc(int func, int ref, int mask) {
        asert(stencilEnabled);
    }

    public void glStencilOp(int fail, int zfail, int zpass) {
        asert(stencilEnabled);
    }
}
