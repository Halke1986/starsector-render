package com.fs.starfarer.combat;

import com.fs.graphics.LayeredRenderer;
import com.fs.graphics.particle.DynamicParticleGroup;
import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.fs.starfarer.renderers.FloatingTextManager;
import com.fs.starfarer.renderers.damage.DebrisParticleSystem;
import com.fs.starfarer.renderers.damage.ExplosionParticleSystem;
import com.fs.starfarer.util.events.EventList;

public class CombatEngine {
    // $FF: renamed from: OÔ0000 com.fs.graphics.particle.DynamicParticleGroup
    private DynamicParticleGroup hitParticlesGroup = null;

    public boolean isDestroyed() {
        return false;
    }

    public DynamicParticleGroup getSmoothParticles() {
        return null;
    }

    public DynamicParticleGroup getSwirlyNebulaParticles() {
        return null;
    }

    public DynamicParticleGroup getNegativeSwirlyNebulaParticles() {
        return null;
    }

    public DynamicParticleGroup getNebulaSmoothParticles() {
        return null;
    }

    public DynamicParticleGroup getNebulaParticles() {
        return null;
    }

    public DynamicParticleGroup getNegativeNebulaParticles() {
        return null;
    }

    public DynamicParticleGroup getNebulaSmokeParticles() {
        return null;
    }

    public DynamicParticleGroup getNegativeParticles() {
        return null;
    }

    public DynamicParticleGroup getExplosionParticles() {
        return null;
    }

    public DynamicParticleGroup getSmokeParticles() {
        return null;
    }

    public DynamicParticleGroup getGlowyContrailParticles() {
        return null;
    }

    public DynamicParticleGroup getSmokyContrailParticles() {
        return null;
    }

    public ExplosionParticleSystem getExplosionSystem() {
        return null;
    }

    public DebrisParticleSystem getDebrisSystem() {
        return null;
    }

    public LayeredRenderer<CombatEngineLayers, CombatViewport> getRenderer() {
        return null;
    }

    public CombatViewport getViewport() {
        return null;
    }

    public FloatingTextManager getFloatingTextManager() {
        return null;
    }

    // ADDED METHOD
    public DynamicParticleGroup getHitParticlesGroup() {
        return hitParticlesGroup;
    }

    // ADDED METHOD
    public void renderFloatingTextManager() {
        this.getFloatingTextManager().render(1.0F);
    }

    // REPLACED METHOD
    public void render(boolean var1) {
        com.genir.renderer.overrides.CombatEngine.render(var1, this);
    }

    // REPLACED METHOD
    public void advance(float var1, EventList var2) {
        com.genir.renderer.overrides.CombatEngine.preAdvance();

        advanceImpl(var1, var2);
    }

    // RENAMED METHOD
    public void advanceImpl(float var1, EventList var2) {
    }
}
