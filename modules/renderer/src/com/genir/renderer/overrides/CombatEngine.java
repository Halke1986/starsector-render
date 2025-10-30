package com.genir.renderer.overrides;

import com.fs.starfarer.api.combat.CombatEngineLayers;

import static com.fs.starfarer.api.combat.CombatEngineLayers.*;
import static com.genir.renderer.state.AppState.state;

public class CombatEngine {
    private static com.fs.starfarer.combat.CombatEngine engine;

    public static void render(boolean var1, com.fs.starfarer.combat.CombatEngine engine) {
        // Assume first run of Combat Engine render loop happens
        // immediately after the game finished initializing.
        state.gameInitialized = true;
        state.stallDetector.enableDetection();

        CombatEngine.engine = engine;

        if (engine.isDestroyed()) {
            return;
        }

        renderLayer("GlowyContrailParticles");
        renderLayer("SmokyContrailParticles");
        renderLayer(BELOW_PLANETS);
        renderLayer(PLANET_LAYER);
        renderLayer(ABOVE_PLANETS);
        renderLayer(CLOUD_LAYER);
        renderLayer(BELOW_SHIPS_LAYER);
        renderLayer(UNDER_SHIPS_LAYER);
        renderLayer(ASTEROIDS_LAYER);
        renderLayer(CAPITAL_SHIPS_LAYER);
        renderLayer(CRUISERS_LAYER);
        renderLayer(DESTROYERS_LAYER);
        renderLayer(FRIGATES_LAYER);
        renderLayer(BELOW_PHASED_SHIPS_LAYER);
        renderLayer(PHASED_SHIPS_LAYER);
        renderLayer(STATION_WEAPONS_LAYER);
        renderLayer(CONTRAILS_LAYER);
        renderLayer(FIGHTERS_LAYER);
        renderLayer(BELOW_INDICATORS_LAYER);
        renderLayer(FF_INDICATORS_LAYER);
        renderLayer(ABOVE_SHIPS_LAYER);
        renderLayer(ABOVE_SHIPS_AND_MISSILES_LAYER);
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
        renderLayer(ABOVE_PARTICLES_LOWER);
        renderLayer(ABOVE_PARTICLES);
        renderLayer(JUST_BELOW_WIDGETS);

        if (var1) {
            engine.renderFloatingTextManager();
        }
    }

    private static void renderLayer(CombatEngineLayers layer) {
        engine.getRenderer().renderOnly(engine.getViewport(), layer);

        state.exec.execute(() -> state.vertexInterceptor.commitLayer());
    }

    private static void renderLayer(String layer) {
        state.exec.execute(() -> state.vertexInterceptor.setReorderDraw(true));

        switch (layer) {
            case "GlowyContrailParticles" -> engine.getGlowyContrailParticles().render(0F, 0F);
            case "SmokyContrailParticles" -> engine.getSmokyContrailParticles().render(0F, 0F);
            case "DebrisSystem" -> engine.getDebrisSystem().render(0F, 0F);
            case "ExplosionSystem" -> engine.getExplosionSystem().render(0F, 0F);
            case "SmoothParticles" -> engine.getSmoothParticles().render(0F, 0F);
            case "NebulaParticles" -> engine.getNebulaParticles().render(0F, 0F);
            case "NebulaSmoothParticles" -> engine.getNebulaSmoothParticles().render(0F, 0F);
            case "SwirlyNebulaParticles" -> engine.getSwirlyNebulaParticles().render(0F, 0F);
            case "ExplosionParticles" -> engine.getExplosionParticles().render(0F, 0F);
            case "SmokeParticles" -> engine.getSmokeParticles().render(0F, 0F);
            case "NebulaSmokeParticles" -> engine.getNebulaSmokeParticles().render(0F, 0F);
            case "HitParticles" -> engine.getHitParticlesGroup().render(0F, 0F);
            case "NegativeParticles" -> engine.getNegativeParticles().render(0F, 0F);
            case "NegativeNebulaParticles" -> engine.getNegativeNebulaParticles().render(0F, 0F);
            case "NegativeSwirlyNebulaParticles" -> engine.getNegativeSwirlyNebulaParticles().render(0F, 0F);
        }

        state.exec.execute(() -> state.vertexInterceptor.setReorderDraw(false));
        state.exec.execute(() -> state.vertexInterceptor.commitLayer());
    }
}
