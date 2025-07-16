package com.genir.renderer.overrides;

import com.fs.graphics.LayeredRenderable;
import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.fs.starfarer.api.combat.CombatLayeredRenderingPlugin;
import com.fs.starfarer.api.impl.combat.threat.RoilingSwarmEffect;
import com.fs.starfarer.combat.CombatViewport;
import com.fs.starfarer.combat.entities.CustomCombatEntity;
import com.fs.starfarer.combat.entities.terrain.Planet;

import java.util.List;

public class LayeredRenderer {
    public static void renderOnly(CombatViewport viewport, CombatEngineLayers layer, List<LayeredRenderable<CombatEngineLayers, CombatViewport>> entities) {
        if (entities == null) {
            return;
        }

        for (LayeredRenderable<CombatEngineLayers, CombatViewport> entity : entities) {
            if (shouldIntercept(entity)) {
                entity.render(layer, viewport);
            }
        }
    }

    private static boolean shouldIntercept(LayeredRenderable<CombatEngineLayers, CombatViewport> entity) {
        return isVanillaEntity(entity) && !isPlanet(entity);
    }

    private static boolean isVanillaEntity(LayeredRenderable<CombatEngineLayers, CombatViewport> entity) {
        if (entity instanceof CustomCombatEntity) {
            CombatLayeredRenderingPlugin plugin = ((CustomCombatEntity) entity).getPlugin();

            return plugin.getClass().getClassLoader() == ClassLoader.getSystemClassLoader();
        }

        return true;
    }

    private static boolean isSwarm(LayeredRenderable<CombatEngineLayers, CombatViewport> entity) {
        if (entity instanceof CustomCombatEntity) {
            CombatLayeredRenderingPlugin plugin = ((CustomCombatEntity) entity).getPlugin();

            return plugin instanceof RoilingSwarmEffect;
        }

        return false;
    }

    private static boolean isPlanet(LayeredRenderable<CombatEngineLayers, CombatViewport> entity) {
        return entity instanceof Planet;
    }
}
