package com.genir.renderer.overrides.render.font;

import com.fs.graphics.font.Font;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;

import java.awt.*;
import java.nio.FloatBuffer;

import static com.genir.renderer.overrides.render.font.FontRendererImpl.fontRendererImpl;

/**
 * OVERRIDES com.fs.graphics.font.FontRenderer
 */
public class FontRenderer {
    // TODO Cleanup (also Transforms)
    private Font FontRenderer_font;
    private float FontRenderer_textSize;
    private Color FontRenderer_color;
    private Color FontRenderer_backgroundColor;
    private String FontRenderer_text;
    private float FontRenderer_colorAlpha;
    private float FontRenderer_highlightColorAlpha;
    protected boolean FontRenderer_multiPassFont;
    private int FontRenderer_highlightStart;
    private int FontRenderer_highlightEnd;
    private boolean FontRenderer_underlineEnabled;
    private Color FontRenderer_highlightColor;
    private int[] FontRenderer_highlightByChar;
    private Color[] FontRenderer_highlightColors;
    private boolean FontRenderer_highlightDisabled;
    protected FloatBuffer FontRenderer_transformMatrix;
    private int FontRenderer_outlineSize;
    private float FontRenderer_outlineExpansion;

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
            String txt = this.FontRenderer_text;

            FloatBuffer m = this.FontRenderer_transformMatrix;
            boolean underline = this.FontRenderer_underlineEnabled;
            var col = this.FontRenderer_highlightByChar;

            renderGlyphs_vanilla(applyHighlightColors);
            return;
        }

        this.FontRenderer_refreshFontFlags();

        if (this.FontRenderer_highlightDisabled) {
            applyHighlightColors = false;
        }

        final Context context = ContextManager.getThreadContext();
        Color color = this.FontRenderer_color;
        Color highlightColor = this.FontRenderer_highlightColor;

        TextParams params;
        if (applyHighlightColors) {
            params = new TextParams(
                    this.FontRenderer_font,
                    this.FontRenderer_text,
                    this.FontRenderer_textSize,

                    color.getRed() / 255f,
                    color.getGreen() / 255f,
                    color.getBlue() / 255f,
                    this.FontRenderer_colorAlpha,

                    true,
                    this.FontRenderer_highlightStart,
                    this.FontRenderer_highlightEnd,
                    highlightColor.getRed() / 255f,
                    highlightColor.getGreen() / 255f,
                    highlightColor.getBlue() / 255f,
                    this.FontRenderer_highlightColorAlpha,

                    this.FontRenderer_outlineSize,
                    this.FontRenderer_outlineExpansion
            );
        } else {
            params = new TextParams(
                    this.FontRenderer_font,
                    this.FontRenderer_text,
                    this.FontRenderer_textSize,

                    context.colorTracker.r,
                    context.colorTracker.g,
                    context.colorTracker.b,
                    context.colorTracker.a,

                    false,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,

                    this.FontRenderer_outlineSize,
                    this.FontRenderer_outlineExpansion
            );
        }


        // TODO all passes are the same?
        int renderPassCount = this.FontRenderer_multiPassFont ? 3 : 1;
        for (int renderPassIndex = 0; renderPassIndex < renderPassCount; renderPassIndex++) {
            fontRendererImpl.renderGlyphs(params);
        }
    }
}
