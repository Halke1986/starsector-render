package com.genir.graphics;

import com.fs.graphics.Sprite;
import org.apache.log4j.Logger;
import org.lwjgl.opengl.GL11;

public class Renderer {
    public static void beginLayer() {
    }

    public static void commitLayer() {
    }

    public static void render(float var1, float var2, int ö00000, int ô00000, Sprite sprite) {
        GL11.glBindTexture(ö00000, ô00000);

        GL11.glPushMatrix();
        GL11.glColor4ub((byte) sprite.color.getRed(), (byte) sprite.color.getGreen(), (byte) sprite.color.getBlue(), (byte) ((int) ((float) sprite.color.getAlpha() * sprite.alphaMult)));
        GL11.glTranslatef(var1 + (float) sprite.offsetX, var2 + (float) sprite.offsetY, 0.0F);
        if (sprite.centerX != -1.0F && sprite.centerY != -1.0F) {
            GL11.glTranslatef(sprite.width / 2.0F, sprite.height / 2.0F, 0.0F);
            GL11.glRotatef(sprite.angle, 0.0F, 0.0F, 1.0F);
            GL11.glTranslatef(-sprite.centerX, -sprite.centerY, 0.0F);
        } else {
            GL11.glTranslatef(sprite.width / 2.0F, sprite.height / 2.0F, 0.0F);
            GL11.glRotatef(sprite.angle, 0.0F, 0.0F, 1.0F);
            GL11.glTranslatef(-sprite.width / 2.0F, -sprite.height / 2.0F, 0.0F);
        }

        GL11.glEnable(3553);
        GL11.glEnable(3042);
        GL11.glBlendFunc(sprite.blendSrc, sprite.blendDest);
        float var3 = 0.001F;
        var3 = 0.0F;
        GL11.glBegin(7);
        GL11.glTexCoord2f(sprite.texX + var3, sprite.texY + var3);
        GL11.glVertex2f(0.0F, 0.0F);
        GL11.glTexCoord2f(sprite.texX + var3, sprite.texY + sprite.texHeight - var3);
        GL11.glVertex2f(0.0F, sprite.height);
        GL11.glTexCoord2f(sprite.texX + sprite.texWidth - var3, sprite.texY + sprite.texHeight - var3);
        GL11.glVertex2f(sprite.width, sprite.height);
        GL11.glTexCoord2f(sprite.texX + sprite.texWidth - var3, sprite.texY + var3);
        GL11.glVertex2f(sprite.width, 0.0F);
        GL11.glEnd();
        GL11.glDisable(3042);
        GL11.glPopMatrix();
    }

    private static Logger logger() {
        return Logger.getLogger(com.genir.graphics.Renderer.class);
    }
}
