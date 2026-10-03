package com.genir.renderer.overrides.render;

import com.fs.graphics.TextureHandler;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.interfaces.GLCommand;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL12;

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

        GLCommand command = new render(
                posX,
                posY,
                texture.TextureHandler_getTextureID(),
                width,
                height,
                texX,
                texY,
                texWidth,
                texHeight,
                angle,
                (byte) color.getRed(),
                (byte) color.getGreen(),
                (byte) color.getBlue(),
                (byte) ((int) ((float) color.getAlpha() * alphaMult)),
                centerX,
                centerY,
                offsetX,
                offsetY,
                blendSrc,
                blendDest,
                texClamp
        );

        command.run(null, null, 0);
    }

    public record render(
            float posX,
            float posY,
            int textureID,
            float width,
            float height,
            float texX,
            float texY,
            float texWidth,
            float texHeight,
            float angle,
            byte r,
            byte g,
            byte b,
            byte a,
            float centerX,
            float centerY,
            int offsetX,
            int offsetY,
            int blendSrc,
            int blendDest,
            boolean texClamp
    ) implements GLCommand {
        @Override
        public void run(Context context, float[] args, int argsOffset) {
            com.genir.renderer.bridge.commands.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);

            if (texClamp) {
                com.genir.renderer.bridge.commands.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_S, GL12.GL_CLAMP_TO_EDGE);
                com.genir.renderer.bridge.commands.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_T, GL12.GL_CLAMP_TO_EDGE);
            }

            com.genir.renderer.bridge.commands.GL11.glPushMatrix();
            com.genir.renderer.bridge.commands.GL11.glTranslatef(posX + (float) offsetX, posY + (float) offsetY, 0);
            if (centerX != -1 && centerY != -1) {
                com.genir.renderer.bridge.commands.GL11.glTranslatef(width / 2, height / 2, 0);
                com.genir.renderer.bridge.commands.GL11.glRotatef(angle, 0, 0, 1);
                com.genir.renderer.bridge.commands.GL11.glTranslatef(-centerX, -centerY, 0);
            } else {
                com.genir.renderer.bridge.commands.GL11.glTranslatef(width / 2, height / 2, 0);
                com.genir.renderer.bridge.commands.GL11.glRotatef(angle, 0, 0, 1);
                com.genir.renderer.bridge.commands.GL11.glTranslatef(-width / 2, -height / 2, 0);
            }

            com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_TEXTURE_2D);
            com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_BLEND);
            com.genir.renderer.bridge.commands.GL11.glBlendFunc(blendSrc, blendDest);
            com.genir.renderer.bridge.commands.GL11.glColor4ub(r, g, b, a);

            com.genir.renderer.bridge.commands.GL11.glBegin(GL11.GL_QUADS);
            com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX, texY);
            com.genir.renderer.bridge.commands.GL11.glVertex2f(0, 0);
            com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX, texY + texHeight);
            com.genir.renderer.bridge.commands.GL11.glVertex2f(0, height);
            com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX + texWidth, texY + texHeight);
            com.genir.renderer.bridge.commands.GL11.glVertex2f(width, height);
            com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX + texWidth, texY);
            com.genir.renderer.bridge.commands.GL11.glVertex2f(width, 0);
            com.genir.renderer.bridge.commands.GL11.glEnd();

            com.genir.renderer.bridge.commands.GL11.glDisable(GL11.GL_BLEND);
            com.genir.renderer.bridge.commands.GL11.glPopMatrix();

            if (texClamp) {
                com.genir.renderer.bridge.commands.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_S, GL11.GL_REPEAT);
                com.genir.renderer.bridge.commands.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_T, GL11.GL_REPEAT);
            }
        }
    }
}
