package com.genir.renderer.overrides.render;

import com.fs.graphics.font.Font;
import com.fs.graphics.font.Glyph;
import com.fs.graphics.font.Kerning;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.overrides.render.core.ArrayPool;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.awt.*;
import java.nio.FloatBuffer;
import java.util.Arrays;

public class FontRendererImpl {
    public static final FontRendererImpl fontRendererImpl = new FontRendererImpl();

    private static final int GLYPH_SIZE = 32;

    private float[] glyphScratchpad = new float[GLYPH_SIZE];
    private int glyphsNum = 0;

//    private FloatBuffer vertexPointer = null;

    public record TextParams(
            // Text.
            Font font,
            String text,
            float textSize,
            Color color,
            float alpha,

            // Highlight.
            boolean applyHighlight,
            int highlightStart,
            int highlightEnd,
            Color highlightColor,
            float highlighAlpha,

            // Outline.
            int outlineSize,
            float outlineExpansion
    ) {
    }

    public void renderGlyphs(TextParams params) {
        float fontScale = params.textSize / params.font.Font_getSize();
        float penX = 0.0F;
        float penY = 0.0F;
        int previousCharId = -1;

//        vertexPointer = BufferUtils.createFloatBuffer(params.text.length() * 32);

        this.glyphsNum = 0;

//        com.genir.renderer.bridge.commands.GL11.glBegin(7);

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
                renderGlyphWithOutline(params, penX, penY, glyph, fontScale, highlight);

                // Advance pen position.
                penX += fontScale * glyph.Glyph_getXAdvance();
                previousCharId = currentChar;
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

                previousCharId = currentChar;
            }
        }

        final Context context = ContextManager.getThreadContext();

        FloatBuffer vertexPointer = BufferUtils.createFloatBuffer(glyphsNum * GLYPH_SIZE);
        vertexPointer.put(0, glyphScratchpad, 0, glyphsNum * GLYPH_SIZE);

        context.exec.execute(new renderText(vertexPointer, glyphsNum));

//        com.genir.renderer.bridge.commands.GL11.glEnd();
    }

    private void renderGlyphWithOutline(TextParams params, float penX, float penY, Glyph glyph, float fontScale, boolean highlight) {
        float width = glyph.Glyph_getWidth();
        float height = glyph.Glyph_getHeight();

        Color color;
        float alpha;

        if (highlight) {
            color = params.highlightColor;
            alpha = params.highlighAlpha;
        } else {
            color = params.color;
            alpha = params.alpha;
        }

        float r = color.getRed() / 255f;
        float g = color.getGreen() / 255f;
        float b = color.getBlue() / 255f;
        float a = alpha;

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

                renderGlyph(penX, penY, glyph, fontScale, r, g, b, a, horizontalExpansion, verticalExpansion);
            }
        }

        renderGlyph(penX, penY, glyph, fontScale, r, g, b, a, 0, 0);
    }

    private void renderGlyph(float penX, float penY, Glyph glyph, float fontScale, float r, float g, float b, float a, float horizontalExpansion, float verticalExpansion) {
        float yOffset = glyph.Glyph_getYOffset();
        float width = glyph.Glyph_getWidth();
        float height = glyph.Glyph_getHeight();

        float texX = glyph.Glyph_getTexX();
        float texY = glyph.Glyph_getTexY();
        float texHeigth = glyph.Glyph_getTexHeight();
        float texWidth = glyph.Glyph_getTexWidth();

        if (glyphScratchpad.length < (glyphsNum + 1) * GLYPH_SIZE) {
            glyphScratchpad = Arrays.copyOf(glyphScratchpad, glyphScratchpad.length * 2);
        }

        int offset = glyphsNum * GLYPH_SIZE;

        // com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX, texY + texHeigth);
        glyphScratchpad[offset + 0] = texX;
        glyphScratchpad[offset + 1] = texY + texHeigth;
        // com.genir.renderer.bridge.commands.GL11.glVertex2f(penX - horizontalExpansion, penY - fontScale * yOffset - verticalExpansion);
        glyphScratchpad[offset + 2] = penX - horizontalExpansion;
        glyphScratchpad[offset + 3] = penY - fontScale * yOffset - verticalExpansion;
        glyphScratchpad[offset + 4] = r;
        glyphScratchpad[offset + 5] = g;
        glyphScratchpad[offset + 6] = b;
        glyphScratchpad[offset + 7] = a;

        // com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX, texY);
        glyphScratchpad[offset + 8] = texX;
        glyphScratchpad[offset + 9] = texY;
        // com.genir.renderer.bridge.commands.GL11.glVertex2f(penX - horizontalExpansion, penY - fontScale * height - fontScale * yOffset + verticalExpansion * 2.0F);
        glyphScratchpad[offset + 10] = penX - horizontalExpansion;
        glyphScratchpad[offset + 11] = penY - fontScale * height - fontScale * yOffset + verticalExpansion * 2.0F;
        glyphScratchpad[offset + 12] = r;
        glyphScratchpad[offset + 13] = g;
        glyphScratchpad[offset + 14] = b;
        glyphScratchpad[offset + 15] = a;

        // com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX + texWidth, texY);
        glyphScratchpad[offset + 16] = texX + texWidth;
        glyphScratchpad[offset + 17] = texY;
        // com.genir.renderer.bridge.commands.GL11.glVertex2f(penX + fontScale * width + horizontalExpansion * 2.0F, penY - fontScale * height - fontScale * yOffset + verticalExpansion * 2.0F);
        glyphScratchpad[offset + 18] = penX + fontScale * width + horizontalExpansion * 2.0F;
        glyphScratchpad[offset + 19] = penY - fontScale * height - fontScale * yOffset + verticalExpansion * 2.0F;
        glyphScratchpad[offset + 20] = r;
        glyphScratchpad[offset + 21] = g;
        glyphScratchpad[offset + 22] = b;
        glyphScratchpad[offset + 23] = a;

        // com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX + texWidth, texY + texHeigth);
        glyphScratchpad[offset + 24] = texX + texWidth;
        glyphScratchpad[offset + 25] = texY + texHeigth;
        // com.genir.renderer.bridge.commands.GL11.glVertex2f(penX + fontScale * width + horizontalExpansion * 2.0F, penY - fontScale * yOffset - verticalExpansion);
        glyphScratchpad[offset + 26] = penX + fontScale * width + horizontalExpansion * 2.0F;
        glyphScratchpad[offset + 27] = penY - fontScale * yOffset - verticalExpansion;
        glyphScratchpad[offset + 28] = r;
        glyphScratchpad[offset + 29] = g;
        glyphScratchpad[offset + 30] = b;
        glyphScratchpad[offset + 31] = a;

        glyphsNum++;
    }

    private record renderText(FloatBuffer vertexPointer, int glyphsNum) implements GLCommand {
        @Override
        public void run(Context context, float[] args, int argsOffset) {
            final int STRIDE = 8;

            GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
            GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
            GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

            GL11.glTexCoordPointer(2, STRIDE * Float.BYTES, vertexPointer.position(0));
            GL11.glVertexPointer(2, STRIDE * Float.BYTES, vertexPointer.duplicate().position(2));
            GL11.glColorPointer(4, STRIDE * Float.BYTES, vertexPointer.duplicate().position(4));

            context.matrixManager.setGPUMode();

            context.attribManager.applyDrawAttribs();


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
