package com.genir.renderer.overrides;

import com.fs.graphics.LayeredRenderer;
import com.fs.graphics.particle.DynamicParticleGroup;
import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.fs.starfarer.combat.CombatViewport;
import com.fs.starfarer.renderers.FloatingTextManager;
import com.fs.starfarer.renderers.damage.DebrisParticleSystem;
import com.fs.starfarer.renderers.damage.ExplosionParticleSystem;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.context.VertexInterceptor;

/**
 * OVERRIDES com.fs.starfarer.combat.CombatEngine
 */
public class CombatEngine {
    /**
     * STUB
     */
    private DynamicParticleGroup CombatEngine_hitParticlesGroup = null;

    /**
     * STUB
     */
    public boolean isDestroyed() {
        return false;
    }

    /**
     * STUB
     */
    public DynamicParticleGroup getSmoothParticles() {
        return null;
    }

    /**
     * STUB
     */
    public DynamicParticleGroup getSwirlyNebulaParticles() {
        return null;
    }

    /**
     * STUB
     */
    public DynamicParticleGroup getNegativeSwirlyNebulaParticles() {
        return null;
    }

    /**
     * STUB
     */
    public DynamicParticleGroup getNebulaSmoothParticles() {
        return null;
    }

    /**
     * STUB
     */
    public DynamicParticleGroup getNebulaParticles() {
        return null;
    }

    /**
     * STUB
     */
    public DynamicParticleGroup getNegativeNebulaParticles() {
        return null;
    }

    /**
     * STUB
     */
    public DynamicParticleGroup getNebulaSmokeParticles() {
        return null;
    }

    /**
     * STUB
     */
    public DynamicParticleGroup getNegativeParticles() {
        return null;
    }

    /**
     * STUB
     */
    public DynamicParticleGroup getExplosionParticles() {
        return null;
    }

    /**
     * STUB
     */
    public DynamicParticleGroup getSmokeParticles() {
        return null;
    }

    /**
     * STUB
     */
    public DynamicParticleGroup getGlowyContrailParticles() {
        return null;
    }

    /**
     * STUB
     */
    public DynamicParticleGroup getSmokyContrailParticles() {
        return null;
    }

    /**
     * STUB
     */
    public ExplosionParticleSystem getExplosionSystem() {
        return null;
    }

    /**
     * STUB
     */
    public DebrisParticleSystem getDebrisSystem() {
        return null;
    }

    /**
     * STUB
     */
    public LayeredRenderer<CombatEngineLayers, CombatViewport> getRenderer() {
        return null;
    }

    /**
     * STUB
     */
    public CombatViewport getViewport() {
        return null;
    }

    /**
     * STUB
     */
    public FloatingTextManager getFloatingTextManager() {
        return null;
    }

    /**
     * REPLACED METHOD
     */
    public void render(boolean enableFloatingText) {
        if (isDestroyed()) {
            return;
        }

        unlockParticleLimit();

        renderLayer("GlowyContrailParticles");
        renderLayer("SmokyContrailParticles");
        renderLayer(CombatEngineLayers.BELOW_PLANETS);
        renderLayer(CombatEngineLayers.PLANET_LAYER);
        renderLayer(CombatEngineLayers.ABOVE_PLANETS);
        renderLayer(CombatEngineLayers.CLOUD_LAYER);
        renderLayer(CombatEngineLayers.BELOW_SHIPS_LAYER);
        renderLayer(CombatEngineLayers.UNDER_SHIPS_LAYER);
        renderLayer(CombatEngineLayers.ASTEROIDS_LAYER);
        renderLayer(CombatEngineLayers.CAPITAL_SHIPS_LAYER);
        renderLayer(CombatEngineLayers.CRUISERS_LAYER);
        renderLayer(CombatEngineLayers.DESTROYERS_LAYER);
        renderLayer(CombatEngineLayers.FRIGATES_LAYER);
        renderLayer(CombatEngineLayers.BELOW_PHASED_SHIPS_LAYER);
        renderLayer(CombatEngineLayers.PHASED_SHIPS_LAYER);
        renderLayer(CombatEngineLayers.STATION_WEAPONS_LAYER);
        renderLayer(CombatEngineLayers.CONTRAILS_LAYER);
        renderLayer(CombatEngineLayers.FIGHTERS_LAYER);
        renderLayer(CombatEngineLayers.BELOW_INDICATORS_LAYER);
        renderLayer(CombatEngineLayers.FF_INDICATORS_LAYER);
        renderLayer(CombatEngineLayers.ABOVE_SHIPS_LAYER);
        renderLayer(CombatEngineLayers.ABOVE_SHIPS_AND_MISSILES_LAYER);
        renderLayer("DebrisSystem");
        renderLayer("ExplosionSystem");
        renderLayer("SmoothParticles");
        renderLayer("NebulaParticles");
        renderLayer("NebulaSmoothParticles");
        renderLayer("SwirlyNebulaParticles");
        renderLayer("ExplosionParticles");
        renderLayer("SmokeParticles");
        renderLayer("NebulaSmokeParticles");
        renderLayer("HitParticles");
        renderLayer("NegativeParticles");
        renderLayer("NegativeNebulaParticles");
        renderLayer("NegativeSwirlyNebulaParticles");
        renderLayer(CombatEngineLayers.ABOVE_PARTICLES_LOWER);
        renderLayer(CombatEngineLayers.ABOVE_PARTICLES);
        renderLayer(CombatEngineLayers.JUST_BELOW_WIDGETS);

        if (enableFloatingText) {
            getFloatingTextManager().FloatingTextManager_render(1.0F);
        }
    }

