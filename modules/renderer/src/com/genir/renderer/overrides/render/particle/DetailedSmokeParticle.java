package com.genir.renderer.overrides.render.particle;

import com.fs.graphics.TextureHandler;
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

    /**
     * REPLACED METHOD
     */
    @Override
    public void preBatch() {
        renderer.clear();

        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_TEXTURE_2D);
        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_BLEND);
        com.genir.renderer.bridge.commands.GL11.glBlendFunc(GL11.GL_SRC_ALPHA, GL11.GL_ONE_MINUS_SRC_ALPHA);

        // Bind texture.
        int textureID = texture.TextureHandler_getTextureID();
        com.genir.renderer.bridge.commands.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
    }

    /**
     * REPLACED METHOD
     */
    @Override
    public void render() {
        renderer.beginNewParticle();

        renderer.setColor(color, this.getBrightness());
        renderer.setTexture(0f, 0f, 1f, 1f);
        renderer.setVertices(this.getX() + groupPosX, this.getY() + groupPosY, this.getAngle(), size, size);
    }

    /**
     * REPLACED METHOD
     */
    @Override
    public void postBatch() {
        renderer.render();

        com.genir.renderer.bridge.commands.GL11.glDisable(GL11.GL_TEXTURE_2D);
    }
}
