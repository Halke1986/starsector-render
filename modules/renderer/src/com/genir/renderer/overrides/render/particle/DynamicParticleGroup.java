package com.genir.renderer.overrides.render.particle;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.Predicate;

/**
 * OVERRIDES com.fs.graphics.particle.DynamicParticleGroup
 * <p>
 * Override replaces LinkedList with an array, for much faster iteration and item removal.
 */
public class DynamicParticleGroup {
    /**
     * STUBS
     */
    private int limit;

    /**
     * ADDED FIELDS
     */
    private BaseParticle[] particlesArray;
    private int particlesNum;

    /**
     * STUB
     */
    public int getLimit() {
        return 0;
    }

    /**
     * STUB
     */
    public void setLimit(int limit) {
    }

    /**
     * ADDED METHOD
     */
    private void init() {
        if (particlesArray == null) {
            particlesArray = new BaseParticle[1];
            particlesNum = 0;
        }
    }

    /**
     * REPLACED METHOD
     */
    public int size() {
        return particlesNum;
    }

    /**
     * REPLACED METHOD
     */
    public void add(BaseParticle particle) {
        init();

        if (particlesArray.length == particlesNum) {
            particlesArray = Arrays.copyOf(particlesArray, particlesArray.length * 2);
        }

        particlesArray[particlesNum] = particle;

        particlesNum++;
    }

    public void advance(float dt) {
        if (particlesNum == 0) {
            return;
        }

        int pos = 0;
        while (pos < particlesNum) {
            BaseParticle particle = particlesArray[pos];
            particle.advance(dt);

            if (particle.isExpired()) {
                // Compact the particle array.
                particlesArray[pos] = particlesArray[particlesNum - 1];
                particlesArray[particlesNum - 1] = null;
                particlesNum--;
            } else {
                pos++;
            }
        }
    }

    /**
     * REPLACED METHOD
     */
    public void render(float posX, float posY) {
        if (particlesNum == 0) {
            return;
        }

        BaseParticle first = particlesArray[0];

        first.setParticleGroupPosition(posX, posY);
        first.preBatch();

        for (int i = 0; i < particlesNum; i++) {
            particlesArray[i].render();
        }

        first.postBatch();
    }

    /**
     * REPLACED METHOD
     */
    public boolean isEmpty() {
        return particlesNum == 0;
    }

    /**
     * REPLACED METHOD
     * <p>
     * NOTE: Returns a copy of the particle array. Ensure no vanilla
     * method attempts to change the contents of the arrays, as the
     * changes will not be reflected in DynamicParticleGroup.
     */
    public List<BaseParticle> getParticles() {
        BaseParticle[] notNullArray = Arrays.copyOf(particlesArray, particlesNum);
        return new ArrayList<>(Arrays.asList(notNullArray));
    }

    /**
     * ADDED METHOD
     * <p>
     * Removes particles matching the predicate.
     */
    public void filter(Predicate<BaseParticle> p) {
        if (particlesNum == 0) {
            return;
        }

        int pos = 0;
        while (pos < particlesNum) {
            if (p.test(particlesArray[pos])) {
                // Compact the particle array.
                particlesArray[pos] = particlesArray[particlesNum - 1];
                particlesArray[particlesNum - 1] = null;
                particlesNum--;
            } else {
                pos++;
            }
        }
    }
}
