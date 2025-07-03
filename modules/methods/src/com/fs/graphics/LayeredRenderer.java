package com.fs.graphics;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.fs.starfarer.combat.CombatViewport;

import java.util.Arrays;
import java.util.EnumSet;
import java.util.List;

public class LayeredRenderer<T extends Enum<T>, V> {
    private Class<T> layerEnumClass;

    private List<LayeredRenderable<T, V>> getList(T var1) {
        return null;
    }

    // REPLACED METHOD
    @SafeVarargs
    public final void renderExcluding(V viewport, T... exclude) {
        EnumSet<T> allLayers = EnumSet.allOf(this.layerEnumClass);
        List<T> excludedLayers = Arrays.asList(exclude);

        for (T layer : allLayers) {
            if (excludedLayers.contains(layer)) {
                continue;
            }

            renderOnly(viewport, layer);
        }
    }

    // REPLACED METHOD
    public void renderOnly(V viewport, T layer) {
        List<LayeredRenderable<T, V>> entities = getList(layer);

        com.genir.renderer.overrides.LayeredRenderer.renderOnly(
                (CombatViewport) viewport,
                (CombatEngineLayers) layer,
                (List) entities);
    }
}
