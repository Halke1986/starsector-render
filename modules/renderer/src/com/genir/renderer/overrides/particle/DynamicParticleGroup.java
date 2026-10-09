package com.genir.renderer.overrides.particle;

import com.fs.graphics.particle.BaseParticle;

import java.util.Iterator;
import java.util.LinkedList;

/**
 * OVERRIDES com.fs.graphics.particle.DynamicParticleGroup
 */
public class DynamicParticleGroup {
    private LinkedList<BaseParticle> particles;

    /**
     * REPLACED METHOD
     *
     * Original collects expired particles into ArrayList then calls removeAll(),
     * which is O(n^2). This uses Iterator.remove() for O(n).
     */
    public void advance(float amount) {
        Iterator<BaseParticle> iterator = particles.iterator();
        while (iterator.hasNext()) {
            BaseParticle particle = iterator.next();
            particle.advance(amount);
            if (particle.isExpired()) {
                iterator.remove();
            }
        }
    }
}
