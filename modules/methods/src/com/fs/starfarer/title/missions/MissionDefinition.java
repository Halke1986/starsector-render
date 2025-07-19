package com.fs.starfarer.title.missions;

import com.fs.starfarer.api.combat.EveryFrameCombatPlugin;
import com.fs.starfarer.api.combat.ViewportAPI;
import com.genir.renderer.overrides.RenderOverride;

// $FF: renamed from: com.fs.starfarer.title.Object.L
public class MissionDefinition {
    // $FF: renamed from: com.fs.starfarer.title.Object.L.Oo
    public static class PluginContainer {
        // $FF: renamed from: ØO0000 com.fs.starfarer.api.combat.EveryFrameCombatPlugin
        private EveryFrameCombatPlugin everyFrameCombatPlugin;

        // REPLACED METHOD
        // $FF: renamed from: o00000 (com.fs.starfarer.api.combat.ViewportAPI) void
        public void renderInUICoords(ViewportAPI viewport) {
            if (!RenderOverride.shouldRender(this.everyFrameCombatPlugin)) {
                return;
            }

            this.everyFrameCombatPlugin.renderInUICoords(viewport);
        }

        // REPLACED METHOD
        // $FF: renamed from: new (com.fs.starfarer.api.combat.ViewportAPI) void
        public void renderInWorldCoords(ViewportAPI viewport) {
            if (!RenderOverride.shouldRender(this.everyFrameCombatPlugin)) {
                return;
            }

            this.everyFrameCombatPlugin.renderInWorldCoords(viewport);
        }
    }
}
