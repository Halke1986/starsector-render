package com.genir.renderer.overrides.render;

import com.fs.graphics.TextureHandler;
import org.lwjgl.opengl.GL11;

import java.awt.*;

/**
 * OVERRIDES com.fs.graphics.particle.SmoothParticle
 */
public class SmoothParticle extends BaseParticle {
    /**
     * STUBS
     */
    private Color color;
    private static TextureHandler texture;
    private TextureHandler override;
    private float offsetX;
    private float offsetY;
    private float size;

    /**
     * REPLACED METHOD
     */
    public void preBatch() {
        super.initBatch();

        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_TEXTURE_2D);
        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_BLEND);
        com.genir.renderer.bridge.commands.GL11.glBlendFunc(GL11.GL_SRC_ALPHA, GL11.GL_ONE);

        // Bind texture.
        TextureHandler textureHandler = override != null ? override : texture;
        int textureID = textureHandler.TextureHandler_getTextureID();
        com.genir.renderer.bridge.commands.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
    }

    /**
     * REPLACED METHOD
     */
    public void render() {
        // Particle is too dark to be rendered.
        if (this.getBrightnessOverride() == 0.0F || this.getBrightnessMult() == 0.0F) {
            return;
        }

        // Resize vertex arrays.
        super.resizeArrays(numParticles + 1);

        super.setParticleColor(color, this.getBrightness());
        super.setParticleTex(0f, 0f, 1f, 1f);
        super.setParticleTransformation(this.getX(), this.getY(), 0);
        super.setParticleVertices(offsetX, offsetY, size, size);

        numParticles++;
    }

    /**
     * REPLACED METHOD
     */
    public void postBatch() {
        super.drawArrays();

        com.genir.renderer.bridge.commands.GL11.glDisable(GL11.GL_TEXTURE_2D);
    }
}
