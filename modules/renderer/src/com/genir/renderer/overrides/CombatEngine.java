package com.genir.renderer.overrides;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.genir.renderer.bridge.Bridge;

import static com.fs.starfarer.api.combat.CombatEngineLayers.*;
import static com.genir.renderer.Debug.logger;

public class CombatEngine {
    private static com.fs.starfarer.combat.CombatEngine engine;

    public static void render(boolean var1, com.fs.starfarer.combat.CombatEngine engine) {
        CombatEngine.engine = engine;

        if (engine.isDestroyed()) {
            return;
        }

        logger().info("");

        renderLayer("GlowyContrailParticles");
        renderLayer("SmokyContrailParticles");
        renderLayer(BELOW_PLANETS);
        engine.getRenderer().renderOnly(engine.getViewport(), PLANET_LAYER); // Delegate 3D planet rendering to Vanilla.
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
            renderLayer("FloatingTextManager");
        }
    }

    private static void renderLayer(CombatEngineLayers layer) {
        Bridge.beginLayer(layer.name());

        engine.getRenderer().renderOnly(engine.getViewport(), layer);

        Bridge.commitLayer();
    }

    private static void renderLayer(String layer) {
        Bridge.beginLayer(layer);
        Bridge.beginIntercept(); // When there's no possibility of CustomCombatEntity occurrence, intercept all entities.

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
            case "FloatingTextManager" -> engine.renderFloatingTextManager();
        }

        Bridge.endIntercept();
        Bridge.commitLayer();
    }
}
