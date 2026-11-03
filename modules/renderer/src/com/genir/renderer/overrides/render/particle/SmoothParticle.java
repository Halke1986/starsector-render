package com.genir.renderer.overrides.render.particle;

import com.fs.graphics.TextureHandler;
import com.genir.renderer.bridge.context.Context;
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
    private float size;

    /**
     * STUB
     */
    public SmoothParticle(Color var1, float var2) {
    }

    /**
     * REPLACED METHOD
     */
    @Override
    public void preBatch() {
//        renderer.clear();
//
//        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_TEXTURE_2D);
//        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_BLEND);
//        com.genir.renderer.bridge.commands.GL11.glBlendFunc(GL11.GL_SRC_ALPHA, GL11.GL_ONE);
//
//        // Bind texture.
//        TextureHandler textureHandler = override != null ? override : texture;
//        int textureID = textureHandler.TextureHandler_getTextureID();
//        com.genir.renderer.bridge.commands.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
    }

    /**
     * REPLACED METHOD
     */
    @Override
    public void render() {
        // Particle is too dark to be rendered.
        if (this.getBrightnessOverride() == 0.0F || this.getBrightnessMult() == 0.0F) {
            return;
        }

        renderer.addParticle(
                color, this.getBrightness(),
                0f, 0f, 1f, 1f,
                this.getX() + groupPosX, this.getY() + groupPosY, 0, size, size
        );
    }

    /**
     * REPLACED METHOD
     */
    @Override
    public void postBatch() {
        int textureID = (override != null ? override : texture).TextureHandler_getTextureID();

        if (!knownTextures.contains(textureID)) {
            knownTextures.add(textureID);
            com.genir.renderer.bridge.commands.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
        }

        renderer.render(
                // Pre-batch
                (Context ctx) -> {
                    ctx.attribManager.applyDrawAttribs();

                    org.lwjgl.opengl.GL11.glPushAttrib(GL11.GL_ENABLE_BIT | GL11.GL_COLOR_BUFFER_BIT | GL11.GL_TEXTURE_BIT);

                    org.lwjgl.opengl.GL11.glEnable(GL11.GL_TEXTURE_2D);
                    org.lwjgl.opengl.GL11.glEnable(GL11.GL_BLEND);
                    setBlend();
                    org.lwjgl.opengl.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
                },

                // Post-batch
                (Context ctx) -> {
                    org.lwjgl.opengl.GL11.glPopAttrib();
                }
        );
    }

    protected void setBlend() {
        org.lwjgl.opengl.GL11.glBlendFunc(GL11.GL_SRC_ALPHA, GL11.GL_ONE);
    }
}
