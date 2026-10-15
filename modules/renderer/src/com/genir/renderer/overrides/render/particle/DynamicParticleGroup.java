package com.genir.renderer.overrides.render.particle;

import com.genir.renderer.ArrayViewList;

import java.util.Arrays;
import java.util.List;

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
     */
    public List<BaseParticle> getParticles() {
        init();

        return new ArrayViewList<>(particlesArray, particlesNum, this::updateArray);
    }

    /**
     * ADDED METHOD
     */
    private void updateArray(BaseParticle[] newArray, Integer newSize) {
        if (newArray != null) {
            particlesArray = newArray;
        }

        particlesNum = newSize;
    }
}
