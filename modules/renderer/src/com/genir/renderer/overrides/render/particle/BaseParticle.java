package com.genir.renderer.overrides.render.particle;

/**
 * OVERRIDES com.fs.graphics.particle.BaseParticle
 */
public abstract class BaseParticle {
    /**
     * ADDED FIELDS
     */
    protected static ParticleRenderer renderer;

    protected static float groupPosX;
    protected static float groupPosY;

    /**
     * STUB
     */
    public abstract void preBatch();

    /**
     * STUB
     */
    public abstract void postBatch();

    /**
     * STUB
     */
    public abstract void render();

    /**
     * STUB
     */
    public void advance(float dt) {
    }

    /**
     * STUB
     */
    public boolean isExpired() {
        return false;
    }

    /**
     * STUB
     */
    public float getBrightness() {
        return 0;
    }

    /**
     * STUB
     */
    public float getBrightnessOverride() {
        return 0;
    }

    /**
     * STUB
     */
    public float getBrightnessMult() {
        return 0;
    }

    /**
     * STUB
     */
    public float getX() {
        return 0;
    }

    /**
     * STUB
     */
    public float getY() {
        return 0;
    }

    /**
     * STUB
     */
    public float getAge() {
        return 0;
    }

    /**
     * STUB
     */
    public float getMaxAge() {
        return 0;
    }

    /**
     * STUB
     */
    public float getAngle() {
        return 0;
    }

    /**
     * ADDED METHOD
     */
    public static void initStatic() {
        renderer = new ParticleRenderer();
    }

    /**
     * ADDED METHOD
     */
    public void setParticleGroupPosition(float posX, float posY) {
        groupPosX = posX;
        groupPosY = posY;
    }
}
