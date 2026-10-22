package com.genir.renderer.overrides.render.font;

import com.fs.graphics.font.Font;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;

import java.awt.*;
import java.nio.FloatBuffer;

/**
 * OVERRIDES com.fs.graphics.font.FontRenderer
 */
public class FontRenderer {
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
        // Delegate uncommon cases to vanilla.
        if (this.FontRenderer_transformMatrix != null || this.FontRenderer_underlineEnabled || this.FontRenderer_highlightByChar != null) {
            renderGlyphs_vanilla(applyHighlightColors);
            return;
        }

        this.FontRenderer_refreshFontFlags();

        if (this.FontRenderer_text.isEmpty()) {
            return;
        }

        if (this.FontRenderer_highlightDisabled) {
            applyHighlightColors = false;
        }

        final Context context = ContextManager.getThreadContext();
        context.renderers.font.renderFont(
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
                this.FontRenderer_outlineExpansion,

                this.FontRenderer_multiPassFont ? 3 : 1
        );
    }
}
