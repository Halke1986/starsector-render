package com.genir.renderer.overrides.loading;

import java.awt.*;
import java.nio.ByteBuffer;

public class TextureData {
    public ByteBuffer buffer = null;

    public int width;
    public int height;
    public boolean hasAlpha;
    public boolean isDDS = false;

    public Color color0 = Color.white;
    public Color color1 = Color.white;
    public Color color2 = Color.white;
}