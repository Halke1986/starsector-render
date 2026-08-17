package com.genir.renderer.overrides.loading.textures;

import java.awt.*;
import java.nio.ByteBuffer;
import java.nio.file.Path;

public class TextureData {
    public boolean isDDS = false;
    public int width;
    public int height;

    // DDS image data.
    public Path ddsImagePath = null;

    // Vanilla image data.
    public boolean hasAlpha;
    public ByteBuffer buffer = null;

    // Vanilla texture metadata.
    public Color mean = Color.white;
    public Color weighted = Color.white;
    public Color median = Color.white;
}