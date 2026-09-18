package com.genir.renderer.overrides;

import com.genir.renderer.bridge.commands.Display;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL12;

import java.nio.IntBuffer;

/**
 * ProgressBar override fixes background flicker when saving/loading the game.
 */
public class ProgressBar {
    /**
     * STUB
     */
    // $FF: renamed from: Ò00000 (java.lang.String) void
    public void ProgressBar_setDescription(String description) {
    }

    /**
     * STUB
     */
    // $FF: renamed from: o00000 (float) void
    public void ProgressBar_render(float progress) {
    }

    /**
     * REPLACED METHOD
     */
    public void ProgressBar_renderWithDescription(String description, float progress) {
        renderBackground();

        ProgressBar_setDescription(description);
        ProgressBar_render(progress);
    }

    /**
     * ADDED METHOD
     */
    private void renderBackground() {
        try {
            if (this != StaticState.pbCurrentBar) {
                storeBackground();
                StaticState.pbCurrentBar = this;
            }

            drawBackground();
        } catch (Exception ignored) {
            // Exceptions during progress bar rendering may be
            // interpreted by the game as a save file corruption.
        }
    }

    /**
     * ADDED METHOD
     */
    private void storeBackground() {
        if (StaticState.pbTexID == 0) {
            // Allocate the texture.
            StaticState.pbTexID = com.genir.renderer.bridge.opengl.GL11.glGenTextures();
        } else {
            // Free the texture for reuse.
            com.genir.renderer.bridge.opengl.GL11.glDeleteTextures(StaticState.pbTexID);
        }

        StaticState.pbWidth = Display.getWidth();
        StaticState.pbHeight = Display.getHeight();

        com.genir.renderer.bridge.opengl.GL11.glBindTexture(GL11.GL_TEXTURE_2D, StaticState.pbTexID);

        com.genir.renderer.bridge.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MIN_FILTER, GL11.GL_NEAREST);
        com.genir.renderer.bridge.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MAG_FILTER, GL11.GL_NEAREST);
        com.genir.renderer.bridge.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_S, GL12.GL_CLAMP_TO_EDGE);
        com.genir.renderer.bridge.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_T, GL12.GL_CLAMP_TO_EDGE);

        // Read screen pixels.
        final int readBufferState = com.genir.renderer.bridge.opengl.GL11.glGetInteger(GL11.GL_READ_BUFFER);
        com.genir.renderer.bridge.opengl.GL11.glReadBuffer(GL11.GL_FRONT);
        com.genir.renderer.bridge.opengl.GL11.glCopyTexImage2D(GL11.GL_TEXTURE_2D, 0, GL11.GL_RGBA, 0, 0, StaticState.pbWidth, StaticState.pbHeight, 0);
        com.genir.renderer.bridge.opengl.GL11.glReadBuffer(readBufferState);
    }

    /**
     * ADDED METHOD
     */
    private void drawBackground() {
        int w = StaticState.pbWidth;
        int h = StaticState.pbHeight;

        // Save viewport and matrix mode.
        final int matrixMode = com.genir.renderer.bridge.opengl.GL11.glGetInteger(GL11.GL_MATRIX_MODE);
        final IntBuffer viewport = BufferUtils.createIntBuffer(16);
        com.genir.renderer.bridge.opengl.GL11.glGetInteger(GL11.GL_VIEWPORT, viewport);
        com.genir.renderer.bridge.opengl.GL11.glViewport(0, 0, w, h);

        com.genir.renderer.bridge.opengl.GL11.glMatrixMode(GL11.GL_PROJECTION);
        com.genir.renderer.bridge.opengl.GL11.glPushMatrix();
        com.genir.renderer.bridge.opengl.GL11.glLoadIdentity();
        com.genir.renderer.bridge.opengl.GL11.glOrtho(0, w, 0, h, -1, 1);

        com.genir.renderer.bridge.opengl.GL11.glMatrixMode(GL11.GL_MODELVIEW);
        com.genir.renderer.bridge.opengl.GL11.glPushMatrix();
        com.genir.renderer.bridge.opengl.GL11.glLoadIdentity();

        com.genir.renderer.bridge.opengl.GL11.glEnable(GL11.GL_TEXTURE_2D);
        com.genir.renderer.bridge.opengl.GL11.glBindTexture(GL11.GL_TEXTURE_2D, StaticState.pbTexID);

        com.genir.renderer.bridge.opengl.GL11.glBegin(GL11.GL_QUADS);
        com.genir.renderer.bridge.opengl.GL11.glTexCoord2f(0f, 0f);
        com.genir.renderer.bridge.opengl.GL11.glVertex2f(0f, 0f);
        com.genir.renderer.bridge.opengl.GL11.glTexCoord2f(1f, 0f);
        com.genir.renderer.bridge.opengl.GL11.glVertex2f(w, 0f);
        com.genir.renderer.bridge.opengl.GL11.glTexCoord2f(1f, 1f);
        com.genir.renderer.bridge.opengl.GL11.glVertex2f(w, h);
        com.genir.renderer.bridge.opengl.GL11.glTexCoord2f(0f, 1f);
        com.genir.renderer.bridge.opengl.GL11.glVertex2f(0f, h);
        com.genir.renderer.bridge.opengl.GL11.glEnd();

        com.genir.renderer.bridge.opengl.GL11.glMatrixMode(GL11.GL_MODELVIEW);
        com.genir.renderer.bridge.opengl.GL11.glPopMatrix();

        com.genir.renderer.bridge.opengl.GL11.glMatrixMode(GL11.GL_PROJECTION);
        com.genir.renderer.bridge.opengl.GL11.glPopMatrix();

        // Restore viewport and matrix mode.
        viewport.limit(4);
        com.genir.renderer.bridge.opengl.GL11.glViewport(viewport.get(), viewport.get(), viewport.get(), viewport.get());
        com.genir.renderer.bridge.opengl.GL11.glMatrixMode(matrixMode);
    }
}
