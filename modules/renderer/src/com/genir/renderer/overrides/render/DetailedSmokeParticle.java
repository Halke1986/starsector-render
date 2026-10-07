package com.genir.renderer.overrides.render;

import com.fs.graphics.TextureHandler;
import org.lwjgl.opengl.GL11;

import java.awt.*;

/**
 * OVERRIDES com.fs.starfarer.renderers.fx.DetailedSmokeParticle
 */
public class DetailedSmokeParticle extends BaseParticle {
    /**
     * STUBS
     */
    private static TextureHandler texture;
    private Color color;
    private float size;
    private float offsetX;
    private float offsetY;

    /**
     * REPLACED METHOD
     */
    @Override
    public void preBatch() {
        super.initBatch();

        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_TEXTURE_2D);
        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_BLEND);
        com.genir.renderer.bridge.commands.GL11.glBlendFunc(GL11.GL_SRC_ALPHA, GL11.GL_ONE_MINUS_SRC_ALPHA);

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

        super.setParticleColor(color, this.getBrightness());
        super.setParticleTex(0f, 0f, 1f, 1f);
        super.setParticleTransformation(this.getX(), this.getY(), this.getAngle());
        super.setParticleVertices(offsetX, offsetY, size, size);

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
}
