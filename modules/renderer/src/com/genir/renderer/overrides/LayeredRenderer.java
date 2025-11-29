package com.genir.renderer.overrides;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.fs.starfarer.api.combat.CombatLayeredRenderingPlugin;
import com.fs.starfarer.api.impl.combat.threat.RoilingSwarmEffect;
import proxy.com.fs.graphics.LayeredRenderable;
import proxy.com.fs.starfarer.combat.CombatViewport;
import proxy.com.fs.starfarer.combat.entities.CustomCombatEntity;

import java.util.List;

import static com.genir.renderer.state.AppState.state;

public class LayeredRenderer {
    public static void renderOnly(CombatViewport viewport, CombatEngineLayers layer, List<LayeredRenderable<CombatEngineLayers, CombatViewport>> entities) {
        if (entities == null) {
            return;
        }

        for (LayeredRenderable<CombatEngineLayers, CombatViewport> entity : entities) {
            if (isSwarm(entity)) {
                state.exec.execute(() -> state.vertexInterceptor.setReorderDraw(true));

                entity.render(layer, viewport);

                state.exec.execute(() -> state.vertexInterceptor.setReorderDraw(false));
            } else {
                entity.render(layer, viewport);
            }
        }
    }

    private static boolean isSwarm(LayeredRenderable<CombatEngineLayers, CombatViewport> entity) {
        if (entity instanceof CustomCombatEntity) {
            CombatLayeredRenderingPlugin plugin = ((CustomCombatEntity) entity).getPlugin();

            return plugin instanceof RoilingSwarmEffect;
        }

        return false;
    }
}
