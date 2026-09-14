package com.genir.renderer.bridge.context;

import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL30;

import java.nio.FloatBuffer;

/**
 * Reads textures by rendering them into an off-screen buffer in a shared GL context.
 * Bypasses glGetTexImage driver issues while preserving the caller's rendering state.
 */
public class TextureReadManager {
    private org.lwjgl.opengl.SharedDrawable sharedDrawable = null;
    private int fboID = 0;
    private int renderBufferID = 0;

    private void init() {
        if (sharedDrawable != null) {
            return;
        }

        try {
            // Make drawable.
            org.lwjgl.opengl.Drawable drawable = org.lwjgl.opengl.Display.getDrawable();
            sharedDrawable = new org.lwjgl.opengl.SharedDrawable(drawable);

            sharedDrawable.makeCurrent();

            // Prepare framebuffer and renderbuffer.
            fboID = org.lwjgl.opengl.GL30.glGenFramebuffers();
            renderBufferID = org.lwjgl.opengl.GL30.glGenRenderbuffers();

            org.lwjgl.opengl.GL30.glBindFramebuffer(GL30.GL_FRAMEBUFFER, fboID);
            org.lwjgl.opengl.GL30.glBindRenderbuffer(GL30.GL_RENDERBUFFER, renderBufferID);
            org.lwjgl.opengl.GL30.glFramebufferRenderbuffer(GL30.GL_FRAMEBUFFER, GL30.GL_COLOR_ATTACHMENT0, GL30.GL_RENDERBUFFER, renderBufferID);
        } catch (LWJGLException e) {
            throw new RuntimeException(e);
        }
    }

    public void glGetTexImage(Context context, int target, int level, int format, int type, FloatBuffer pixels) {
        if (target != GL11.GL_TEXTURE_2D)
            throw new UnsupportedOperationException("Unsupported glGetTexImage target: " + target);

        if (level != 0)
            throw new UnsupportedOperationException("Unsupported glGetTexImage level: " + level);

        if (format != GL11.GL_RGBA && format != GL11.GL_RGBA8)
            throw new UnsupportedOperationException("Unsupported glGetTexImage format: " + format);

        if (type != GL11.GL_UNSIGNED_BYTE)
            throw new UnsupportedOperationException("Unsupported glGetTexImage format: " + type);

        int sourceTexture = org.lwjgl.opengl.GL11.glGetInteger(GL11.GL_TEXTURE_BINDING_2D);
        int width = org.lwjgl.opengl.GL11.glGetTexLevelParameteri(GL11.GL_TEXTURE_2D, 0, GL11.GL_TEXTURE_WIDTH);
        int height = org.lwjgl.opengl.GL11.glGetTexLevelParameteri(GL11.GL_TEXTURE_2D, 0, GL11.GL_TEXTURE_HEIGHT);

        try {
            init();
            sharedDrawable.makeCurrent();

            // Allocate storage.
            org.lwjgl.opengl.GL30.glRenderbufferStorage(GL30.GL_RENDERBUFFER, GL11.GL_RGBA8, width, height);
            int status = org.lwjgl.opengl.GL30.glCheckFramebufferStatus(GL30.GL_FRAMEBUFFER);
            if (status != GL30.GL_FRAMEBUFFER_COMPLETE) {
                throw new RuntimeException("Incomplete TextureReadManager framebuffer :" + status);
            }

            // Setup draw.
            org.lwjgl.opengl.GL11.glMatrixMode(GL11.GL_PROJECTION);
            org.lwjgl.opengl.GL11.glLoadIdentity();
            org.lwjgl.opengl.GL11.glOrtho(0, width, 0, height, -1, 1);

            org.lwjgl.opengl.GL11.glViewport(0, 0, width, height);

            org.lwjgl.opengl.GL11.glBindTexture(GL11.GL_TEXTURE_2D, sourceTexture);
            org.lwjgl.opengl.GL11.glEnable(GL11.GL_TEXTURE_2D);

            // Draw texture to renderbuffer.
            org.lwjgl.opengl.GL11.glBegin(GL11.GL_QUADS);
            org.lwjgl.opengl.GL11.glTexCoord2f(0f, 0f);
            org.lwjgl.opengl.GL11.glVertex2f(0f, 0f);
            org.lwjgl.opengl.GL11.glTexCoord2f(1f, 0f);
            org.lwjgl.opengl.GL11.glVertex2f(width, 0f);
            org.lwjgl.opengl.GL11.glTexCoord2f(1f, 1f);
            org.lwjgl.opengl.GL11.glVertex2f(width, height);
            org.lwjgl.opengl.GL11.glTexCoord2f(0f, 1f);
            org.lwjgl.opengl.GL11.glVertex2f(0f, height);
            org.lwjgl.opengl.GL11.glEnd();

            org.lwjgl.opengl.GL11.glReadPixels(0, 0, width, height, GL11.GL_RGBA, GL11.GL_UNSIGNED_BYTE, pixels);

            int err = org.lwjgl.opengl.GL11.glGetError();
            if (err != GL11.GL_NO_ERROR) {
                throw new RuntimeException("glGetTexImage: " + err);
            }
        } catch (LWJGLException e) {
            throw new RuntimeException(e);
        } finally {
            context.restoreCurrent();
        }
    }

    public void shutdown(Context context) {
        if (sharedDrawable == null) {
            return;
        }

        try {
            sharedDrawable.makeCurrent();

            org.lwjgl.opengl.GL30.glBindFramebuffer(GL30.GL_FRAMEBUFFER, 0);
            org.lwjgl.opengl.GL30.glBindRenderbuffer(GL30.GL_RENDERBUFFER, 0);
            org.lwjgl.opengl.GL30.glDeleteRenderbuffers(renderBufferID);
            org.lwjgl.opengl.GL30.glDeleteFramebuffers(fboID);
        } catch (LWJGLException e) {
            throw new RuntimeException(e);
        } finally {
            context.restoreCurrent();

            sharedDrawable.destroy();
            sharedDrawable = null;
        }
    }
}
