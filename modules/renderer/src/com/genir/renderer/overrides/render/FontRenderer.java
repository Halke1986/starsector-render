package com.genir.renderer.overrides.render;

import com.fs.graphics.font.Font;
import com.fs.graphics.font.Glyph;
import com.fs.graphics.font.Kerning;

import java.awt.*;
import java.nio.FloatBuffer;

/**
 * OVERRIDES com.fs.graphics.font.FontRenderer
 */
public class FontRenderer {
    // TODO Cleanup (also Transforms)

    //    // $FF: renamed from: OÓ0000 float
//    public static float float_0 = 1.0F;
//    // $FF: renamed from: while.new int
//    public static int int_0 = 0;
//    // $FF: renamed from: ÔÓ0000 boolean
//    public static boolean boolean_0 = false;
    // $FF: renamed from: Öo0000 float
//    private float FontRenderer_highlightColorAlpha;
    //    // $FF: renamed from: float.super float
//    private float float_2 = 0.0F;
    // $FF: renamed from: float.new com.fs.graphics.A.F
    private Font FontRenderer_font;
    // $FF: renamed from: float float
    private float FontRenderer_textSize;
    // $FF: renamed from: Øo0000 java.awt.Color
    private Color FontRenderer_color;
    //    // $FF: renamed from: ÖÓ0000 java.awt.Color
//    private Color color_1;
//    // $FF: renamed from: ØO0000 boolean
//    private boolean boolean_1;
//    // $FF: renamed from: oÓ0000 boolean
//    private boolean boolean_2;
//    // $FF: renamed from: OÒ0000 java.lang.String
//    private String string;
    // $FF: renamed from: while.super java.lang.String
    private String FontRenderer_text;
    //    // $FF: renamed from: õÒ0000 boolean
//    private boolean boolean_3;
//    // $FF: renamed from: ØÒ0000 boolean
//    private boolean boolean_4;
//    // $FF: renamed from: ÖÒ0000 boolean
//    private boolean boolean_5;
//    // $FF: renamed from: o00000 float
//    private float float_4;
//    // $FF: renamed from: ÖO0000 float
//    private float float_5;
//    // $FF: renamed from: ÓÓ0000 float
//    private float float_6;
    // $FF: renamed from: Ö00000 float
    private float FontRenderer_colorAlpha;
    // $FF: renamed from: öO0000 float
    private float FontRenderer_highlightColorAlpha;
    // $FF: renamed from: ÔÒ0000 float[]
    private float[] FontRenderer_highlighByCharAlphas;
    //    // $FF: renamed from: ö00000 int
//    private int int_1;
//    // $FF: renamed from: õO0000 int
//    private int int_2;
//    // $FF: renamed from: õ00000 java.lang.String
//    public static final String string_2 = "graphics/fonts/orbitron24aabold.fnt";
//    // $FF: renamed from: class.new java.lang.String
//    public static final String string_3 = "graphics/fonts/orbitron24aa.fnt";
//    // $FF: renamed from: null java.lang.String
//    public static final String string_4 = "graphics/fonts/orbitron20aabold.fnt";
//    // $FF: renamed from: while java.lang.String
//    public static final String string_5 = "graphics/fonts/orbitron20aa.fnt";
//    // $FF: renamed from: ÓÒ0000 java.lang.String
//    public static String string_6 = "graphics/fonts/insignia15LTaa.fnt";
//    // $FF: renamed from: öÒ0000 java.lang.String
//    public static final String string_7 = "graphics/fonts/insignia21LTaa.fnt";
//    // $FF: renamed from: interface java.lang.String
//    public static final String string_8 = "graphics/fonts/insignia25LTaa.fnt";
//    // $FF: renamed from: class java.lang.String
//    public static final String string_9 = "graphics/fonts/orbitron12condensed.fnt";
//    // $FF: renamed from: null.super java.lang.String
//    public static final String string_10 = "graphics/fonts/victor10.fnt";
//    // $FF: renamed from: class.super java.lang.String
//    public static final String string_11 = "graphics/fonts/victor14.fnt";
    // $FF: renamed from: new.new boolean
    protected boolean FontRenderer_multiPassFont;
    //    // $FF: renamed from: Óo0000 java.lang.String
//    protected String string_12;
    // $FF: renamed from: interface.new int
    private int FontRenderer_highlightStart;
    // $FF: renamed from: interface.super int
    private int FontRenderer_highlightEnd;
    // $FF: renamed from: õo0000 boolean
    private boolean FontRenderer_underlineEnabled;
    // $FF: renamed from: Ô00000 java.awt.Color
    private Color FontRenderer_highlightColor;
    //    // $FF: renamed from: null.new boolean[]
//    private boolean[] boolean_8;
    // $FF: renamed from: Oo0000 int[]
    private int[] FontRenderer_highlightByChar;
    // $FF: renamed from: ØÓ0000 java.awt.Color[]
    private Color[] FontRenderer_highlightColors;
    //    // $FF: renamed from: Ó00000 float
//    private float float_10;
//    // $FF: renamed from: new float
//    private float float_11;
//    // $FF: renamed from: ÔO0000 boolean
//    private boolean boolean_9;
//    // $FF: renamed from: Ôo0000 com.fs.graphics.util.GLListManager$GLListToken
//    private GLListManager.GLListToken glListToken;
    // $FF: renamed from: Ø00000 boolean
    private boolean FontRenderer_highlightDisabled;
    // $FF: renamed from: oÒ0000 java.nio.FloatBuffer
    protected FloatBuffer FontRenderer_transformMatrix;
    // $FF: renamed from: oo0000 int
    private int FontRenderer_outlineSize;
    // $FF: renamed from: oO0000 float
    private float FontRenderer_outlineExpansion;
//    // $FF: renamed from: öo0000 int
//    private static int int_7 = 0;
//    // $FF: renamed from: OO0000 org.apache.log4j.Logger
//    private static final Logger logger = Logger.getLogger(FontRenderer.class);
//    // $FF: renamed from: ÓO0000 float
//    private float float_13;
//    // $FF: renamed from: new.super float
//    private float float_14;

