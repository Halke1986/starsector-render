package com.genir.renderer.overrides.render.particle;

import com.fs.graphics.TextureHandler;
import org.lwjgl.opengl.GL14;

import java.awt.*;

/**
 * OVERRIDES com.fs.graphics.particle.GenericTextureParticle
 */
public class GenericTextureParticle extends BaseParticle {
    /**
     * STUBS
     */
    private Color color;
    private transient TextureHandler texture;
    boolean fullyFadedIn;
    private float fullBrightnessFraction;
    private int src;
    private int dst;
    private float tw;
    private float th;
    private int renderCount;
    private float width;
    private float height;

    /**
     * REPLACED METHOD
     */
    @Override
    public void preBatch() {
    }

    /**
     * REPLACED METHOD
     */
    @Override
    public void render() {
        float brightness = calculateBrightness();

        for (int i = 0; i < renderCount; i++) {
            renderer.addParticle(
                    color, brightness,
                    0, 0, tw, th,
                    this.getX() + groupPosX + (float) i, this.getY() + groupPosY, this.getAngle(), width, height
            );
        }
    }

    /**
     * REPLACED METHOD
     */
    @Override
    public void postBatch() {
        super.renderBase(
                texture.TextureHandler_getTextureID(),
                src,
                dst,
                GL14.GL_FUNC_ADD
        );
    }

    /**
     * ADDED METHOD
     */
    private float calculateBrightness() {
        float brightness = this.getBrightness();
        if (brightness >= 1.0F) {
            fullyFadedIn = true;
        }

        if (fullyFadedIn && fullBrightnessFraction > 0.0F) {
            brightness = this.getAge() / this.getMaxAge();
            if (brightness <= fullBrightnessFraction) {
                brightness = 1.0F;
            } else {
                brightness = 1.0F - (brightness - fullBrightnessFraction) / (1.0F - fullBrightnessFraction);
            }
        }

        return brightness;
    }
}
