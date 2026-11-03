package com.genir.renderer.overrides.render.particle;

import com.fs.starfarer.loading.specs.EngineSlot;
import org.lwjgl.opengl.GL11;

import java.awt.*;

/**
 * OVERRIDES com.fs.starfarer.combat.entities.ContrailParticle
 */
public class ContrailParticle extends SmoothParticle {
    /**
     * STUBS
     */
    private EngineSlot.BlendMode mode;

    /**
     * STUB
     */
    public ContrailParticle(Color var1, float var2) {
        super(var1, var2);
    }

    @Override
    protected void setBlend() {
        // Override SmoothParticle blend function.
        int dfactorRGB = (mode == EngineSlot.BlendMode.SMOKE) ? GL11.GL_ONE_MINUS_SRC_ALPHA : GL11.GL_ONE;
        org.lwjgl.opengl.GL11.glBlendFunc(GL11.GL_SRC_ALPHA, dfactorRGB);
    }
}
