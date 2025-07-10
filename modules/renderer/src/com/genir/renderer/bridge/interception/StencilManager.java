package com.genir.renderer.bridge.interception;

import org.lwjgl.opengl.GL11;

import static com.genir.renderer.Debug.asert;

public class StencilManager {
    private State state = State.DISABLED;

    public void glEnable(int cap) {
        if (cap != GL11.GL_STENCIL_TEST) {
            return;
        }

        // Due to a Starsector bug, glEnable(GL_STENCIL_TEST) might be called
        // before the previous stencil sequence is properly ended.
        // We therefore implicitly call glDisable(GL_STENCIL_TEST) to close out
        // the old sequence before re-enabling it.
        if (state != State.DISABLED) {
            glDisable(GL11.GL_STENCIL_TEST);
        }

        state = State.REPLACE_0;
    }

    public void glDisable(int cap) {
        if (cap != GL11.GL_STENCIL_TEST) {
            return;
        }

        if (state != State.DISABLED) {
            state = State.DISABLED;
        }
    }

    public void glStencilFunc(int func, int ref, int mask) {
        asert(func == GL11.GL_NEVER || func == GL11.GL_EQUAL || func == GL11.GL_ALWAYS);
        asert(ref == 0 || ref == 1 || ref == 3);

        if (ref == 0) {
            asert(state == State.REPLACE_0);
        } else {
            asert(state == State.REPLACE_0 || state == State.REPLACE_1);

            // State transition from cleaning stencil buffer to building mask.
            if (state == State.REPLACE_0) {
                state = State.REPLACE_1;
            }
        }
    }

    public void glStencilOp(int fail, int zfail, int zpass) {
        // Starsector uses only two stencil operations:
        // GL_REPLACE when building a mask and GL_KEEP when drawing.
        asert(zpass == GL11.GL_REPLACE || zpass == GL11.GL_KEEP);

        if (zpass == GL11.GL_REPLACE) {
            asert(state == State.REPLACE_0 || state == State.REPLACE_1);
        } else {
            asert(state == State.REPLACE_1 || state == State.KEEP);

            // State transition from building mask to drawing.
            if (state == State.REPLACE_1) {
                state = State.KEEP;
            }
        }
    }

    enum State {
        DISABLED,
        REPLACE_0,
        REPLACE_1,
        KEEP
    }
}
