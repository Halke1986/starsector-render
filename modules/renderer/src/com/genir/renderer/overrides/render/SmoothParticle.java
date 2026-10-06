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

        byte r = (byte) color.getRed();
        byte g = (byte) color.getGreen();
        byte b = (byte) color.getBlue();
        byte a = (byte) ((int) ((float) color.getAlpha() * this.getBrightness()));

        int c = numParticles * 16;

        colorScratchpad[c + 0] = r;
        colorScratchpad[c + 1] = g;
        colorScratchpad[c + 2] = b;
        colorScratchpad[c + 3] = a;
        colorScratchpad[c + 4] = r;
        colorScratchpad[c + 5] = g;
        colorScratchpad[c + 6] = b;
        colorScratchpad[c + 7] = a;
        colorScratchpad[c + 8] = r;
        colorScratchpad[c + 9] = g;
        colorScratchpad[c + 10] = b;
        colorScratchpad[c + 11] = a;
        colorScratchpad[c + 12] = r;
        colorScratchpad[c + 13] = g;
        colorScratchpad[c + 14] = b;
        colorScratchpad[c + 15] = a;

        float x = this.getX() + offsetX;
        float y = this.getY() + offsetY;

        int v = numParticles * 8;

        texScratchpad[v + 0] = 0;
        texScratchpad[v + 1] = 0;
        texScratchpad[v + 2] = 0;
        texScratchpad[v + 3] = 1;
        texScratchpad[v + 4] = 1;
        texScratchpad[v + 5] = 1;
        texScratchpad[v + 6] = 1;
        texScratchpad[v + 7] = 0;

        vertexScratchpad[v + 0] = x;
        vertexScratchpad[v + 1] = y;
        vertexScratchpad[v + 2] = x;
        vertexScratchpad[v + 3] = y + size;
        vertexScratchpad[v + 4] = x + size;
        vertexScratchpad[v + 5] = y + size;
        vertexScratchpad[v + 6] = x + size;
        vertexScratchpad[v + 7] = y;

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
