package com.genir.renderer.overrides;

import com.fs.graphics.particle.DynamicParticleGroup;
import com.genir.renderer.bridge.Bridge;

public class Starfield {
    public static void render(float var1, float var2, DynamicParticleGroup[] groups) {
        Bridge.beginLayer("StarfieldParticles");
        Bridge.beginIntercept();

        for (DynamicParticleGroup group : groups) {
            group.render(var1, var2);
        }

        Bridge.endIntercept();
        Bridge.commitLayer();
    }
}
