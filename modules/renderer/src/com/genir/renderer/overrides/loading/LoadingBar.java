package com.genir.renderer.overrides.loading;

import com.fs.graphics.Sprite;
import com.fs.graphics.util.Rendering;
import com.fs.starfarer.api.Global;

import java.util.Random;

public class LoadingBar {
    private static final int SEGMENTS = 200;

    private final Sprite bar;
    private final Sprite title;
    private final Sprite background;

    private final boolean[] barSegments = new boolean[SEGMENTS];
    private final Random rand = new Random();

    public LoadingBar(Sprite bar, Sprite title, Sprite background) {
        this.bar = bar;
        this.title = title;
        this.background = background;
    }

    public void render(LoadingBar.ProgressType type, float progress) {
        float width = Global.getSettings().getScreenWidth();
        float height = Global.getSettings().getScreenHeight();

        Rendering.Rendering_begin();
        Rendering.Rendering_setupProjection(0.0F, width, 0.0F, height, 1000.0F);

        title.renderAtCenter(width / 2.0F, height / 2.0F + 48.0F + 5.0F);
        background.renderAtCenter(width / 2.0F, height / 2.0F);

        switch (type) {
            case STILL:
                animateStill();
                break;
            case RANDOM:
                animateRandom();
                break;
            case FORWARD:
                animateProgress(progress);
                break;
            case BACKWARD:
                animateRegression();
                break;
        }

        Rendering.Rendering_end();
        com.genir.renderer.bridge.commands.Display.update(true);
    }

    public int getFilledSegmentCount() {
        int count = 0;
        for (int i = 0; i < SEGMENTS; i++) {
            if (barSegments[i]) {
                count++;
            }
        }

        return count;
    }

    private void animateStill() {
        renderBar();
    }

    private void animateRandom() {
        int flipIdx = Math.abs(rand.nextInt()) % SEGMENTS;
        barSegments[flipIdx] = !barSegments[flipIdx];

        renderBar();
    }

    private void animateProgress(float progress) {
        int count = getFilledSegmentCount();
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

    private void animateRegression() {
        for (int i = SEGMENTS - 1; i > 0; i--) {
            if (barSegments[i]) {
                barSegments[i] = false;
                break;
            }
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
            bar.renderRegionAtCenter(
                    x, y,
                    (float) start / (float) SEGMENTS, 0,
                    (float) length / (float) SEGMENTS, 1
            );
        }
    }

    public enum ProgressType {
        STILL,
        RANDOM,
        FORWARD,
        BACKWARD,
    }
}
