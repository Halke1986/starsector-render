package com.genir.graphics;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.fs.starfarer.combat.CombatEngine;

public class CombatRenderer {
    public static void render(boolean var1, CombatEngine engine) {
        if (!engine.isDestroyed()) {
            engine.getGlowyContrailParticles().render(0.0F, 0.0F);
            engine.getSmokyContrailParticles().render(0.0F, 0.0F);

            engine.getRenderer().renderExcluding(
                    engine.getViewport(),
                    CombatEngineLayers.ABOVE_PARTICLES,
                    CombatEngineLayers.ABOVE_PARTICLES_LOWER,
                    CombatEngineLayers.JUST_BELOW_WIDGETS
            );


            Renderer.beginLayer("DebrisSystem");
            GLBridge.startIntercept();
            engine.getDebrisSystem().render(0.0F, 0.0F);
            GLBridge.endIntercept();
            Renderer.commitLayer();

            engine.getExplosionSystem().render(0.0F, 0.0F);
            engine.getSmoothParticles().render(0.0F, 0.0F);
            engine.getNebulaParticles().render(0.0F, 0.0F);
            engine.getNebulaSmoothParticles().render(0.0F, 0.0F);
            engine.getSwirlyNebulaParticles().render(0.0F, 0.0F);
            engine.getExplosionParticles().render(0.0F, 0.0F);
            engine.getSmokeParticles().render(0.0F, 0.0F);
            engine.getNebulaSmokeParticles().render(0.0F, 0.0F);
            engine.getHitParticlesGroup().render(0.0F, 0.0F);
            engine.getNegativeParticles().render(0.0F, 0.0F);
            engine.getNegativeNebulaParticles().render(0.0F, 0.0F);
            engine.getNegativeSwirlyNebulaParticles().render(0.0F, 0.0F);

            engine.getRenderer().renderOnly(engine.getViewport(), CombatEngineLayers.ABOVE_PARTICLES_LOWER);
            engine.getRenderer().renderOnly(engine.getViewport(), CombatEngineLayers.ABOVE_PARTICLES);
            engine.getRenderer().renderOnly(engine.getViewport(), CombatEngineLayers.JUST_BELOW_WIDGETS);

            if (var1) {
                engine.renderFloatingTextManager();
            }
        }
    }
}
