package com.genir.renderer.overrides.render.particle;

import com.fs.graphics.TextureHandler;
import org.lwjgl.opengl.GL11;

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
    private float offsetX;
    private float offsetY;
    private float width;
    private float height;

    /**
     * REPLACED METHOD
     */
    @Override
    public void preBatch() {
        super.initBatch();

        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_TEXTURE_2D);
        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_BLEND);
        com.genir.renderer.bridge.commands.GL11.glBlendFunc(src, dst);

        // Bind texture.
        int textureID = texture.TextureHandler_getTextureID();
        com.genir.renderer.bridge.commands.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
    }

    /**
     * REPLACED METHOD
     */
    @Override
    public void render() {
        super.resizeArrays(numParticles + renderCount);

        float brightness = calculateBrightness();

        super.setParticleTransformation(this.getX(), this.getY(), this.getAngle());

        for (int i = 0; i < renderCount; i++) {
            super.setParticleColor(color, brightness);
            super.setParticleTex(0, 0, tw, th);
            super.setParticleVertices(offsetX + (float) i, offsetY, width, height);
        }

        numParticles++;
    }

    /**
     * REPLACED METHOD
     */
    @Override
    public void postBatch() {
        super.drawArrays();

        com.genir.renderer.bridge.commands.GL11.glDisable(GL11.GL_TEXTURE_2D);
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
