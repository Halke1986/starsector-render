package com.genir.renderer.overrides.render;

import com.fs.starfarer.loading.specs.EngineSlot;
import org.lwjgl.opengl.GL11;

/**
 * OVERRIDES com.fs.starfarer.combat.entities.ContrailParticle
 */
public class ContrailParticle extends SmoothParticle {
    /**
     * STUBS
     */
    private EngineSlot.BlendMode mode;

    /**
     * REPLACED METHOD
     */
    @Override
    public void preBatch() {
        super.preBatch();

        // Override SmoothParticle blend function.
        int dfactorRGB = (mode == EngineSlot.BlendMode.SMOKE) ? GL11.GL_ONE_MINUS_SRC_ALPHA : GL11.GL_ONE;
        com.genir.renderer.bridge.commands.GL11.glBlendFunc(GL11.GL_SRC_ALPHA, dfactorRGB);
    }
}
