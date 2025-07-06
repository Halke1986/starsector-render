package com.genir.renderer.overrides;

import com.fs.graphics.LayeredRenderable;
import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.fs.starfarer.api.combat.CombatLayeredRenderingPlugin;
import com.fs.starfarer.api.impl.combat.threat.RoilingSwarmEffect;
import com.fs.starfarer.combat.CombatViewport;
import com.fs.starfarer.combat.entities.CustomCombatEntity;
import com.genir.renderer.bridge.Bridge;

import java.util.List;

public class LayeredRenderer {
    public static void renderOnly(CombatViewport viewport, CombatEngineLayers layer, List<LayeredRenderable<CombatEngineLayers, CombatViewport>> entities) {
        Bridge.beginLayer(layer);

        if (entities == null) {
            return;
        }

        for (LayeredRenderable<CombatEngineLayers, CombatViewport> entity : entities) {
            if (entity instanceof CustomCombatEntity) {
                CombatLayeredRenderingPlugin plugin = ((CustomCombatEntity) entity).getPlugin();
                if (plugin instanceof RoilingSwarmEffect) {
                    Bridge.beginIntercept();
                }
            }

            entity.render(layer, viewport);
            Bridge.endIntercept();
        }

        Bridge.commitLayer();
    }
}
