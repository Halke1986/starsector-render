package com.genir.renderer.overrides;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.genir.renderer.bridge.Bridge;

public class CombatEngine {
    public static void render(boolean var1, com.fs.starfarer.combat.CombatEngine engine) {
        if (!engine.isDestroyed()) {
            beginParticleLayer("GlowyContrailParticles");
            engine.getGlowyContrailParticles().render(0.0F, 0.0F);
            commitParticleLayer();

            beginParticleLayer("SmokyContrailParticles");
            engine.getSmokyContrailParticles().render(0.0F, 0.0F);
            commitParticleLayer();

            engine.getRenderer().renderExcluding(
                    engine.getViewport(),
                    CombatEngineLayers.ABOVE_PARTICLES,
                    CombatEngineLayers.ABOVE_PARTICLES_LOWER,
                    CombatEngineLayers.JUST_BELOW_WIDGETS
            );

            beginParticleLayer("DebrisSystem");
            engine.getDebrisSystem().render(0.0F, 0.0F);
            commitParticleLayer();

            beginParticleLayer("ExplosionSystem");
            engine.getExplosionSystem().render(0.0F, 0.0F);
            commitParticleLayer();

            beginParticleLayer("SmoothParticles");
            engine.getSmoothParticles().render(0.0F, 0.0F);
            commitParticleLayer();

            beginParticleLayer("NebulaParticles");
            engine.getNebulaParticles().render(0.0F, 0.0F);
            commitParticleLayer();

            beginParticleLayer("NebulaSmoothParticles");
            engine.getNebulaSmoothParticles().render(0.0F, 0.0F); // UNUSED
            commitParticleLayer();

            beginParticleLayer("SwirlyNebulaParticles");
            engine.getSwirlyNebulaParticles().render(0.0F, 0.0F); // UNUSED
            commitParticleLayer();

            beginParticleLayer("ExplosionParticles");
            engine.getExplosionParticles().render(0.0F, 0.0F); // UNUSED
            commitParticleLayer();

            beginParticleLayer("SmokeParticles");
            engine.getSmokeParticles().render(0.0F, 0.0F);
            commitParticleLayer();

            beginParticleLayer("NebulaSmokeParticles");
            engine.getNebulaSmokeParticles().render(0.0F, 0.0F); // UNUSED
            commitParticleLayer();

            beginParticleLayer("HitParticles");
            engine.getHitParticlesGroup().render(0.0F, 0.0F);
            commitParticleLayer();

            beginParticleLayer("NegativeParticles");
            engine.getNegativeParticles().render(0.0F, 0.0F);
            commitParticleLayer();

            beginParticleLayer("NegativeNebulaParticles");
            engine.getNegativeNebulaParticles().render(0.0F, 0.0F); // UNUSED
            commitParticleLayer();

            beginParticleLayer("NegativeSwirlyNebulaParticles");
            engine.getNegativeSwirlyNebulaParticles().render(0.0F, 0.0F); // UNUSED
            commitParticleLayer();

            engine.getRenderer().renderOnly(engine.getViewport(), CombatEngineLayers.ABOVE_PARTICLES_LOWER);
            engine.getRenderer().renderOnly(engine.getViewport(), CombatEngineLayers.ABOVE_PARTICLES);
            engine.getRenderer().renderOnly(engine.getViewport(), CombatEngineLayers.JUST_BELOW_WIDGETS);

            if (var1) {
                engine.renderFloatingTextManager();
            }
        }
    }

    private static void beginParticleLayer(String layer) {
        Bridge.beginLayer(layer);
        Bridge.startIntercept();
    }

    private static void commitParticleLayer() {
        Bridge.endIntercept();
        Bridge.commitLayer();
    }
}
