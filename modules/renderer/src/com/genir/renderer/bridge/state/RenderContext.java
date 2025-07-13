package com.genir.renderer.bridge.state;

import org.lwjgl.opengl.GL11;

public class RenderContext {
    // Mode.
    public int mode;

    // Color mask.
    public boolean maskRed;
    public boolean maskGreen;
    public boolean maskBlue;
    public boolean maskAlpha;

    // Texture.
    public boolean enableTexture;
    public int textureTarget;
    public int textureID;

    // Blend.
    public boolean enableBlend;
    public int blendSfactor;
    public int blendDfactor;
    public int blendEquation;

    // Alpha.
    public boolean enableAlpha;
    public int alphaFunc;
    public float alphaRef;

    public void glEnable(int cap) {
        switch (cap) {
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

    public void glDrawArrays(int mode, int first, int count) {
        this.mode = mode;
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

    public void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        maskRed = red;
        maskGreen = green;
        maskBlue = blue;
        maskAlpha = alpha;
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

        // Compare mode and enabled tests.
        if (mode != that.mode
                || enableTexture != that.enableTexture
                || enableBlend != that.enableBlend
                || enableAlpha != that.enableAlpha) {
            return false;
        }

        // Compare color mask.
        if (maskRed != that.maskRed
                || maskGreen != that.maskGreen
                || maskBlue != that.maskBlue
                || maskAlpha != that.maskAlpha) {
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
        return textureID;
    }

    public RenderContext copy() {
        RenderContext cpy = new RenderContext();

        cpy.mode = mode;

        cpy.maskRed = maskRed;
        cpy.maskGreen = maskGreen;
        cpy.maskBlue = maskBlue;
        cpy.maskAlpha = maskAlpha;

        cpy.enableTexture = enableTexture;
        cpy.textureTarget = textureTarget;
        cpy.textureID = textureID;

        cpy.enableBlend = enableBlend;
        cpy.blendSfactor = blendSfactor;
        cpy.blendDfactor = blendDfactor;
        cpy.blendEquation = blendEquation;

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
