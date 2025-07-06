package com.genir.renderer.bridge.state;

public class RenderContext {
    // Texture.
    public int textureTarget;
    public int textureID;

    // Blend.
    public int blendSfactor;
    public int blendDfactor;
    public int blendEquation;

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

        return textureTarget == that.textureTarget
                && textureID == that.textureID
                && blendSfactor == that.blendSfactor
                && blendDfactor == that.blendDfactor
                && blendEquation == that.blendEquation;
    }

    @Override
    public int hashCode() {
        int h = 0;

        h = h * 31 + textureTarget;
        h = h * 31 + textureID;
        h = h * 31 + blendSfactor;
        h = h * 31 + blendDfactor;
        h = h * 31 + blendEquation;

        return h;
    }

    public RenderContext copy() {
        RenderContext cpy = new RenderContext();

        cpy.textureTarget = textureTarget;
        cpy.textureID = textureID;
        cpy.blendSfactor = blendSfactor;
        cpy.blendDfactor = blendDfactor;
        cpy.blendEquation = blendEquation;

        return cpy;
    }
}
