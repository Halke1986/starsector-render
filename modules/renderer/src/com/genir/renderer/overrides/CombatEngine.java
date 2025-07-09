package com.genir.renderer.overrides;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.fs.starfarer.combat.CombatViewport;
import com.genir.renderer.bridge.Bridge;

import static com.fs.starfarer.api.combat.CombatEngineLayers.*;
import static com.genir.renderer.Debug.logger;

public class CombatEngine {
    private static boolean layerActive = false;

    public static void render(boolean var1, com.fs.starfarer.combat.CombatEngine engine) {
        if (engine.isDestroyed()) {
            return;
        }

        logger().info("");

        com.fs.graphics.LayeredRenderer<CombatEngineLayers, CombatViewport> renderer = engine.getRenderer();
        CombatViewport viewport = engine.getViewport();

        beginLayer("GlowyContrailParticles");
        engine.getGlowyContrailParticles().render(0.0F, 0.0F);

        beginLayer("SmokyContrailParticles");
        engine.getSmokyContrailParticles().render(0.0F, 0.0F);

        beginLayer(BELOW_PLANETS);
        renderer.renderOnly(viewport, BELOW_PLANETS);
        commitLayer();

        renderer.renderOnly(viewport, PLANET_LAYER);

        beginLayer(ABOVE_PLANETS);
        renderer.renderOnly(viewport, ABOVE_PLANETS);

        beginLayer(CLOUD_LAYER);
        renderer.renderOnly(viewport, CLOUD_LAYER);

        beginLayer(BELOW_SHIPS_LAYER);
        renderer.renderOnly(viewport, BELOW_SHIPS_LAYER);

        beginLayer(UNDER_SHIPS_LAYER);
        renderer.renderOnly(viewport, UNDER_SHIPS_LAYER);

        beginLayer(ASTEROIDS_LAYER);
        renderer.renderOnly(viewport, ASTEROIDS_LAYER);

        beginLayer(CAPITAL_SHIPS_LAYER);
        renderer.renderOnly(viewport, CAPITAL_SHIPS_LAYER);

        beginLayer(CRUISERS_LAYER);
        renderer.renderOnly(viewport, CRUISERS_LAYER);

        beginLayer(DESTROYERS_LAYER);
        renderer.renderOnly(viewport, DESTROYERS_LAYER);

        beginLayer(FRIGATES_LAYER);
        renderer.renderOnly(viewport, FRIGATES_LAYER);

        beginLayer(BELOW_PHASED_SHIPS_LAYER);
        renderer.renderOnly(viewport, BELOW_PHASED_SHIPS_LAYER);

        beginLayer(PHASED_SHIPS_LAYER);
        renderer.renderOnly(viewport, PHASED_SHIPS_LAYER);

        beginLayer(STATION_WEAPONS_LAYER);
        renderer.renderOnly(viewport, STATION_WEAPONS_LAYER);

        beginLayer(CONTRAILS_LAYER);
        renderer.renderOnly(viewport, CONTRAILS_LAYER);

        beginLayer(FIGHTERS_LAYER);
        renderer.renderOnly(viewport, FIGHTERS_LAYER);

        beginLayer(BELOW_INDICATORS_LAYER);
        renderer.renderOnly(viewport, BELOW_INDICATORS_LAYER);

        beginLayer(FF_INDICATORS_LAYER);
        renderer.renderOnly(viewport, FF_INDICATORS_LAYER);

        beginLayer(ABOVE_SHIPS_LAYER);
        renderer.renderOnly(viewport, ABOVE_SHIPS_LAYER);

        beginLayer(ABOVE_SHIPS_AND_MISSILES_LAYER);
        renderer.renderOnly(viewport, ABOVE_SHIPS_AND_MISSILES_LAYER);

        beginLayer("DebrisSystem");
        engine.getDebrisSystem().render(0.0F, 0.0F);

        beginLayer("ExplosionSystem");
        engine.getExplosionSystem().render(0.0F, 0.0F);

        beginLayer("SmoothParticles");
        engine.getSmoothParticles().render(0.0F, 0.0F);

        beginLayer("NebulaParticles");
        engine.getNebulaParticles().render(0.0F, 0.0F);

        beginLayer("NebulaSmoothParticles");
        engine.getNebulaSmoothParticles().render(0.0F, 0.0F); // UNUSED

        beginLayer("SwirlyNebulaParticles");
        engine.getSwirlyNebulaParticles().render(0.0F, 0.0F); // UNUSED

        beginLayer("ExplosionParticles");
        engine.getExplosionParticles().render(0.0F, 0.0F); // UNUSED

        beginLayer("SmokeParticles");
        engine.getSmokeParticles().render(0.0F, 0.0F);

        beginLayer("NebulaSmokeParticles");
        engine.getNebulaSmokeParticles().render(0.0F, 0.0F); // UNUSED

        beginLayer("HitParticles");
        engine.getHitParticlesGroup().render(0.0F, 0.0F);

        beginLayer("NegativeParticles");
        engine.getNegativeParticles().render(0.0F, 0.0F);

        beginLayer("NegativeNebulaParticles");
        engine.getNegativeNebulaParticles().render(0.0F, 0.0F); // UNUSED

        beginLayer("NegativeSwirlyNebulaParticles");
        engine.getNegativeSwirlyNebulaParticles().render(0.0F, 0.0F); // UNUSED

        beginLayer(ABOVE_PARTICLES_LOWER);
        renderer.renderOnly(viewport, ABOVE_PARTICLES_LOWER);

        beginLayer(ABOVE_PARTICLES);
        renderer.renderOnly(viewport, ABOVE_PARTICLES);

        beginLayer(JUST_BELOW_WIDGETS);
        renderer.renderOnly(viewport, JUST_BELOW_WIDGETS);

        if (var1) {
            beginLayer("FloatingTextManager");
            engine.renderFloatingTextManager();
        }

        commitLayer();
    }

    private static void beginLayer(CombatEngineLayers layer) {
        beginLayer(layer.name());
    }

    private static void beginLayer(String layer) {
        if (layerActive) {
            commitLayer();
        }

        Bridge.beginLayer(layer);
        Bridge.beginIntercept();

        layerActive = true;
    }

    private static void commitLayer() {
        if (layerActive) {
            Bridge.endIntercept();
            Bridge.commitLayer();

            layerActive = false;
        }
    }

    private static void dropLayer() {
        if (layerActive) {
            Bridge.endIntercept();
            Bridge.dropLayer();

            layerActive = false;
        }
    }
}
