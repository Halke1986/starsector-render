package com.genir.renderer.overrides;

import com.fs.starfarer.api.combat.CombatEngineLayers;
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

        beginLayer("GlowyContrailParticles");
        engine.getGlowyContrailParticles().render(0.0F, 0.0F);

        beginLayer("SmokyContrailParticles");
        engine.getSmokyContrailParticles().render(0.0F, 0.0F);

        commitLayer();
        engine.getRenderer().renderExcluding(
                engine.getViewport(),
                ABOVE_PARTICLES,
                ABOVE_PARTICLES_LOWER,
                JUST_BELOW_WIDGETS
        );

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
        commitLayer();

//        beginLayer(ABOVE_PARTICLES_LOWER);
        engine.getRenderer().renderOnly(engine.getViewport(), ABOVE_PARTICLES_LOWER);

//        beginLayer(ABOVE_PARTICLES);
        engine.getRenderer().renderOnly(engine.getViewport(), ABOVE_PARTICLES);

//        beginLayer(JUST_BELOW_WIDGETS);
        engine.getRenderer().renderOnly(engine.getViewport(), JUST_BELOW_WIDGETS);

        if (var1) {
            engine.renderFloatingTextManager();
        }
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
