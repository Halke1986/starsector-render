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
    public int stencilFunc;
    public int stencilRef;
    public int stencilMask;
    public int stencilFail;
    public int stencilZfail;
    public int stencilZpass;
    public boolean stencilRed;
    public boolean stencilGreen;
    public boolean stencilBlue;
    public boolean stencilAlpha;

    // Alpha.
    public boolean enableAlpha;
    public int alphaFunc;
    public float alphaRef;

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

    public void glStencilFunc(int func, int ref, int mask) {
        stencilFunc = func;
        stencilRef = ref;
        stencilMask = mask;
    }

    public void glStencilOp(int fail, int zfail, int zpass) {
        stencilFail = fail;
        stencilZfail = zfail;
        stencilZpass = zpass;
    }

    public void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        stencilRed = red;
        stencilGreen = green;
        stencilBlue = blue;
        stencilAlpha = alpha;
    }

    public void glAlphaFunc(int func, float ref) {
        alphaFunc = func;
        alphaRef = ref;
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

        // Compare stencil context.
        if (enableStencil
                && (stencilFunc != that.stencilFunc
                || stencilRef != that.stencilRef
                || stencilMask != that.stencilMask
                || stencilFail != that.stencilFail
                || stencilZfail != that.stencilZfail
                || stencilZpass != that.stencilZpass
                || stencilRed != that.stencilRed
                || stencilGreen != that.stencilGreen
                || stencilBlue != that.stencilBlue
                || stencilAlpha != that.stencilAlpha)) {
            return false;
        }

        // Compare alpha context.
        if (enableAlpha
                && (alphaFunc != that.alphaFunc
                || alphaRef != that.alphaRef)) {
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
            h = h * 31 + stencilFunc;
            h = h * 31 + stencilRef;
            h = h * 31 + stencilMask;
            h = h * 31 + stencilFail;
            h = h * 31 + stencilZfail;
            h = h * 31 + stencilZpass;
            h = h * 31 + (stencilRed ? 1 : 0);
            h = h * 31 + (stencilGreen ? 1 : 0);
            h = h * 31 + (stencilBlue ? 1 : 0);
            h = h * 31 + (stencilAlpha ? 1 : 0);
        }

        if (enableAlpha) {
            h = h * 31 + alphaFunc;
            h = h * 31 + (int) alphaRef;
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
        cpy.stencilFunc = stencilFunc;
        cpy.stencilRef = stencilRef;
        cpy.stencilMask = stencilMask;
        cpy.stencilFail = stencilFail;
        cpy.stencilZfail = stencilZfail;
        cpy.stencilZpass = stencilZpass;
        cpy.stencilRed = stencilRed;
        cpy.stencilGreen = stencilGreen;
        cpy.stencilBlue = stencilBlue;
        cpy.stencilAlpha = stencilAlpha;

        cpy.enableAlpha = enableAlpha;
        cpy.alphaFunc = alphaFunc;
        cpy.alphaRef = alphaRef;

        return cpy;
    }

    public int arrayMode() {
        return switch (mode) {
            case GL11.GL_QUADS, GL11.GL_QUAD_STRIP -> GL11.GL_QUADS;
            case GL11.GL_TRIANGLES, GL11.GL_TRIANGLE_STRIP, GL11.GL_TRIANGLE_FAN -> GL11.GL_TRIANGLES;
            default -> -1;
        };
    }
}
