package com.genir.renderer.overrides.render.font;

public record TextGeometry(
        int glyphsNum,
        float[] vertexScratchpad,

        float quadX,
        float quadY,
        float quadWidth,
        float quadHeight
) {
}