    /**
     * STUB
     */
    // $FF: renamed from: int () void
    protected void FontRenderer_refreshFontFlags() {
    }

    /**
     * STUB
     */
    private void renderGlyphs_vanilla(boolean applyHighlightColors) {
    }

    /**
     * REPLACED METHOD
     */
    // $FF: renamed from: Õ00000 (boolean) void
    private void FontRenderer_renderGlyphs(boolean applyHighlightColors) {
        // Delagate uncommon cases to vanilla.
        if (this.FontRenderer_transformMatrix != null || this.FontRenderer_underlineEnabled || this.FontRenderer_highlightByChar != null) {
            renderGlyphs_vanilla(applyHighlightColors);
            return;
        }

        this.FontRenderer_refreshFontFlags();

        int renderPassCount = this.FontRenderer_multiPassFont ? 3 : 1;

        if (this.FontRenderer_highlightDisabled) {
            applyHighlightColors = false;
        }

        TextParams params = new TextParams(
                this.FontRenderer_font,
                this.FontRenderer_text,
                this.FontRenderer_textSize,
                this.FontRenderer_color,
                this.FontRenderer_colorAlpha,

                applyHighlightColors,
                this.FontRenderer_highlightStart,
                this.FontRenderer_highlightEnd,
                this.FontRenderer_highlightColor,
                this.FontRenderer_highlightColorAlpha,

                this.FontRenderer_outlineSize,
                this.FontRenderer_outlineExpansion
        );

        // TODO all passes are the same?
        for (int renderPassIndex = 0; renderPassIndex < renderPassCount; renderPassIndex++) {
            renderGlyphs(params);
        }
    }

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

