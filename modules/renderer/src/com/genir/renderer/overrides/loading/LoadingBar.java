package com.genir.renderer.overrides.loading;

import com.fs.graphics.Sprite;
import com.fs.starfarer.api.Global;

import java.util.Random;

public class LoadingBar {
    private static final int SEGMENTS = 200;

    private final Sprite barSprite;
    private final boolean[] barSegments = new boolean[SEGMENTS];
    private final Random rand = new Random();

    public LoadingBar(Sprite barSprite) {
        this.barSprite = barSprite;
    }

    public void animateRandom() {
        int flipIdx = Math.abs(rand.nextInt()) % SEGMENTS;
        barSegments[flipIdx] = !barSegments[flipIdx];

        renderBar();
    }

    public void animateProgress(float progress) {
        int count = 0;
        for (int i = 0; i < SEGMENTS; i++) {
            if (barSegments[i]) {
                count++;
            }
        }

        int expectedCount = (int) (SEGMENTS / 2 * (1 + progress));

        while (count < expectedCount) {
            int flipOffset = Math.abs(rand.nextInt()) % (SEGMENTS - count);
            for (int i = 0; i < SEGMENTS; i++) {
                if (barSegments[i]) {
                    continue;
                }

                if (flipOffset == 0) {
                    barSegments[i] = true;
                    break;
                } else {
                    flipOffset--;
                }
            }

            count++;
        }

        renderBar();
    }

    private void renderBar() {
        float x = Global.getSettings().getScreenWidth() / 2;
        float y = Global.getSettings().getScreenHeight() / 2;

        int start = 0;
        int length = 0;

        for (int i = 0; i < SEGMENTS; i++) {
            if (!barSegments[i]) {
                renderSegment(x, y, length, start);

                start = 0;
                length = 0;
            } else {
                if (start == 0) {
                    start = i;
                }
                length++;
            }
        }

        renderSegment(x, y, length, start);
    }

    private void renderSegment(float x, float y, int length, int start) {
        if (length > 0) {
            barSprite.renderRegionAtCenter(
                    x, y,
                    (float) start / (float) SEGMENTS, 0,
                    (float) length / (float) SEGMENTS, 1
            );
        }
    }
}
