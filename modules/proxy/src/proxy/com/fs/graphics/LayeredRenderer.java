package proxy.com.fs.graphics;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import proxy.com.fs.starfarer.combat.CombatViewport;

import java.util.List;

public class LayeredRenderer<T extends Enum<T>, V> {
    public void renderOnly(V viewport, T layer) {
    }

    public static void renderOnly(CombatViewport viewport, CombatEngineLayers layer, List<LayeredRenderable<CombatEngineLayers, CombatViewport>> entities) {
    }
}
