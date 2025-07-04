package com.genir.renderer.overrides;

import com.fs.graphics.particle.DynamicParticleGroup;
import com.genir.renderer.bridge.State;

public class Starfield {
    public static void render(float var1, float var2, DynamicParticleGroup[] groups) {
        State.beginLayer("StarfieldParticles");
        State.beginIntercept();

        for (DynamicParticleGroup group : groups) {
            group.render(var1, var2);
        }

        State.endIntercept();
        State.commitLayer();
    }
}