    private static void renderGlyphs(TextParams params) {
        float fontScale = params.textSize() / params.font().Font_getSize();
        float penX = 0.0F;
        float penY = 0.0F;
        int previousCharId = -1;

        com.genir.renderer.bridge.commands.GL11.glBegin(7);

        for (int charIndex = 0; charIndex < params.text().length(); charIndex++) {
            // Start highlight.
            if (params.applyHighlight() && charIndex == params.highlightStart()) {
                com.genir.renderer.bridge.commands.GL11.glColor4ub(
                        (byte) params.highlightColor().getRed(),
                        (byte) params.highlightColor().getGreen(),
                        (byte) params.highlightColor().getBlue(),
                        (byte) (255.0F * params.highlighAlpha())
                );
            }

            try {
                char currentChar = params.text().charAt(charIndex);
                Glyph glyph = params.font().Font_getGlyph(currentChar);

                if (currentChar != '\n') {
                    // Handle a character with no corresponding glyph.
                    if (glyph == null) {
                        glyph = params.font().Font_getGlyph(63);
                        if (glyph == null) {
                            continue;
                        }
                    }

                    // Apply kerning.
                    penX += fontScale * glyph.Glyph_getXOffset();
                    if (previousCharId != -1) {
                        Kerning kerning = params.font().Font_getKerning(previousCharId, currentChar);
                        if (kerning != null) {
                            penX += fontScale * kerning.Kerning_getAmount();
                        }
                    }

                    // Parameter 5 (highlighStartsHere) is unused. Pass false.
                    renderGlyphWithOutline(penX, penY, glyph, fontScale, params.outlineSize(), params.outlineExpansion());

                    // Advance pen position.
                    penX += fontScale * glyph.Glyph_getXAdvance();
                    previousCharId = currentChar;
                } else {
                    // Handle line break.
                    if (penX == 0.0F && params.textSize() == 18.0F && previousCharId == 10) {
                        penY -= 10.0F;
                    } else if (penX == 0.0F && params.textSize() == 15.0F && previousCharId == 10) {
                        penY -= 10.0F;
                    } else {
                        penY -= fontScale * params.font().Font_getLineHeight();
                    }

                    penX = 0.0F;

                    previousCharId = currentChar;
                }
            } finally {

                // End highlight.
                if (params.applyHighlight() && charIndex == params.highlightEnd()) {
                    com.genir.renderer.bridge.commands.GL11.glColor4ub(
                            (byte) params.color().getRed(),
                            (byte) params.color().getGreen(),
                            (byte) params.color().getBlue(),
                            (byte) (255.0F * params.alpha())
                    );
                }
            }
        }

        com.genir.renderer.bridge.commands.GL11.glEnd();
    }

    private static void renderGlyphWithOutline(float penX, float penY, Glyph glyph, float fontScale, int outlineSize, float outlineExpansion) {
        float yOffset = glyph.Glyph_getYOffset();
        float width = glyph.Glyph_getWidth();
        float height = glyph.Glyph_getHeight();

        float texX = glyph.Glyph_getTexX();
        float texY = glyph.Glyph_getTexY();
        float texHeigth = glyph.Glyph_getTexHeight();
        float texWidth = glyph.Glyph_getTexWidth();

        if (outlineSize > 0) {
            for (float outlineLayer = 1.0F; outlineLayer < outlineExpansion + 1; outlineLayer++) {
                float layerExpansion = outlineLayer * outlineExpansion;
                float horizontalExpansion = layerExpansion;
                float verticalExpansion = layerExpansion;
                if (width > height) {
                    verticalExpansion *= height / width;
                }

                if (height > width) {
                    horizontalExpansion *= width / height;
                }

                com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX, texY + texHeigth);
                com.genir.renderer.bridge.commands.GL11.glVertex2f(penX - horizontalExpansion, penY - fontScale * yOffset - verticalExpansion);
                com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX, texY);
                com.genir.renderer.bridge.commands.GL11.glVertex2f(penX - horizontalExpansion, penY - fontScale * height - fontScale * yOffset + verticalExpansion * 2.0F);
                com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX + texWidth, texY);
                com.genir.renderer.bridge.commands.GL11.glVertex2f(penX + fontScale * width + horizontalExpansion * 2.0F, penY - fontScale * height - fontScale * yOffset + verticalExpansion * 2.0F);
                com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX + texWidth, texY + texHeigth);
                com.genir.renderer.bridge.commands.GL11.glVertex2f(penX + fontScale * width + horizontalExpansion * 2.0F, penY - fontScale * yOffset - verticalExpansion);
            }
        }

        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX, texY + texHeigth);
        com.genir.renderer.bridge.commands.GL11.glVertex2f(penX, penY - fontScale * yOffset);
        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX, texY);
        com.genir.renderer.bridge.commands.GL11.glVertex2f(penX, penY - fontScale * height - fontScale * yOffset);
        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX + texWidth, texY);
        com.genir.renderer.bridge.commands.GL11.glVertex2f(penX + fontScale * width, penY - fontScale * height - fontScale * yOffset);
        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(texX + texWidth, texY + texHeigth);
        com.genir.renderer.bridge.commands.GL11.glVertex2f(penX + fontScale * width, penY - fontScale * yOffset);
    }
}
