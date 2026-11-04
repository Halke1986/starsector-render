package com.genir.renderer.overrides.render.particle;

import com.fs.graphics.TextureHandler;
import com.genir.renderer.bridge.context.Context;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;

import java.awt.*;

/**
 * OVERRIDES com.fs.graphics.particle.NegativeParticle
 */
public class NegativeParticle extends BaseParticle {
    /**
     * STUBS
     */
    private Color color;
    private static TextureHandler texture;
    private TextureHandler override;
    private float size;

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

                    org.lwjgl.opengl.GL14.glBlendEquation(GL14.GL_FUNC_REVERSE_SUBTRACT);
                    org.lwjgl.opengl.GL11.glEnable(GL11.GL_TEXTURE_2D);
                    org.lwjgl.opengl.GL11.glEnable(GL11.GL_BLEND);
                    org.lwjgl.opengl.GL11.glBlendFunc(GL11.GL_SRC_ALPHA, GL11.GL_ONE);
                    org.lwjgl.opengl.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
                },

                // Post-batch
                (Context ctx) -> {
                    org.lwjgl.opengl.GL11.glPopAttrib();
                }
        );
    }
}
