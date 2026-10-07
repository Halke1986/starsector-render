package com.genir.renderer.overrides;

import com.genir.renderer.overrides.render.particle.BaseParticle;
import com.genir.renderer.overrides.render.particle.DynamicParticleGroup;

import java.util.function.Predicate;

/**
 * OVERRIDES com.fs.starfarer.combat.StarField
 * <p>
 * Replaces StarField_removeParticles implementation to match the overriden
 * com.genir.renderer.overrides.render.particle.DynamicParticleGroup API.
 */
public class StarField {
    /**
     * STUB
     */
    private StarFieldViewport StarField_viewport;

    /**
     * REPLACED METHOD
     */
    private void StarField_removeParticles(DynamicParticleGroup particleGroup) {
        StarFieldViewport viewport = StarField_viewport;

        float minX = viewport.StarFieldViewport_x - 20.0F;
        float minY = viewport.StarFieldViewport_y - 20.0F;
        float maxX = viewport.StarFieldViewport_x + viewport.StarFieldViewport_width + 20.0F;
        float maxY = viewport.StarFieldViewport_y + viewport.StarFieldViewport_height + 20.0F;

        Predicate<BaseParticle> p = new removePredicate(minX, minY, maxX, maxY);

        particleGroup.filter(p);
    }

    /**
     * ADDED CLASS
     */
    public record removePredicate(float minX, float minY, float maxX, float maxY) implements Predicate<BaseParticle> {
        @Override
        public boolean test(BaseParticle particle) {
            float x = particle.getX();
            float y = particle.getY();

            // Determine if particle is out of bounds.
            return x < minX || x > maxX || y < minY || y > maxY;
        }
    }

    /**
     * STUB
     */
    private class StarFieldViewport {
        public float StarFieldViewport_x;
        public float StarFieldViewport_y;
        public float StarFieldViewport_width;
        public float StarFieldViewport_height;
    }
}