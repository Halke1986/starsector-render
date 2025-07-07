package com.genir.renderer.bridge.state;

import org.lwjgl.opengl.GL11;

public class RenderContext {
    // Mode.
    public int mode;

    // Texture.
    public boolean enableTexture;
    public int textureTarget;
    public int textureID;

    // Blend.
    public boolean enableBlend;
    public int blendSfactor;
    public int blendDfactor;
    public int blendEquation;

    // Stencil.
    public boolean enableStencil;

    // Alpha.
    public boolean enableAlpha;

    public void glEnable(int cap) {
        switch (cap) {
            case GL11.GL_STENCIL_TEST:
                enableStencil = true;
                break;
            case GL11.GL_ALPHA_TEST:
                enableAlpha = true;
                break;
            case GL11.GL_TEXTURE_2D:
                enableTexture = true;
                break;
            case GL11.GL_BLEND:
                enableBlend = true;
                break;
        }
    }

    public void glDisable(int cap) {
        switch (cap) {
            case GL11.GL_STENCIL_TEST:
                enableStencil = false;
                break;
            case GL11.GL_ALPHA_TEST:
                enableAlpha = false;
                break;
            case GL11.GL_TEXTURE_2D:
                enableTexture = false;
                break;
            case GL11.GL_BLEND:
                enableBlend = false;
                break;
        }
    }

    public void glBegin(int mode) {
        this.mode = mode;
    }

    public void glEnd() {
        this.mode = -1;
    }

    public void glBindTexture(int target, int texture) {
        textureTarget = target;
        textureID = texture;
    }

    public void glBlendFunc(int sfactor, int dfactor) {
        blendSfactor = sfactor;
        blendDfactor = dfactor;
    }

    public void glBlendEquation(int mode) {
        blendEquation = mode;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RenderContext that = (RenderContext) o;

        if (mode != that.mode
                || enableTexture != that.enableTexture
                || enableBlend != that.enableBlend
                || enableStencil != that.enableStencil
                || enableAlpha != that.enableAlpha) {
            return false;
        }

        // Compare texture context.
        if (enableTexture
                && (textureTarget != that.textureTarget
                || textureID != that.textureID)) {
            return false;
        }

        // Compare blend context.
        if (enableBlend
                && (blendSfactor != that.blendSfactor
                || blendDfactor != that.blendDfactor
                || blendEquation != that.blendEquation)) {
            return false;
        }

        return true;
    }

    @Override
    public int hashCode() {
        int h = 0;

        h = h * 31 + arrayMode();
        h = h * 31 + (enableTexture ? 1 : 0);
        h = h * 31 + (enableBlend ? 1 : 0);
        h = h * 31 + (enableStencil ? 1 : 0);
        h = h * 31 + (enableAlpha ? 1 : 0);

        if (enableTexture) {
            h = h * 31 + textureTarget;
            h = h * 31 + textureID;
        }

        if (enableBlend) {
            h = h * 31 + blendSfactor;
            h = h * 31 + blendDfactor;
            h = h * 31 + blendEquation;
        }

        if (enableStencil) {
        }

        if (enableAlpha) {
        }

        return h;
    }

    public RenderContext copy() {
        RenderContext cpy = new RenderContext();

        cpy.mode = mode;

        cpy.enableTexture = enableTexture;
        cpy.textureTarget = textureTarget;
        cpy.textureID = textureID;

        cpy.enableBlend = enableBlend;
        cpy.blendSfactor = blendSfactor;
        cpy.blendDfactor = blendDfactor;
        cpy.blendEquation = blendEquation;

        cpy.enableStencil = enableStencil;

        cpy.enableAlpha = enableAlpha;

        return cpy;
    }

    public int arrayMode() {
        return switch (mode) {
            case GL11.GL_QUADS, GL11.GL_QUAD_STRIP -> GL11.GL_QUADS;
            case GL11.GL_TRIANGLE_STRIP, GL11.GL_TRIANGLE_FAN -> GL11.GL_TRIANGLES;
            default -> -1;
        };
    }
}
