package com.genir.renderer.bridge.state;

public class ReorderedDrawContext {
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ReorderedDrawContext that = (ReorderedDrawContext) o;

        // Compare mode and enabled tests.
        if (mode != that.mode
                || enableTexture != that.enableTexture
                || enableBlend != that.enableBlend) {
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
        return textureID;
    }
}
