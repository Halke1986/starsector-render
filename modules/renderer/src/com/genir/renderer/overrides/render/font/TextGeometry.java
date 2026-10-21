package com.genir.renderer.overrides.render.font;

import java.nio.FloatBuffer;

public record TextGeometry(
        int glyphsNum,
        FloatBuffer vertexPointer
) {
}
