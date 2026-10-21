package com.genir.renderer.overrides.render;

import com.fs.graphics.font.Font;
import com.fs.graphics.font.Glyph;
import com.fs.graphics.font.Kerning;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;
import org.apache.log4j.Logger;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.nio.FloatBuffer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class FontRendererImpl {
    public static final FontRendererImpl fontRendererImpl = new FontRendererImpl();

    private static final int GLYPH_SIZE = 32;

    private float[] glyphScratchpad = new float[GLYPH_SIZE];
    private int glyphsNum = 0;

    private Map<TextParams, FloatBuffer> textCache = new HashMap<>();
    private Map<TextParams, FloatBuffer> oldCache = new HashMap<>();

    private int hit = 0;
    private int miss = 0;

    public record TextParams(
            // Text.
            Font font,
            String text,
            float textSize,

            // Color.
            float red,
            float green,
            float blue,
            float alpha,

            // Highlight.
            boolean applyHighlight,
            int highlightStart,
            int highlightEnd,
            float highlightRed,
            float highlightGreen,
            float highlightBlue,
            float highlightAlpha,

            // Outline.
            int outlineSize,
            float outlineExpansion
    ) {
    }

    public void renderGlyphs(TextParams params) {
        if (params.text.isEmpty()) {
            return;
        }

        final Context context = ContextManager.getThreadContext();
        FloatBuffer vertexPointer = getVertices(params);
        context.exec.execute(new renderText(vertexPointer));
    }

    private FloatBuffer getVertices(TextParams params) {
        FloatBuffer vertexPointer = oldCache.get(params);
        if (vertexPointer != null) {
            textCache.put(params, vertexPointer);
            hit++;
            return vertexPointer;
        }


        vertexPointer = textCache.get(params);
        if (vertexPointer != null) {
            hit++;
            return vertexPointer;
        }

        buildGlyphs(params);

        vertexPointer = BufferUtils.createFloatBuffer(glyphsNum * GLYPH_SIZE);
        vertexPointer.put(0, glyphScratchpad, 0, glyphsNum * GLYPH_SIZE);

        textCache.put(params, vertexPointer);
        miss++;
        return vertexPointer;
    }

    public void update() {
        oldCache.clear();
        var tmp = oldCache;

        oldCache = textCache;
        textCache = tmp;

//        Logger.getLogger(FontRendererImpl.class).info(hit + " / " + (hit + miss));

        Logger.getLogger(FontRendererImpl.class).info(miss == 0 ? "" : miss);
        hit = 0;
        miss = 0;
    }

    public void buildGlyphs(TextParams params) {
        float fontScale = params.textSize / params.font.Font_getSize();
        float penX = 0.0F;
        float penY = 0.0F;
        int previousCharId = -1;

        this.glyphsNum = 0;

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

    private void buildGlyph(float penX, float penY, Glyph glyph, float fontScale, float r, float g, float b, float a, float horizontalExpansion, float verticalExpansion) {
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

        if (glyphScratchpad.length < (glyphsNum + 1) * GLYPH_SIZE) {
            glyphScratchpad = Arrays.copyOf(glyphScratchpad, glyphScratchpad.length * 2);
        }

        int offset = glyphsNum * GLYPH_SIZE;

        glyphScratchpad[offset + 0] = x0;
        glyphScratchpad[offset + 1] = y0;
        glyphScratchpad[offset + 2] = r;
        glyphScratchpad[offset + 3] = g;
        glyphScratchpad[offset + 4] = b;
        glyphScratchpad[offset + 5] = a;
        glyphScratchpad[offset + 6] = texX;
        glyphScratchpad[offset + 7] = texY + texHeight;

        glyphScratchpad[offset + 8] = x0;
        glyphScratchpad[offset + 9] = y1;
        glyphScratchpad[offset + 10] = r;
        glyphScratchpad[offset + 11] = g;
        glyphScratchpad[offset + 12] = b;
        glyphScratchpad[offset + 13] = a;
        glyphScratchpad[offset + 14] = texX;
        glyphScratchpad[offset + 15] = texY;

        glyphScratchpad[offset + 16] = x1;
        glyphScratchpad[offset + 17] = y1;
        glyphScratchpad[offset + 18] = r;
        glyphScratchpad[offset + 19] = g;
        glyphScratchpad[offset + 20] = b;
        glyphScratchpad[offset + 21] = a;
        glyphScratchpad[offset + 22] = texX + texWidth;
        glyphScratchpad[offset + 23] = texY;

        glyphScratchpad[offset + 24] = x1;
        glyphScratchpad[offset + 25] = y0;
        glyphScratchpad[offset + 26] = r;
        glyphScratchpad[offset + 27] = g;
        glyphScratchpad[offset + 28] = b;
        glyphScratchpad[offset + 29] = a;
        glyphScratchpad[offset + 30] = texX + texWidth;
        glyphScratchpad[offset + 31] = texY + texHeight;

        glyphsNum++;
    }

    private record renderText(FloatBuffer vertexPointer) implements GLCommand {
        @Override
        public void run(Context context, float[] args, int argsOffset) {
            final int STRIDE = 8;

            GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
            GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
            GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

            GL11.glVertexPointer(2, STRIDE * Float.BYTES, vertexPointer.position(0));
            GL11.glColorPointer(4, STRIDE * Float.BYTES, vertexPointer.duplicate().position(2));
            GL11.glTexCoordPointer(2, STRIDE * Float.BYTES, vertexPointer.duplicate().position(6));

            context.matrixManager.setGPUMode();
            context.attribManager.applyDrawAttribs();

            int glyphsNum = vertexPointer.remaining() / GLYPH_SIZE;
            GL11.glDrawArrays(GL11.GL_QUADS, 0, glyphsNum * 4);

            context.matrixManager.setCPUMode();

            GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
            GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
            GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

            // Cleanup.
            context.vertexInterceptor.arraysTouched();
        }
    }
}
