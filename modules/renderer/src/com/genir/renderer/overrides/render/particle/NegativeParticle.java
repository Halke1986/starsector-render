package com.genir.renderer.overrides.render.particle;

import com.fs.graphics.TextureHandler;
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
        super.renderBase(
                (override != null ? override : texture).TextureHandler_getTextureID(),
                GL11.GL_SRC_ALPHA,
                GL11.GL_ONE,
                GL14.GL_FUNC_REVERSE_SUBTRACT
        );
    }
}
