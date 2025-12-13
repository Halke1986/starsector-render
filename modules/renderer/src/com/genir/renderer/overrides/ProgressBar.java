package com.genir.renderer.overrides;

import com.genir.renderer.bridge.Display;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL12;

import java.nio.ByteBuffer;

/**
 * ProgressBar override fixes background flicker when saving/loading the game.
 */
public class ProgressBar {
    private static proxy.com.fs.starfarer.campaign.save.ProgressBar currentBar = null;
    private static int texID = 0;
    private static int w = 0;
    private static int h = 0;

    public static void renderBackground(proxy.com.fs.starfarer.campaign.save.ProgressBar bar) {
        if (bar != currentBar) {
            if (texID != 0) {
                com.genir.renderer.bridge.GL11.glDeleteTextures(texID);
            }

            storeBackground();
            currentBar = bar;
        }

        drawBackground();
    }

    private static void storeBackground() {
        w = Display.getWidth();
        h = Display.getHeight();

        ByteBuffer pixels = BufferUtils.createByteBuffer(w * h * 4);

        com.genir.renderer.bridge.GL11.glPixelStorei(GL11.GL_PACK_ALIGNMENT, 1);
        com.genir.renderer.bridge.GL11.glReadBuffer(GL11.GL_FRONT);
        com.genir.renderer.bridge.GL11.glReadPixels(0, 0, w, h, GL11.GL_RGBA, GL11.GL_UNSIGNED_BYTE, pixels);

        texID = com.genir.renderer.bridge.GL11.glGenTextures();
        com.genir.renderer.bridge.GL11.glBindTexture(GL11.GL_TEXTURE_2D, texID);

        com.genir.renderer.bridge.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MIN_FILTER, GL11.GL_NEAREST);
        com.genir.renderer.bridge.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MAG_FILTER, GL11.GL_NEAREST);
        com.genir.renderer.bridge.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_S, GL12.GL_CLAMP_TO_EDGE);
        com.genir.renderer.bridge.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_T, GL12.GL_CLAMP_TO_EDGE);

        com.genir.renderer.bridge.GL11.glPixelStorei(GL11.GL_UNPACK_ALIGNMENT, 1);
        com.genir.renderer.bridge.GL11.glTexImage2D(
                GL11.GL_TEXTURE_2D,
                0,
                GL11.GL_RGBA8,
                w,
                h,
                0,
                GL11.GL_RGBA,
                GL11.GL_UNSIGNED_BYTE,
                pixels
        );

        com.genir.renderer.bridge.GL11.glBindTexture(GL11.GL_TEXTURE_2D, 0);
    }

    private static void drawBackground() {
        com.genir.renderer.bridge.GL11.glViewport(0, 0, w, h);
        com.genir.renderer.bridge.GL11.glMatrixMode(GL11.GL_PROJECTION);
        com.genir.renderer.bridge.GL11.glLoadIdentity();
        com.genir.renderer.bridge.GL11.glOrtho(0, w, 0, h, -1, 1);

        com.genir.renderer.bridge.GL11.glMatrixMode(GL11.GL_MODELVIEW);
        com.genir.renderer.bridge.GL11.glLoadIdentity();

        com.genir.renderer.bridge.GL11.glEnable(GL11.GL_TEXTURE_2D);
        com.genir.renderer.bridge.GL11.glBindTexture(GL11.GL_TEXTURE_2D, texID);

        com.genir.renderer.bridge.GL11.glBegin(GL11.GL_QUADS);
        com.genir.renderer.bridge.GL11.glTexCoord2f(0f, 0f);
        com.genir.renderer.bridge.GL11.glVertex2f(0f, 0f);
        com.genir.renderer.bridge.GL11.glTexCoord2f(1f, 0f);
        com.genir.renderer.bridge.GL11.glVertex2f(w, 0f);
        com.genir.renderer.bridge.GL11.glTexCoord2f(1f, 1f);
        com.genir.renderer.bridge.GL11.glVertex2f(w, h);
        com.genir.renderer.bridge.GL11.glTexCoord2f(0f, 1f);
        com.genir.renderer.bridge.GL11.glVertex2f(0f, h);
        com.genir.renderer.bridge.GL11.glEnd();
    }
}
