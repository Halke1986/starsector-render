package com.genir.renderer.overrides.render;

import com.fs.graphics.TextureHandler;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
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
    public void render() {
        super.resizeArrays(numParticles + 1);

        byte r = (byte) color.getRed();
        byte g = (byte) color.getGreen();
        byte b = (byte) color.getBlue();
        byte a = (byte) ((int) ((float) color.getAlpha() * calculateBrightness()));

        super.setParticleColor(r, g, b, a);

        int v = numParticles * 8;

        float size = w == 2 ? 0.5F : 0.25F;
        float s = (float) i * size;
        float t = (float) j * size;

        texScratchpad[v + 0] = s;
        texScratchpad[v + 1] = t;
        texScratchpad[v + 2] = s;
        texScratchpad[v + 3] = t + size;
        texScratchpad[v + 4] = s + size;
        texScratchpad[v + 5] = t + size;
        texScratchpad[v + 6] = s + size;
        texScratchpad[v + 7] = t;

        final Context context = ContextManager.getThreadContext();

        m.set(context.matrixTracker.getModelView());
        m.translate(this.getX(), this.getY(), 0);
        m.rotate(this.getAngle(), 0, 0, 1);

        float x = offsetX;
        float y = offsetY;

        vertexScratchpad[v + 0] = x * m.m00 + y * m.m01;
        vertexScratchpad[v + 1] = x * m.m10 + y * m.m11;
        vertexScratchpad[v + 2] = x * m.m00 + (y + height) * m.m01;
        vertexScratchpad[v + 3] = x * m.m10 + (y + height) * m.m11;
        vertexScratchpad[v + 4] = (x + width) * m.m00 + (y + height) * m.m01;
        vertexScratchpad[v + 5] = (x + width) * m.m10 + (y + height) * m.m11;
        vertexScratchpad[v + 6] = (x + width) * m.m00 + y * m.m01;
        vertexScratchpad[v + 7] = (x + width) * m.m10 + y * m.m11;

        numParticles++;
    }

    /**
     * REPLACED METHOD
     */
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
