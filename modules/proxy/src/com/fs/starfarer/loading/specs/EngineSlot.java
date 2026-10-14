package com.fs.starfarer.loading.specs;

import com.genir.renderer.overrides.render.EngineGlow;
import org.lwjgl.util.vector.Vector2f;

import java.awt.*;

public class EngineSlot {
    public boolean isOmegaMode() {
        return false;
    }

    public boolean isWithSpread() {
        return false;
    }

    public boolean isSystemActivated() {
        return false;
    }

    public float computeMidArcAngle(float var1) {
        return 0;
    }

    public Vector2f computePosition(Vector2f var1, float var2) {
        return null;
    }

    public float getMaxSpread() {
        return 0;
    }

    public Color getColor() {
        return null;
    }

    public float getWidth() {
        return 0;
    }

    public float getLength() {
        return 0;
    }

    public Color getGlowAlternateColor() {
        return null;
    }

    public float getGlowSizeMult() {
        return 0;
    }

    public EngineGlow.EngineGlowType getGlowType() {
        return null;
    }

    public static enum BlendMode {
        GLOW,
        SMOKE;
    }
}
