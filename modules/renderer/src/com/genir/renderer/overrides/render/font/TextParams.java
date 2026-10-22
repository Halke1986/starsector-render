package com.genir.renderer.overrides.render.font;

import com.fs.graphics.font.Font;

public class TextParams {
    // Text.
    public Font font;
    public String text;
    public float textSize;
    int renderPasses;

    // Color.
    public float red;
    public float green;
    public float blue;
    public float alpha;

    // Highlight.
    public boolean applyHighlight;
    public int highlightStart;
    public int highlightEnd;
    public float highlightRed;
    public float highlightGreen;
    public float highlightBlue;
    public float highlightAlpha;

    // Outline.
    int outlineSize;
    float outlineExpansion;

    public TextParams clone() {
        TextParams c = new TextParams();

        c.font = font;
        c.text = text;
        c.textSize = textSize;
        c.renderPasses = renderPasses;

        c.red = red;
        c.green = green;
        c.blue = blue;
        c.alpha = alpha;

        c.applyHighlight = applyHighlight;
        c.highlightStart = highlightStart;
        c.highlightEnd = highlightEnd;
        c.highlightRed = highlightRed;
        c.highlightGreen = highlightGreen;
        c.highlightBlue = highlightBlue;
        c.highlightAlpha = highlightAlpha;

        c.outlineSize = outlineSize;
        c.outlineExpansion = outlineExpansion;

        return c;
    }

    @Override
    public int hashCode() {
        int h = 0;

        // For performance reasons, assume reference
        // inequality means actual inequality.
        h = 31 * h + System.identityHashCode(font);
        h = 31 * h + System.identityHashCode(text);
        h = 31 * h + Float.floatToIntBits(textSize);
        h = 31 * h + renderPasses;

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
                && textSize == o.textSize
                && renderPasses == o.renderPasses
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