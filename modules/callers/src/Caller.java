import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.genir.graphics.Renderer;

public class Caller {
    public void caller() {
        Enum var5 = CombatEngineLayers.ABOVE_PARTICLES;

        Renderer.beginLayer(var5.ordinal());

        Renderer.commitLayer();
    }
}
