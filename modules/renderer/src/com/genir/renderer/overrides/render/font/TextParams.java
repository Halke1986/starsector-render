package com.genir.renderer.overrides.render.font;

import com.fs.graphics.font.Font;

public class TextParams {
    // Text.
    public final Font font;
    public final String text;
    public final float textSize;

    // Color.
    public final float red;
    public final float green;
    public final float blue;
    public final float alpha;

    // Highlight.
    public final boolean applyHighlight;
    public final int highlightStart;
    public final int highlightEnd;
    public final float highlightRed;
    public final float highlightGreen;
    public final float highlightBlue;
    public final float highlightAlpha;

    // Outline.
    int outlineSize;
    float outlineExpansion;

    public TextParams(
            Font font,
            String text,
            float textSize,
            float red,
            float green,
            float blue,
            float alpha,
            boolean applyHighlight,
            int highlightStart,
            int highlightEnd,
            float highlightRed,
            float highlightGreen,
            float highlightBlue,
            float highlightAlpha,
            int outlineSize,
            float outlineExpansion
    ) {
        this.font = font;
        this.text = text;
        this.textSize = textSize;
        this.red = red;
        this.green = green;
        this.blue = blue;
        this.alpha = alpha;
        this.applyHighlight = applyHighlight;
        this.highlightStart = highlightStart;
        this.highlightEnd = highlightEnd;
        this.highlightRed = highlightRed;
        this.highlightGreen = highlightGreen;
        this.highlightBlue = highlightBlue;
        this.highlightAlpha = highlightAlpha;
        this.outlineSize = outlineSize;
        this.outlineExpansion = outlineExpansion;
    }

    @Override
    public int hashCode() {
        int h = 0;

        // For performance reasons, assume reference
        // inequality means actual inequality.
        h = 31 * h + System.identityHashCode(font);
        h = 31 * h + System.identityHashCode(text);
        h = 31 * h + Float.floatToIntBits(textSize);

        h = 31 * h + Float.floatToIntBits(red);
        h = 31 * h + Float.floatToIntBits(green);
        h = 31 * h + Float.floatToIntBits(blue);
        h = 31 * h + Float.floatToIntBits(alpha);

        h = 31 * h + (applyHighlight ? 1 : 0);
        if (applyHighlight) {
            h = 31 * h + highlightStart;
            h = 31 * h + highlightEnd;
            h = 31 * h + Float.floatToIntBits(highlightRed);
            h = 31 * h + Float.floatToIntBits(highlightGreen);
            h = 31 * h + Float.floatToIntBits(highlightBlue);
            h = 31 * h + Float.floatToIntBits(highlightAlpha);
        }

        h = 31 * h + outlineSize;
        h = 31 * h + Float.floatToIntBits(outlineExpansion);

        return h;
    }

    @Override
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }

        if (!(other instanceof TextParams o)) {
            return false;
        }

        return font == o.font
                && text == o.text
                && red == o.red
                && green == o.green
                && blue == o.blue
                && alpha == o.alpha
                && outlineSize == o.outlineSize
                && highlightAlpha == o.highlightAlpha
                && applyHighlight == o.applyHighlight
                && (!applyHighlight || (
                highlightStart == o.highlightStart
                        && highlightEnd == o.highlightEnd
                        && highlightRed == o.highlightRed
                        && highlightGreen == o.highlightGreen
                        && highlightBlue == o.highlightBlue
                        && highlightAlpha == o.highlightAlpha
        ));
    }
}