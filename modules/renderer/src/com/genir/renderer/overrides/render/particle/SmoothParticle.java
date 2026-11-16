package com.genir.renderer.overrides.render.particle;

import com.fs.graphics.TextureHandler;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;

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
        int[] blendFunc = getBlendFunc();

        super.renderBase(
                (override != null ? override : texture).TextureHandler_getTextureID(),
                blendFunc[0],
                blendFunc[1],
                GL14.GL_FUNC_ADD
        );
    }

    protected int[] getBlendFunc() {
        return new int[]{GL11.GL_SRC_ALPHA, GL11.GL_ONE};
    }
}
