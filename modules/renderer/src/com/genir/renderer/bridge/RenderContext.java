package com.genir.renderer.bridge;

public class RenderContext {
    // Texture.
    public int textureTarget = -1;
    public int textureID = -1;

    // Blend.
    public int blendSfactor = -1;
    public int blendDfactor = -1;
    public int blendEquation = Default.blendEquation;

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
