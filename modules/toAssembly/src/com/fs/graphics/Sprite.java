package com.fs.graphics;

import java.awt.*;

public class Sprite {
    protected transient Textures texture;
    protected float width;
    protected float height;
    protected float texX = 0.0F;
    protected float texY = 0.0F;
    protected float texWidth;
    protected float texHeight;
    protected float angle;
    protected Color color = new Color(255, 255, 255);
    private float alphaMult = 1.0F;
    private Color colorUL = new Color(255, 255, 255);
    private Color colorUR = new Color(255, 255, 255);
    private Color colorLL = new Color(255, 255, 255);
    private Color colorLR = new Color(255, 255, 255);
    private float centerX = -1.0F;
    private float centerY = -1.0F;
    private int offsetX = 0;
    private int offsetY = 0;
    private int blendSrc = 770;
    private int blendDest = 771;
    private boolean texClamp = false;
    private String textureId;

    public void render(float var1, float var2) {
//        if (this.texture == null) {
//            return;
//        }

//        GL11.glPushMatrix();
//        GL11.glColor4ub((byte) this.color.getRed(), (byte) this.color.getGreen(), (byte) this.color.getBlue(), (byte) ((int) ((float) this.color.getAlpha() * this.alphaMult)));
//        GL11.glTranslatef(var1 + (float) this.offsetX, var2 + (float) this.offsetY, 0.0F);
//        if (this.centerX != -1.0F && this.centerY != -1.0F) {
//            GL11.glTranslatef(this.width / 2.0F, this.height / 2.0F, 0.0F);
//            GL11.glRotatef(this.angle, 0.0F, 0.0F, 1.0F);
//            GL11.glTranslatef(-this.centerX, -this.centerY, 0.0F);
//        } else {
//            GL11.glTranslatef(this.width / 2.0F, this.height / 2.0F, 0.0F);
//            GL11.glRotatef(this.angle, 0.0F, 0.0F, 1.0F);
//            GL11.glTranslatef(-this.width / 2.0F, -this.height / 2.0F, 0.0F);
//        }
//
//        GL11.glEnable(3553);
//        GL11.glEnable(3042);
//        GL11.glBlendFunc(this.blendSrc, this.blendDest);
//        float var3 = 0.001F;
//        var3 = 0.0F;
//        GL11.glBegin(7);
//        GL11.glTexCoord2f(this.texX + var3, this.texY + var3);
//        GL11.glVertex2f(0.0F, 0.0F);
//        GL11.glTexCoord2f(this.texX + var3, this.texY + this.texHeight - var3);
//        GL11.glVertex2f(0.0F, this.height);
//        GL11.glTexCoord2f(this.texX + this.texWidth - var3, this.texY + this.texHeight - var3);
//        GL11.glVertex2f(this.width, this.height);
//        GL11.glTexCoord2f(this.texX + this.texWidth - var3, this.texY + var3);
//        GL11.glVertex2f(this.width, 0.0F);
//        GL11.glEnd();
//        GL11.glDisable(3042);
//        GL11.glPopMatrix();
    }
}
