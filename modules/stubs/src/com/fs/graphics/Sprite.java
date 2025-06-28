package com.fs.graphics;

import java.awt.*;

public class Sprite {
    protected transient Textures texture;
    public float width;
    public float height;
    public float texX = 0.0F;
    public float texY = 0.0F;
    public float texWidth;
    public float texHeight;
    public float angle;
    public Color color = new Color(255, 255, 255);
    public float alphaMult = 1.0F;
    public Color colorUL = new Color(255, 255, 255);
    public Color colorUR = new Color(255, 255, 255);
    public Color colorLL = new Color(255, 255, 255);
    public Color colorLR = new Color(255, 255, 255);
    public float centerX = -1.0F;
    public float centerY = -1.0F;
    public int offsetX = 0;
    public int offsetY = 0;
    public int blendSrc = 770;
    public int blendDest = 771;
    public boolean texClamp = false;
    public String textureId;
}