    /**
     * ADDED METHOD
     */
    private void renderLayer(CombatEngineLayers layer) {
        getRenderer().renderOnly(getViewport(), layer);

        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new VertexInterceptor.commitLayer());
    }

    /**
     * ADDED METHOD
     */
    private void renderLayer(String layer) {
        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new VertexInterceptor.setReorderDraw(true));

        switch (layer) {
            case "GlowyContrailParticles" -> getGlowyContrailParticles().render(0F, 0F);
            case "SmokyContrailParticles" -> getSmokyContrailParticles().render(0F, 0F);
            case "DebrisSystem" -> getDebrisSystem().render(0F, 0F);
            case "ExplosionSystem" -> getExplosionSystem().render(0F, 0F);
            case "SmoothParticles" -> getSmoothParticles().render(0F, 0F);
            case "NebulaParticles" -> getNebulaParticles().render(0F, 0F);
            case "NebulaSmoothParticles" -> getNebulaSmoothParticles().render(0F, 0F);
            case "SwirlyNebulaParticles" -> getSwirlyNebulaParticles().render(0F, 0F);
            case "ExplosionParticles" -> getExplosionParticles().render(0F, 0F);
            case "SmokeParticles" -> getSmokeParticles().render(0F, 0F);
            case "NebulaSmokeParticles" -> getNebulaSmokeParticles().render(0F, 0F);
            case "HitParticles" -> CombatEngine_hitParticlesGroup.render(0F, 0F);
            case "NegativeParticles" -> getNegativeParticles().render(0F, 0F);
            case "NegativeNebulaParticles" -> getNegativeNebulaParticles().render(0F, 0F);
            case "NegativeSwirlyNebulaParticles" -> getNegativeSwirlyNebulaParticles().render(0F, 0F);
        }

        context.exec.execute(new VertexInterceptor.setReorderDraw(false));
        context.exec.execute(new VertexInterceptor.commitLayer());
    }

    /**
     * ADDED METHOD
     */
    private void unlockParticleLimit() {
        int NO_LIMIT = Integer.MAX_VALUE;

        if (getGlowyContrailParticles().getLimit() == NO_LIMIT) {
            return;
        }

        getGlowyContrailParticles().setLimit(NO_LIMIT);
        getSmokyContrailParticles().setLimit(NO_LIMIT);
        getSmoothParticles().setLimit(NO_LIMIT);
        getNebulaParticles().setLimit(NO_LIMIT);
        getNebulaSmoothParticles().setLimit(NO_LIMIT);
        getSwirlyNebulaParticles().setLimit(NO_LIMIT);
        getExplosionParticles().setLimit(NO_LIMIT);
        getSmokeParticles().setLimit(NO_LIMIT);
        getNebulaSmokeParticles().setLimit(NO_LIMIT);
        CombatEngine_hitParticlesGroup.setLimit(NO_LIMIT);
        getNegativeParticles().setLimit(NO_LIMIT);
        getNegativeNebulaParticles().setLimit(NO_LIMIT);
        getNegativeSwirlyNebulaParticles().setLimit(NO_LIMIT);
    }
}
