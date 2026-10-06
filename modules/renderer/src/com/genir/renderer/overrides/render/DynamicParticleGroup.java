package com.genir.renderer.overrides.render;

import com.fs.graphics.particle.BaseParticle;

import java.util.LinkedList;

/**
 * OVERRIDES com.fs.graphics.particle.DynamicParticleGroup
 */
public class DynamicParticleGroup {
    /**
     * STUBS
     */
    private LinkedList<BaseParticle> particles;
    private int limit;


    /**
     * ADDED FIELDS
     */
    private Class<?> firstParticleClass;

    /**
     * REPLACED METHOD
     */
    public void add(BaseParticle particle) {
        if (firstParticleClass == null) {
            firstParticleClass = particle.getClass();
        } else if (firstParticleClass != particle.getClass()) {
            int x = 0;
        }

        if (this.particles.size() >= this.limit) {
            this.particles.removeFirst();
        }

        this.particles.add(particle);
    }
}
