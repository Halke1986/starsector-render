package com.genir.renderer.overrides.render.particle;

import com.fs.graphics.TextureHandler;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;

import java.awt.*;

/**
 * OVERRIDES com.fs.graphics.particle.NebulaParticle
 */
public class NebulaParticle extends BaseParticle {
    /**
     * STUBS
     */
    private transient TextureHandler texture;
    private Color color;
    boolean fullyFadedIn;
    private float fullBrightnessFraction;
    private int src;
    private int dst;
    private boolean negative;
    private int i;
    private int j;
    private int w;
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

        if (this.negative) {
            com.genir.renderer.bridge.commands.GL14.glBlendEquation(GL14.GL_FUNC_REVERSE_SUBTRACT);
        }

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
        super.resizeArrays(numParticles + 1);

        super.setParticleColor(color, calculateBrightness());

        float size = w == 2 ? 0.5F : 0.25F;
        float s = (float) i * size;
        float t = (float) j * size;

        super.setParticleTex(s, t, size, size);
        super.setParticleTransformation(this.getX(), this.getY(), this.getAngle());
        super.setParticleVertices(offsetX, offsetY, width, height);

        numParticles++;
    }

    /**
     * REPLACED METHOD
     */
    @Override
    public void postBatch() {
        super.drawArrays();

        com.genir.renderer.bridge.commands.GL11.glDisable(GL11.GL_TEXTURE_2D);

        if (this.negative) {
            com.genir.renderer.bridge.commands.GL14.glBlendEquation(GL14.GL_FUNC_ADD);
        }
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
