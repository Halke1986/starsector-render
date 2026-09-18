package com.genir.renderer.overrides;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.fs.starfarer.api.combat.CombatLayeredRenderingPlugin;
import com.fs.starfarer.api.impl.combat.threat.RoilingSwarmEffect;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.context.VertexInterceptor;
import proxy.com.fs.graphics.LayeredRenderable;
import proxy.com.fs.starfarer.combat.CombatViewport;
import proxy.com.fs.starfarer.combat.entities.CustomCombatEntity;

import java.util.Arrays;
import java.util.EnumSet;
import java.util.List;

public class LayeredRenderer<T extends Enum<T>, V> {
    // STUB
    private Class<T> layerEnumClass;

    // STUB
    private List<LayeredRenderable<T, V>> getList(T var1) {
        return null;
    }

    // REPLACED METHOD
    public void renderExcluding(V viewport, T... exclude) {
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
        // Cast parameters to actual used types.
        renderOnly(
                (CombatViewport) viewport,
                (CombatEngineLayers) layer,
                (List) getList(layer));
    }

    // ADDED METHOD
    private void renderOnly(CombatViewport viewport, CombatEngineLayers layer, List<LayeredRenderable<CombatEngineLayers, CombatViewport>> entities) {
        if (entities == null) {
            return;
        }

        final Context context = ContextManager.getThreadContext();

        for (LayeredRenderable<CombatEngineLayers, CombatViewport> entity : entities) {
            if (isSwarm(entity)) {
                context.exec.execute(new VertexInterceptor.setReorderDraw(true));

                entity.render(layer, viewport);

                context.exec.execute(new VertexInterceptor.setReorderDraw(false));
            } else {
                entity.render(layer, viewport);
            }
        }
    }

    // ADDED METHOD
    private boolean isSwarm(LayeredRenderable<CombatEngineLayers, CombatViewport> entity) {
        if (entity instanceof CustomCombatEntity) {
            CombatLayeredRenderingPlugin plugin = ((CustomCombatEntity) entity).getPlugin();

            return plugin instanceof RoilingSwarmEffect;
        }

        return false;
    }
}
