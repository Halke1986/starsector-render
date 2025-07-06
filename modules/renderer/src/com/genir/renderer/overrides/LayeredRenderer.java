package com.genir.renderer.overrides;

import com.fs.graphics.LayeredRenderable;
import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.fs.starfarer.combat.CombatViewport;

import java.util.List;

public class LayeredRenderer {
    public static void renderOnly(CombatViewport viewport, CombatEngineLayers layer, List<LayeredRenderable<CombatEngineLayers, CombatViewport>> entities) {
        if (entities == null) {
            return;
        }

        for (LayeredRenderable<CombatEngineLayers, CombatViewport> entity : entities) {
            entity.render(layer, viewport);
        }
    }
}
