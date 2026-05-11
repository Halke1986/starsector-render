package com.genir.renderer.overrides.loading;

import com.fs.starfarer.api.Global;
import proxy.com.fs.graphics.Sprite;

import java.util.Random;

class Bar {
    private final boolean[] barSegments = new boolean[200];
    private final Random rand = new Random();

    boolean forwardOnly = false;

    void animate(Sprite bar) {
        float x = Global.getSettings().getScreenWidth() / 2;
        float y = Global.getSettings().getScreenHeight() / 2;

        int segments = barSegments.length;

        int flipIdx = Math.abs(rand.nextInt()) % segments;
        if (forwardOnly && barIsNotFull()) {
            while (barSegments[flipIdx]) {
                flipIdx = Math.abs(rand.nextInt()) % segments;
            }
        }

        barSegments[flipIdx] = !barSegments[flipIdx];

        int start = 0;
        int length = 0;

        for (int i = 0; i < segments; i++) {
            if (!barSegments[i]) {
                renderBar(x, y, length, start, segments, bar);

                start = 0;
                length = 0;
            } else {
                if (start == 0) {
                    start = i;
                }
                length++;
            }
        }

        renderBar(x, y, length, start, segments, bar);
    }

    private void renderBar(float x, float y, int length, int start, int segments, Sprite bar) {
        if (length > 0) {
            bar.renderRegionAtCenter(
                    x, y,
                    (float) start / (float) segments, 0,
                    (float) length / (float) segments, 1
            );
        }
    }

    boolean barIsNotFull() {
        for (boolean barSegment : barSegments) {
            if (!barSegment) {
                return true;
            }
        }

        return false;
    }
}
