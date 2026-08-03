package com.genir.renderer.overrides.loading;

import java.awt.*;
import java.nio.ByteBuffer;

public class TextureData {
    public ByteBuffer buffer = null;

    public int width;
    public int height;
    public boolean hasAlpha;
    public boolean isDDS = false;

    public Color mean = Color.white;
    public Color weighted = Color.white;
    public Color median = Color.white;
}