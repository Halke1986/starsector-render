package com.genir.renderer.bridge.impl;

import org.lwjgl.opengl.GL11;

import java.util.Stack;

/**
 * RenderContext optimizes state changes by filtering out redundant calls (e.g., consecutive glEnable calls).
 */
public class RenderContext {
    private final Executor exec;

    private final Snapshot c = new Snapshot();
    private final Snapshot p = new Snapshot();

    private final Stack<Snapshot> stack = new Stack<>();

    public RenderContext(Executor exec) {
        this.exec = exec;
    }

    public boolean intercept(int cap) {
        return (cap == GL11.GL_STENCIL_TEST
                || cap == GL11.GL_ALPHA_TEST
                || cap == GL11.GL_TEXTURE_2D
                || cap == GL11.GL_BLEND
                || cap == GL11.GL_LIGHTING
        );
    }

    public boolean enableTexture() {
        return c.enableTexture2D;
    }

    public boolean enableLighting() {
        return c.enableLighting;
    }

    public void apply() {
        applyStencil();
        applyAlpha();
        applyTexture();
        applyBlend();
        applyLighting();
    }

    public void glEnable(int cap) {
        setState(cap, true);
    }

    public void glDisable(int cap) {
        setState(cap, false);
    }

    public void glPushAttrib(int mask) {
        c.attribMask = mask;

        Snapshot saved = new Snapshot();
        c.save(saved);
        stack.push(saved);
    }

    public void glPopAttrib() {
        Snapshot saved = stack.pop();

        if (saved != null) {
            saved.save(p);
            saved.save(c);
        }
    }

    public void glBlendFunc(int sfactor, int dfactor) {
        c.blendSfactor = sfactor;
        c.blendDfactor = dfactor;
    }

    private void applyStencil() {
        if (p.enableStencilTest != c.enableStencilTest) {
            p.enableStencilTest = c.enableStencilTest;
            apply(GL11.GL_STENCIL_TEST, c.enableStencilTest);
        }
    }

    private void applyAlpha() {
        if (p.enableAlphaTest != c.enableAlphaTest) {
            p.enableAlphaTest = c.enableAlphaTest;
            apply(GL11.GL_ALPHA_TEST, c.enableAlphaTest);
        }
    }

    private void applyTexture() {
        if (p.enableTexture2D != c.enableTexture2D) {
            p.enableTexture2D = c.enableTexture2D;
            apply(GL11.GL_TEXTURE_2D, c.enableTexture2D);
        }
    }

    private void applyBlend() {
        if (p.enableBlend != c.enableBlend) {
            p.enableBlend = c.enableBlend;
            apply(GL11.GL_BLEND, c.enableBlend);
        }

        if (c.enableBlend) {
            if (p.blendSfactor != c.blendSfactor || p.blendDfactor != c.blendDfactor) {
                p.blendSfactor = c.blendSfactor;
                p.blendDfactor = c.blendDfactor;

                final int sfactor = c.blendSfactor;
                final int dfactor = c.blendDfactor;

                exec.execute(() -> GL11.glBlendFunc(sfactor, dfactor));
            }
        }
    }

    private void applyLighting() {
        if (p.enableLighting != c.enableLighting) {
            p.enableLighting = c.enableLighting;
            apply(GL11.GL_LIGHTING, c.enableLighting);
        }
    }

    private void apply(int cap, boolean value) {
        if (value) {
            exec.execute(() -> GL11.glEnable(cap));
        } else {
            exec.execute(() -> GL11.glDisable(cap));
        }
    }

    private void setState(int cap, boolean value) {
        switch (cap) {
            case GL11.GL_STENCIL_TEST:
                c.enableStencilTest = value;
                break;
            case GL11.GL_ALPHA_TEST:
                c.enableAlphaTest = value;
                break;
            case GL11.GL_TEXTURE_2D:
                c.enableTexture2D = value;
                break;
            case GL11.GL_BLEND:
                c.enableBlend = value;
                break;
            case GL11.GL_LIGHTING:
                c.enableLighting = value;
                break;
        }
    }

    private static class Snapshot {
        int attribMask = 0;

        boolean enableStencilTest = false;
        boolean enableAlphaTest = false;
        boolean enableTexture2D = false;
        boolean enableBlend = false;
        boolean enableLighting = false;
        int blendSfactor = 0;
        int blendDfactor = 0;

        void save(Snapshot other) {
            other.attribMask = attribMask;

            if ((attribMask & GL11.GL_ENABLE_BIT) != 0) {
                other.enableStencilTest = enableStencilTest;
                other.enableAlphaTest = enableAlphaTest;
                other.enableTexture2D = enableTexture2D;
                other.enableBlend = enableBlend;
                other.enableLighting = enableLighting;
            }

            if ((attribMask & GL11.GL_COLOR_BUFFER_BIT) != 0) {
                other.blendSfactor = blendSfactor;
                other.blendDfactor = blendDfactor;
            }
        }
    }
}
