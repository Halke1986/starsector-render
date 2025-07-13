package com.genir.renderer.bridge;

import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;

import static com.genir.renderer.Debug.asert;

public class RenderContext {
    private Snapshot c = new Snapshot();
    private Snapshot p = new Snapshot();

    public void sync() {
        c = new Snapshot();
        p = new Snapshot();

        GL11.glDisable(GL11.GL_STENCIL_TEST);
        GL11.glDisable(GL11.GL_ALPHA_TEST);
        GL11.glDisable(GL11.GL_TEXTURE_2D);
        GL11.glDisable(GL11.GL_BLEND);

        GL14.glBlendEquation(GL14.GL_FUNC_ADD);
    }

    public void apply() {
        applyStencil();
        applyAlpha();
        applyTexture();
        applyBlend();
    }

    private void applyStencil() {
        if (p.enableStencilTest != c.enableStencilTest) {
            p.enableStencilTest = c.enableStencilTest;
            if (c.enableStencilTest) {
                GL11.glEnable(GL11.GL_STENCIL_TEST);
            } else {
                GL11.glDisable(GL11.GL_STENCIL_TEST);
            }
        }
    }

    private void applyAlpha() {
        if (p.enableAlphaTest != c.enableAlphaTest) {
            p.enableAlphaTest = c.enableAlphaTest;
            if (c.enableAlphaTest) {
                GL11.glEnable(GL11.GL_ALPHA_TEST);
            } else {
                GL11.glDisable(GL11.GL_ALPHA_TEST);
            }
        }
    }

    private void applyTexture() {
        if (p.enableTexture2D != c.enableTexture2D) {
            p.enableTexture2D = c.enableTexture2D;
            if (c.enableTexture2D) {
                GL11.glEnable(GL11.GL_TEXTURE_2D);
            } else {
                GL11.glDisable(GL11.GL_TEXTURE_2D);
            }
        }

        if (!c.enableTexture2D) {
            return;
        }

        if (p.textureID != c.textureID || p.textureTarget != c.textureTarget) {
            p.textureID = c.textureID;
            p.textureTarget = c.textureTarget;
            GL11.glBindTexture(c.textureTarget, c.textureID);
        }
    }

    private void applyBlend() {
        if (p.enableBlend != c.enableBlend) {
            p.enableBlend = c.enableBlend;
            if (c.enableBlend) {
                GL11.glEnable(GL11.GL_BLEND);
            } else {
                GL11.glDisable(GL11.GL_BLEND);
            }
        }

        if (!c.enableBlend) {
            return;
        }

        if (p.blendSfactor != c.blendSfactor || p.blendDfactor != c.blendDfactor) {
            p.blendSfactor = c.blendSfactor;
            p.blendDfactor = c.blendDfactor;
            GL11.glBlendFunc(c.blendSfactor, c.blendDfactor);
        }

        if (p.blendEquation != c.blendEquation) {
            p.blendEquation = c.blendEquation;
            GL14.glBlendEquation(c.blendEquation);
        }
    }

    public void glEnable(int cap) {
        asert(cap == GL11.GL_STENCIL_TEST
                || cap == GL11.GL_ALPHA_TEST
                || cap == GL11.GL_TEXTURE_2D
                || cap == GL11.GL_BLEND);

        switch (cap) {
            case GL11.GL_STENCIL_TEST:
                c.enableStencilTest = true;
                break;
            case GL11.GL_ALPHA_TEST:
                c.enableAlphaTest = true;
                break;
            case GL11.GL_TEXTURE_2D:
                c.enableTexture2D = true;
                break;
            case GL11.GL_BLEND:
                c.enableBlend = true;
                break;
        }
    }

    public void glDisable(int cap) {
        switch (cap) {
            case GL11.GL_STENCIL_TEST:
                c.enableStencilTest = false;
                break;
            case GL11.GL_ALPHA_TEST:
                c.enableAlphaTest = false;
                break;
            case GL11.GL_TEXTURE_2D:
                c.enableTexture2D = false;
                break;
            case GL11.GL_BLEND:
                c.enableBlend = false;
                break;
        }
    }

    public void glBindTexture(int target, int texture) {
        c.textureTarget = target;
        c.textureID = texture;
    }

    public void glBlendFunc(int sfactor, int dfactor) {
        c.blendSfactor = sfactor;
        c.blendDfactor = dfactor;
    }

    public void glBlendEquation(int mode) {
        c.blendEquation = mode;
    }

    private static class Snapshot {
        boolean enableStencilTest = false;

        boolean enableAlphaTest = false;

        boolean enableTexture2D = false;
        int textureTarget = 0;
        int textureID = 0;

        boolean enableBlend = false;
        int blendSfactor = 0;
        int blendDfactor = 0;
        int blendEquation = 0;
    }
}
