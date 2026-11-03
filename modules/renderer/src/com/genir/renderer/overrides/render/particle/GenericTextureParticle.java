package com.genir.renderer.overrides.render.particle;

import com.fs.graphics.TextureHandler;
import com.genir.renderer.bridge.context.Context;
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
        int textureID = texture.TextureHandler_getTextureID();

        if (!knownTextures.contains(textureID)) {
            knownTextures.add(textureID);
            com.genir.renderer.bridge.commands.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
        }

        final int src = this.src;
        final int dst = this.dst;

        renderer.render(
                // Pre-batch
                (Context ctx) -> {
                    ctx.attribManager.applyDrawAttribs();

                    org.lwjgl.opengl.GL11.glPushAttrib(GL11.GL_ENABLE_BIT | GL11.GL_COLOR_BUFFER_BIT | GL11.GL_TEXTURE_BIT);

                    org.lwjgl.opengl.GL11.glEnable(GL11.GL_TEXTURE_2D);
                    org.lwjgl.opengl.GL11.glEnable(GL11.GL_BLEND);
                    org.lwjgl.opengl.GL11.glBlendFunc(src, dst);
                    org.lwjgl.opengl.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
                },

                // Post-batch
                (Context ctx) -> {
                    org.lwjgl.opengl.GL11.glPopAttrib();
                }
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
