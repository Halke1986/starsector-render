package com.genir.renderer.overrides.render;

import com.fs.graphics.TextureHandler;
import org.lwjgl.opengl.GL11;

import java.awt.*;

/**
 * OVERRIDES for com.fs.graphics.Sprite
 */
public class Sprite {
    /**
     * STUBS
     */
    protected transient TextureHandler texture;
    protected float width;
    protected float height;
    protected float texX;
    protected float texY;
    protected float texWidth;
    protected float texHeight;
    protected float angle;
    protected Color color;
    private float alphaMult;
    private float centerX;
    private float centerY;
    private int offsetX;
    private int offsetY;
    private int blendSrc;
    private int blendDest;
    private boolean texClamp;

    /**
     * REPLACED METHOD
     */
    public void render(float posX, float posY) {
        if (texture == null) {
            return;
        }

        com.genir.renderer.bridge.commands.GL11.glBindTexture(GL11.GL_TEXTURE_2D, texture.TextureHandler_getTextureID());

        if (texClamp) {
            com.genir.renderer.bridge.commands.GL11.glTexParameteri(3553, 10242, 33071);
            com.genir.renderer.bridge.commands.GL11.glTexParameteri(3553, 10243, 33071);
        }

        com.genir.renderer.bridge.commands.GL11.glPushMatrix();
        com.genir.renderer.bridge.commands.GL11.glTranslatef(posX + (float) offsetX, posY + (float) offsetY, 0.0F);
        if (centerX != -1.0F && centerY != -1.0F) {
            com.genir.renderer.bridge.commands.GL11.glTranslatef(width / 2.0F, height / 2.0F, 0.0F);
            com.genir.renderer.bridge.commands.GL11.glRotatef(angle, 0.0F, 0.0F, 1.0F);
            com.genir.renderer.bridge.commands.GL11.glTranslatef(-centerX, -centerY, 0.0F);
        } else {
            com.genir.renderer.bridge.commands.GL11.glTranslatef(width / 2.0F, height / 2.0F, 0.0F);
            com.genir.renderer.bridge.commands.GL11.glRotatef(angle, 0.0F, 0.0F, 1.0F);
            com.genir.renderer.bridge.commands.GL11.glTranslatef(-width / 2.0F, -height / 2.0F, 0.0F);
        }

        com.genir.renderer.bridge.commands.GL11.glEnable(3553);
        com.genir.renderer.bridge.commands.GL11.glEnable(3042);
        com.genir.renderer.bridge.commands.GL11.glBlendFunc(blendSrc, blendDest);
        com.genir.renderer.bridge.commands.GL11.glColor4ub((byte) color.getRed(), (byte) color.getGreen(), (byte) color.getBlue(), (byte) ((int) ((float) color.getAlpha() * alphaMult)));

        com.genir.renderer.bridge.commands.GL11.glBegin(7);
        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX, texY);
        com.genir.renderer.bridge.commands.GL11.glVertex2f(0.0F, 0.0F);
        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX, texY + texHeight);
        com.genir.renderer.bridge.commands.GL11.glVertex2f(0.0F, height);
        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX + texWidth, texY + texHeight);
        com.genir.renderer.bridge.commands.GL11.glVertex2f(width, height);
        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX + texWidth, texY);
        com.genir.renderer.bridge.commands.GL11.glVertex2f(width, 0.0F);
        com.genir.renderer.bridge.commands.GL11.glEnd();

        com.genir.renderer.bridge.commands.GL11.glDisable(3042);
        com.genir.renderer.bridge.commands.GL11.glPopMatrix();

        if (texClamp) {
            com.genir.renderer.bridge.commands.GL11.glTexParameteri(3553, 10242, 10497);
            com.genir.renderer.bridge.commands.GL11.glTexParameteri(3553, 10243, 10497);
        }
    }
}
