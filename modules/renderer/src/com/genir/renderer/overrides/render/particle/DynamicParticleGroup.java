package com.genir.renderer.overrides.render.particle;

import java.util.ArrayList;
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
    private ArrayList<BaseParticle> particlesArrayList;
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
    private void syncState() {
        if (particlesArray == null) {
            if (particlesArrayList == null || particlesArrayList.isEmpty()) {
                // First init.
                particlesArray = new BaseParticle[1];
                particlesNum = 0;
            } else {
                // Sync state after external operations on a list.
                particlesArray = particlesArrayList.toArray(new BaseParticle[0]);
                particlesNum = particlesArrayList.size();
            }

            particlesArrayList = null;
        }
    }

    /**
     * REPLACED METHOD
     */
    public int size() {
        syncState();
        return particlesNum;
    }

    /**
     * REPLACED METHOD
     */
    public void add(BaseParticle particle) {
        syncState();

        if (particlesArray.length == particlesNum) {
            particlesArray = Arrays.copyOf(particlesArray, particlesArray.length * 2);
        }

        particlesArray[particlesNum] = particle;

        particlesNum++;
    }

    public void advance(float dt) {
        syncState();

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
        syncState();

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
        syncState();

        return particlesNum == 0;
    }

    /**
     * REPLACED METHOD
     */
    // TODO remove sync
    public List<BaseParticle> getParticles() {
        BaseParticle[] notNullArray = Arrays.copyOf(particlesArray, particlesNum);
        particlesArrayList = new ArrayList<>(Arrays.asList(notNullArray));

        particlesArray = null;
        particlesNum = 0;

        return particlesArrayList;
    }
}
