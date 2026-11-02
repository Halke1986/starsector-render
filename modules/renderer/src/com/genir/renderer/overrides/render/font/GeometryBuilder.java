package com.genir.renderer.overrides.render.font;

import com.fs.graphics.font.Glyph;
import com.fs.graphics.font.Kerning;
import com.genir.renderer.bridge.context.VertexInterceptor;

import java.util.Arrays;

public class GeometryBuilder {
    public static final int GLYPH_SIZE = VertexInterceptor.STRIDE * 4;

    private float[] glyphScratchpad = new float[GLYPH_SIZE];
    private int glyphsNum;

    private float minX;
    private float maxX;
    private float minY;
    private float maxY;

    public TextGeometry buildText(TextParams params) {
        glyphsNum = 0;

        minX = Float.MAX_VALUE;
        maxX = -Float.MAX_VALUE;
        minY = Float.MAX_VALUE;
        maxY = -Float.MAX_VALUE;

        buildGlyphs(params);

        if (params.renderPasses > 1) {
            while (glyphScratchpad.length < glyphsNum * params.renderPasses * GLYPH_SIZE) {
                glyphScratchpad = Arrays.copyOf(glyphScratchpad, glyphScratchpad.length * 2);
            }

            for (int i = 1; i < params.renderPasses; i++) {
                System.arraycopy(glyphScratchpad, 0, glyphScratchpad, i * glyphsNum * GLYPH_SIZE, glyphsNum * GLYPH_SIZE);
            }

            glyphsNum *= params.renderPasses;
        }

        return new TextGeometry(
                glyphsNum,
                Arrays.copyOf(glyphScratchpad, glyphsNum * GLYPH_SIZE),
                minX,
                minY,
                maxX - minX,
                maxY - minY
        );
    }

    private void buildGlyphs(TextParams params) {
        float fontScale = params.textSize / params.font.Font_getSize();
        float penX = 0.0F;
        float penY = 0.0F;
        int previousCharId = -1;

        for (int charIndex = 0; charIndex < params.text.length(); charIndex++) {
            char currentChar = params.text.charAt(charIndex);
            Glyph glyph = params.font.Font_getGlyph(currentChar);

            if (currentChar != '\n') {
                // Handle a character with no corresponding glyph.
                if (glyph == null) {
                    glyph = params.font.Font_getGlyph(63);
                    if (glyph == null) {
                        continue;
                    }
                }

                // Apply kerning.
                penX += fontScale * glyph.Glyph_getXOffset();
                if (previousCharId != -1) {
                    Kerning kerning = params.font.Font_getKerning(previousCharId, currentChar);
                    if (kerning != null) {
                        penX += fontScale * kerning.Kerning_getAmount();
                    }
                }

                boolean highlight = params.applyHighlight && (charIndex >= params.highlightStart && charIndex <= params.highlightEnd);
                buildGlyphWithOutline(params, penX, penY, glyph, fontScale, highlight);

                // Advance pen position.
                penX += fontScale * glyph.Glyph_getXAdvance();
            } else {
                // Handle line break.
                if (penX == 0.0F && params.textSize == 18.0F && previousCharId == 10) {
                    penY -= 10.0F;
                } else if (penX == 0.0F && params.textSize == 15.0F && previousCharId == 10) {
                    penY -= 10.0F;
                } else {
                    penY -= fontScale * params.font.Font_getLineHeight();
                }

                penX = 0.0F;
            }

            previousCharId = currentChar;
        }
    }

    private void buildGlyphWithOutline(TextParams params, float penX, float penY, Glyph glyph, float fontScale, boolean highlight) {
        float width = glyph.Glyph_getWidth();
        float height = glyph.Glyph_getHeight();

        float r;
        float g;
        float b;
        float a;

        if (highlight) {
            r = params.highlightRed;
            g = params.highlightGreen;
            b = params.highlightBlue;
            a = params.highlightAlpha;

        } else {
            r = params.red;
            g = params.green;
            b = params.blue;
            a = params.alpha;
        }

        if (params.outlineSize > 0) {
            for (float outlineLayer = 1.0F; outlineLayer < params.outlineExpansion + 1; outlineLayer++) {
                float layerExpansion = outlineLayer * params.outlineExpansion;
                float horizontalExpansion = layerExpansion;
                float verticalExpansion = layerExpansion;
                if (width > height) {
                    verticalExpansion *= height / width;
                }

                if (height > width) {
                    horizontalExpansion *= width / height;
                }

                buildGlyph(penX, penY, glyph, fontScale, r, g, b, a, horizontalExpansion, verticalExpansion);
            }
        }

        buildGlyph(penX, penY, glyph, fontScale, r, g, b, a, 0, 0);
    }

    private void buildGlyph(
            float penX,
            float penY,
            Glyph glyph,
            float fontScale,
            float r,
            float g,
            float b,
            float a,
            float horizontalExpansion,
            float verticalExpansion
    ) {
        float yOffset = glyph.Glyph_getYOffset();
        float width = glyph.Glyph_getWidth();
        float height = glyph.Glyph_getHeight();

        float texX = glyph.Glyph_getTexX();
        float texY = glyph.Glyph_getTexY();
        float texHeight = glyph.Glyph_getTexHeight();
        float texWidth = glyph.Glyph_getTexWidth();

        float x0 = penX - horizontalExpansion;
        float x1 = penX + fontScale * width + horizontalExpansion * 2.0F;

        float y0 = penY - fontScale * yOffset - verticalExpansion;
        float y1 = penY - fontScale * height - fontScale * yOffset + verticalExpansion * 2.0F;

        minX = Math.min(minX, Math.min(x0, x1));
        maxX = Math.max(maxX, Math.max(x0, x1));
        minY = Math.min(minY, Math.min(y0, y1));
        maxY = Math.max(maxY, Math.max(y0, y1));

        if (glyphScratchpad.length < (glyphsNum + 1) * GLYPH_SIZE) {
            glyphScratchpad = Arrays.copyOf(glyphScratchpad, glyphScratchpad.length * 2);
        }

        int offset = glyphsNum * GLYPH_SIZE;

        buildVertex(offset + 0 * VertexInterceptor.STRIDE, x0, y0, r, g, b, a, texX, texY + texHeight);
        buildVertex(offset + 1 * VertexInterceptor.STRIDE, x0, y1, r, g, b, a, texX, texY);
        buildVertex(offset + 2 * VertexInterceptor.STRIDE, x1, y1, r, g, b, a, texX + texWidth, texY);
        buildVertex(offset + 3 * VertexInterceptor.STRIDE, x1, y0, r, g, b, a, texX + texWidth, texY + texHeight);

        glyphsNum++;
    }

    private void buildVertex(
            int offset,
            float vertX,
            float vertY,
            float r,
            float g,
            float b,
            float a,
            float texX,
            float texY
    ) {
        glyphScratchpad[offset + 0] = vertX;
        glyphScratchpad[offset + 1] = vertY;
        glyphScratchpad[offset + 3] = 0;

        glyphScratchpad[offset + 3] = r;
        glyphScratchpad[offset + 4] = g;
        glyphScratchpad[offset + 5] = b;
        glyphScratchpad[offset + 6] = a;

        glyphScratchpad[offset + 7] = texX;
        glyphScratchpad[offset + 8] = texY;
        glyphScratchpad[offset + 9] = 0;
        glyphScratchpad[offset + 10] = 1;
    }
}