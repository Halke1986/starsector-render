package com.genir.renderer.overrides.render;

import com.fs.graphics.TextureHandler;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
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
    public void preBatch() {
        super.initBatch();

        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_TEXTURE_2D);
        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_BLEND);
        com.genir.renderer.bridge.commands.GL11.glBlendFunc(GL11.GL_SRC_ALPHA, GL11.GL_ONE_MINUS_SRC_ALPHA);

        // Bind texture.
        int textureID = texture.TextureHandler_getTextureID();
        com.genir.renderer.bridge.commands.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
    }

    public void render() {
        super.resizeArrays(numParticles + 1);

        byte r = (byte) (byte) color.getRed();
        byte g = (byte) (byte) color.getGreen();
        byte b = (byte) (byte) color.getBlue();
        byte a = (byte) (byte) ((int) ((float) color.getAlpha() * this.getBrightness()));

        super.setParticleColor(r, g, b, a);

        super.setParticleTex(0f, 0f, 1f, 1f);

        int v = numParticles * 8;

        final Context context = ContextManager.getThreadContext();

        m.set(context.matrixTracker.getModelView());
        m.translate(this.getX(), this.getY(), 0);
        m.rotate(this.getAngle(), 0, 0, 1);

        float x = offsetX;
        float y = offsetY;

        vertexScratchpad[v + 0] = x * m.m00 + y * m.m01 + m.m03;
        vertexScratchpad[v + 1] = x * m.m10 + y * m.m11 + m.m13;
        vertexScratchpad[v + 2] = x * m.m00 + (y + size) * m.m01 + m.m03;
        vertexScratchpad[v + 3] = x * m.m10 + (y + size) * m.m11 + m.m13;
        vertexScratchpad[v + 4] = (x + size) * m.m00 + (y + size) * m.m01 + m.m03;
        vertexScratchpad[v + 5] = (x + size) * m.m10 + (y + size) * m.m11 + m.m13;
        vertexScratchpad[v + 6] = (x + size) * m.m00 + y * m.m01 + m.m03;
        vertexScratchpad[v + 7] = (x + size) * m.m10 + y * m.m11 + m.m13;

        numParticles++;
    }

    /**
     * REPLACED METHOD
     */
    public void postBatch() {
        com.genir.renderer.bridge.commands.GL11.glEnd();

        com.genir.renderer.bridge.commands.GL11.glPushMatrix();
        com.genir.renderer.bridge.commands.GL11.glLoadIdentity();

        super.drawArrays();

        com.genir.renderer.bridge.commands.GL11.glPopMatrix();

        com.genir.renderer.bridge.commands.GL11.glDisable(GL11.GL_TEXTURE_2D);
    }
}
