package com.genir.renderer.overrides.loading;

import com.fs.starfarer.api.Global;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLGetter;
import com.genir.renderer.overrides.render.Sprite;
import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.GL11;

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

    synchronized public void setProgress(LoadingBar.ProgressType type, float progress) {
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
    synchronized public void render(Context context) {
        try {
            sharedDrawable.makeCurrent();

            renderBar();

//            org.lwjgl.opengl.GL11.glFinish();
        } catch (LWJGLException e) {
            throw new RuntimeException(e);
        } finally {
            context.restoreCurrent();
        }
    }

    private void renderBar() {
        int width = org.lwjgl.opengl.Display.getWidth();
        int height = org.lwjgl.opengl.Display.getHeight();
        float screenScaleMult = Global.getSettings().getScreenScaleMult();

        org.lwjgl.opengl.GL11.glViewport(0, 0, width, height);

        org.lwjgl.opengl.GL11.glMatrixMode(GL11.GL_PROJECTION);
        org.lwjgl.opengl.GL11.glLoadIdentity();
        org.lwjgl.opengl.GL11.glOrtho(0, width, 0, height, -1, 1);

        org.lwjgl.opengl.GL11.glMatrixMode(GL11.GL_MODELVIEW);
        org.lwjgl.opengl.GL11.glLoadIdentity();
        org.lwjgl.opengl.GL11.glTranslatef(width / 2f, height / 2f, 0);
        org.lwjgl.opengl.GL11.glScalef(screenScaleMult, screenScaleMult, 1);

        background.renderRegionAtCenterNative(0, 0, 0, 0, 1, 1);
        title.renderRegionAtCenterNative(0, 53, 0, 0, 1, 1);

        renderSegments();
    }

    private void renderSegments() {
        int start = 0;
        int length = 0;

        for (int i = 0; i < SEGMENTS; i++) {
            if (!barSegments[i]) {
                renderSegment(length, start);

                start = 0;
                length = 0;
            } else {
                if (start == 0) {
                    start = i;
                }
                length++;
            }
        }

        renderSegment(length, start);
    }

    private void renderSegment(int length, int start) {
        if (length <= 0) {
            return;
        }

        bar.renderRegionAtCenterNative(
                0, 0,
                (float) start / (float) SEGMENTS, 0,
                (float) length / (float) SEGMENTS, 1
        );
    }

    public enum ProgressType {
        RANDOM,
        FORWARD,
        REGRESSION,
    }
}
