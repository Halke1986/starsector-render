package com.fs.starfarer.combat;

import com.fs.graphics.particle.DynamicParticleGroup;

// $FF: renamed from: com.fs.starfarer.combat.OOOo
public class Starfield {
    // $FF: renamed from: o00000 com.fs.graphics.particle.DynamicParticleGroup[]
    private DynamicParticleGroup[] groups = new DynamicParticleGroup[4];

    // $FF: renamed from: o00000 (float, float) void
    public void render(float var1, float var2) {
        com.genir.renderer.overrides.Starfield.render(var1, var2, groups);
    }
}
