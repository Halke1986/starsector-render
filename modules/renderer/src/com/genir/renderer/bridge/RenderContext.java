package com.genir.renderer.bridge;

import org.lwjgl.opengl.GL11;

import static com.genir.renderer.Debug.asert;

public class RenderContext {
    private Snapshot current = new Snapshot();
    private Snapshot previous = new Snapshot();

    public void sync() {
        current = new Snapshot();
        previous = new Snapshot();

        GL11.glDisable(GL11.GL_STENCIL_TEST);
        GL11.glDisable(GL11.GL_ALPHA_TEST);
        GL11.glDisable(GL11.GL_TEXTURE_2D);
        GL11.glDisable(GL11.GL_BLEND);
    }

    public void apply() {
        if (current.enableStencilTest != previous.enableStencilTest) {
            previous.enableStencilTest = current.enableStencilTest;
            if (current.enableStencilTest) {
                GL11.glEnable(GL11.GL_STENCIL_TEST);
            } else {
                GL11.glDisable(GL11.GL_STENCIL_TEST);
            }
        }

        if (current.enableAlphaTest != previous.enableAlphaTest) {
            previous.enableAlphaTest = current.enableAlphaTest;
            if (current.enableAlphaTest) {
                GL11.glEnable(GL11.GL_ALPHA_TEST);
            } else {
                GL11.glDisable(GL11.GL_ALPHA_TEST);
            }
        }

        if (current.enableTexture2D != previous.enableTexture2D) {
            previous.enableTexture2D = current.enableTexture2D;
            if (current.enableTexture2D) {
                GL11.glEnable(GL11.GL_TEXTURE_2D);
            } else {
                GL11.glDisable(GL11.GL_TEXTURE_2D);
            }
        }

        if (current.enableBlend != previous.enableBlend) {
            previous.enableBlend = current.enableBlend;
            if (current.enableBlend) {
                GL11.glEnable(GL11.GL_BLEND);
            } else {
                GL11.glDisable(GL11.GL_BLEND);
            }
        }
    }

    public void glEnable(int cap) {
        asert(cap == GL11.GL_STENCIL_TEST
                || cap == GL11.GL_ALPHA_TEST
                || cap == GL11.GL_TEXTURE_2D
                || cap == GL11.GL_BLEND);

        switch (cap) {
            case GL11.GL_STENCIL_TEST:
                current.enableStencilTest = true;
                break;
            case GL11.GL_ALPHA_TEST:
                current.enableAlphaTest = true;
                break;
            case GL11.GL_TEXTURE_2D:
                current.enableTexture2D = true;
                break;
            case GL11.GL_BLEND:
                current.enableBlend = true;
                break;
        }
    }

    public void glDisable(int cap) {
        switch (cap) {
            case GL11.GL_STENCIL_TEST:
                current.enableStencilTest = false;
                break;
            case GL11.GL_ALPHA_TEST:
                current.enableAlphaTest = false;
                break;
            case GL11.GL_TEXTURE_2D:
                current.enableTexture2D = false;
                break;
            case GL11.GL_BLEND:
                current.enableBlend = false;
                break;
        }
    }

    private static class Snapshot {
        public boolean enableStencilTest = false;
        public boolean enableAlphaTest = false;
        public boolean enableTexture2D = false;
        public boolean enableBlend = false;
    }
}
