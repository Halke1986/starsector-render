package com.genir.renderer.overrides.render.particle;

import com.fs.graphics.TextureHandler;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;

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
                this.getX() + groupPosX, this.getY() + groupPosY, this.getAngle(), size, size
        );
    }

    /**
     * REPLACED METHOD
     */
    @Override
    public void postBatch() {
        super.renderBase(
                texture.TextureHandler_getTextureID(),
                GL11.GL_SRC_ALPHA,
                GL11.GL_ONE_MINUS_SRC_ALPHA,
                GL14.GL_FUNC_ADD
        );
    }
}
