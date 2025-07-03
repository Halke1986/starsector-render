package com.genir.graphics;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.fs.starfarer.combat.CombatEngine;

public class CombatRenderer {
    public static void render(boolean var1, CombatEngine engine) {
        if (!engine.isDestroyed()) {
            beginLayer("GlowyContrailParticles");
            engine.getGlowyContrailParticles().render(0.0F, 0.0F);
            commitLayer();

            beginLayer("SmokyContrailParticles");
            engine.getSmokyContrailParticles().render(0.0F, 0.0F);
            commitLayer();

            engine.getRenderer().renderExcluding(
                    engine.getViewport(),
                    CombatEngineLayers.ABOVE_PARTICLES,
                    CombatEngineLayers.ABOVE_PARTICLES_LOWER,
                    CombatEngineLayers.JUST_BELOW_WIDGETS
            );

            beginLayer("DebrisSystem");
            engine.getDebrisSystem().render(0.0F, 0.0F);
            commitLayer();

            beginLayer("ExplosionSystem");
            engine.getExplosionSystem().render(0.0F, 0.0F);
            commitLayer();

            beginLayer("SmoothParticles");
            engine.getSmoothParticles().render(0.0F, 0.0F);
            commitLayer();

            beginLayer("NebulaParticles");
            engine.getNebulaParticles().render(0.0F, 0.0F);
            commitLayer();

            beginLayer("NebulaSmoothParticles");
            engine.getNebulaSmoothParticles().render(0.0F, 0.0F); // UNUSED
            commitLayer();

            beginLayer("SwirlyNebulaParticles");
            engine.getSwirlyNebulaParticles().render(0.0F, 0.0F); // UNUSED
            commitLayer();

            beginLayer("ExplosionParticles");
            engine.getExplosionParticles().render(0.0F, 0.0F); // UNUSED
            commitLayer();

            beginLayer("SmokeParticles");
            engine.getSmokeParticles().render(0.0F, 0.0F);
            commitLayer();

            beginLayer("NebulaSmokeParticles");
            engine.getNebulaSmokeParticles().render(0.0F, 0.0F); // UNUSED
            commitLayer();

            beginLayer("HitParticles");
            engine.getHitParticlesGroup().render(0.0F, 0.0F);
            commitLayer();

            // TODO NegativeParticle renders wrong
            engine.getNegativeParticles().render(0.0F, 0.0F);

            beginLayer("NegativeNebulaParticles");
            engine.getNegativeNebulaParticles().render(0.0F, 0.0F); // UNUSED
            commitLayer();

            beginLayer("NegativeSwirlyNebulaParticles");
            engine.getNegativeSwirlyNebulaParticles().render(0.0F, 0.0F); // UNUSED
            commitLayer();

            engine.getRenderer().renderOnly(engine.getViewport(), CombatEngineLayers.ABOVE_PARTICLES_LOWER);
            engine.getRenderer().renderOnly(engine.getViewport(), CombatEngineLayers.ABOVE_PARTICLES);
            engine.getRenderer().renderOnly(engine.getViewport(), CombatEngineLayers.JUST_BELOW_WIDGETS);

            if (var1) {
                engine.renderFloatingTextManager();
            }
        }
    }

    private static void beginLayer(String layer) {
        Renderer.beginLayer(layer);
        GLBridge.startIntercept();
    }

    private static void commitLayer() {
        GLBridge.endIntercept();
        Renderer.commitLayer();
    }
}
