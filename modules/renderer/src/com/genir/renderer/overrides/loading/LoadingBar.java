package com.genir.renderer.overrides.loading;

import com.fs.graphics.Sprite;
import com.fs.graphics.util.Rendering;
import com.fs.starfarer.api.Global;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLGetter;
import org.lwjgl.LWJGLException;

import java.util.Random;

public class LoadingBar {
    private static final int SEGMENTS = 200;

    private final Sprite bar;
    private final Sprite title;
    private final Sprite background;

    private final boolean[] barSegments = new boolean[SEGMENTS];
    private final Random rand = new Random();

    private final org.lwjgl.opengl.SharedDrawable sharedDrawable;

    public LoadingBar(Sprite bar, Sprite title, Sprite background) {
        this.bar = bar;
        this.title = title;
        this.background = background;

        record makeSharedDrawable() implements GLGetter<org.lwjgl.opengl.SharedDrawable> {
            @Override
            public org.lwjgl.opengl.SharedDrawable call(Context context) {
                try {
                    org.lwjgl.opengl.Drawable drawable = org.lwjgl.opengl.Display.getDrawable();
                    return new org.lwjgl.opengl.SharedDrawable(drawable);
                } catch (LWJGLException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        final Context context = ContextManager.getThreadContext();
        sharedDrawable = context.exec.get(new makeSharedDrawable());
    }

    public void shutdown() {
        record destroySharedDrawable(org.lwjgl.opengl.SharedDrawable sharedDrawable) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                sharedDrawable.destroy();
            }
        }

        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new destroySharedDrawable(sharedDrawable));
    }

    public void setProgress(LoadingBar.ProgressType type, float progress) {
        switch (type) {
            case RANDOM:
                setProgressRandom();
                break;
            case FORWARD:
                setProgressForward(progress);
                break;
            case REGRESSION:
                setProgressRegression();
                break;
        }
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

    private void setProgressRandom() {
        int flipIdx = Math.abs(rand.nextInt()) % SEGMENTS;
        barSegments[flipIdx] = !barSegments[flipIdx];
    }

    private void setProgressForward(float progress) {
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
    }

    private void setProgressRegression() {
        for (int i = SEGMENTS - 1; i > 0; i--) {
            if (barSegments[i]) {
                barSegments[i] = false;
                return;
            }
        }
    }

    // Runs on rendering thread, injected between client-requested command batches.
    public void render() {
        float width = Global.getSettings().getScreenWidth();
        float height = Global.getSettings().getScreenHeight();

        Rendering.Rendering_begin();
        Rendering.Rendering_setupProjection(0.0F, width, 0.0F, height, 1000.0F);

        title.renderAtCenter(width / 2.0F, height / 2.0F + 48.0F + 5.0F);
        background.renderAtCenter(width / 2.0F, height / 2.0F);

        renderBar();

        Rendering.Rendering_end();
        com.genir.renderer.bridge.commands.Display.update(true);
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
        RANDOM,
        FORWARD,
        REGRESSION,
    }
}
