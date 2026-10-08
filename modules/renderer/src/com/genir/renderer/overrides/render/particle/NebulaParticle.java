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
    private float width;
    private float height;

    /**
     * REPLACED METHOD
     */
    @Override
    public void preBatch() {
        renderer.clear();

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
        float size = w == 2 ? 0.5F : 0.25F;
        float s = (float) i * size;
        float t = (float) j * size;

        renderer.beginNewParticle();
        renderer.setColor(color, calculateBrightness());
        renderer.setTexture(s, t, size, size);
        renderer.setVertices(this.getX() + groupPosX, this.getY() + groupPosY, this.getAngle(), width, height);
    }

    /**
     * REPLACED METHOD
     */
    @Override
    public void postBatch() {
        renderer.render();

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
