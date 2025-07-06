package com.genir.renderer.bridge;

public class RenderContext {
    public int textureTarget = -1;
    public int textureID = -1;
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
        return (73856093 * textureTarget)
                ^ (19349669 * textureID)
                ^ (83492791 * blendSfactor)
                ^ (37216181 * blendDfactor)
                ^ (64828639 * blendEquation);
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
