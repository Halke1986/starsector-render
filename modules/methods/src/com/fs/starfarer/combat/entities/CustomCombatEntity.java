package com.fs.starfarer.combat.entities;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.fs.starfarer.api.combat.CombatLayeredRenderingPlugin;
import com.fs.starfarer.combat.CombatViewport;
import com.genir.renderer.overrides.RenderOverride;

public class CustomCombatEntity extends CombatEntityAPIImpl {
    private CombatLayeredRenderingPlugin plugin;

    public CombatLayeredRenderingPlugin getPlugin() {
        return null;
    }

    // REPLACED METHOD
    public void render(CombatEngineLayers var1, CombatViewport viewport) {
        if (!RenderOverride.shouldRender(this.plugin)) {
            return;
        }

        if (viewport.isNearViewport(this.getLocation(), this.plugin.getRenderRadius())) {
            this.plugin.render(var1, viewport);
        }
    }
}
