package com.genir.renderer.overrides.render;

import com.fs.graphics.TextureHandler;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.Recordable;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL12;

import java.awt.*;

/**
 * OVERRIDES for com.fs.graphics.Sprite
 */
public class Sprite {
    /**
     * STUBS
     */
    protected transient TextureHandler texture;
    protected float width;
    protected float height;
    protected float texX;
    protected float texY;
    protected float texWidth;
    protected float texHeight;
    protected float angle;
    protected Color color;
    private float alphaMult;
    private float centerX;
    private float centerY;
    private int offsetX;
    private int offsetY;
    private int blendSrc;
    private int blendDest;
    private boolean texClamp;

    /**
     * REPLACED METHOD
     * <p>
     * Executes vanilla Sprite rendering directly on the rendering thread,
     * avoiding the overhead of passing individual OpenGL calls across
     * the client-server thread boundary.
     */
    public void render(float posX, float posY) {
        if (texture == null) {
            return;
        }

        final GLCommand commandClient = new renderClient(
                texture.TextureHandler_getTextureID()
        );

        final GLCommand command = new render(
                posX,
                posY,
                texture.TextureHandler_getTextureID(),
                width,
                height,
                texX,
                texY,
                texWidth,
                texHeight,
                angle,
                (byte) color.getRed(),
                (byte) color.getGreen(),
                (byte) color.getBlue(),
                (byte) ((int) ((float) color.getAlpha() * alphaMult)),
                centerX,
                centerY,
                (float) offsetX,
                (float) offsetY,
                blendSrc,
                blendDest,
                texClamp
        );

        final Context context = ContextManager.getThreadContext();
        commandClient.run(context, null, 0);
        context.exec.execute(command);
    }

    public record renderClient(int textureID) implements GLCommand, Recordable {
        @Override
        public void run(Context context, float[] args, int argsOffset) {
            if (context.clientListManager.isRecording(this, args, argsOffset))
                return;

            if (context.textureTracker.glBindTexture(GL11.GL_TEXTURE_2D, textureID)) {
                context.attribTracker.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
            }
            context.textureManager.glBindTexture(context, GL11.GL_TEXTURE_2D, textureID);

            context.attribTracker.glEnable(GL11.GL_TEXTURE_2D);
            context.attribTracker.glDisable(GL11.GL_BLEND);
        }
    }

    public record render(
            float posX,
            float posY,
            int textureID,
            float width,
            float height,
            float texX,
            float texY,
            float texWidth,
            float texHeight,
            float angle,
            byte r,
            byte g,
            byte b,
            byte a,
            float centerX,
            float centerY,
            float offsetX,
            float offsetY,
            int blendSrc,
            int blendDest,
            boolean texClamp
    ) implements GLCommand, Recordable {
        @Override
        public void run(Context context, float[] args, int argsOffset) {
            if (context.listManager.isRecording(this, args, argsOffset))
                return;

            context.attribManager.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
            org.lwjgl.opengl.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);

            if (texClamp) {
                org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_S, GL12.GL_CLAMP_TO_EDGE);
                org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_T, GL12.GL_CLAMP_TO_EDGE);
            }

            context.matrixManager.glPushMatrix();
            context.matrixManager.glTranslatef(posX + offsetX, posY + offsetY, 0);
            if (centerX != -1 && centerY != -1) {
                context.matrixManager.glTranslatef(width / 2, height / 2, 0);
                context.matrixManager.glRotatef(angle, 0, 0, 1);
                context.matrixManager.glTranslatef(-centerX, -centerY, 0);
            } else {
                context.matrixManager.glTranslatef(width / 2, height / 2, 0);
                context.matrixManager.glRotatef(angle, 0, 0, 1);
                context.matrixManager.glTranslatef(-width / 2, -height / 2, 0);
            }

            context.attribManager.glEnable(GL11.GL_TEXTURE_2D);
            context.attribManager.glEnable(GL11.GL_BLEND);
            context.attribManager.glBlendFunc(blendSrc, blendDest);

            context.vertexInterceptor.glColor4f(
                    (r & 0xFF) / 255f,
                    (g & 0xFF) / 255f,
                    (b & 0xFF) / 255f,
                    (a & 0xFF) / 255f
            );

            context.vertexInterceptor.glBegin(GL11.GL_QUADS);
            context.vertexInterceptor.glTexCoord4f(texX, texY, 0, 1);
            context.vertexInterceptor.glVertex3f(0, 0, 0);
            context.vertexInterceptor.glTexCoord4f(texX, texY + texHeight, 0, 1);
            context.vertexInterceptor.glVertex3f(0, height, 0);
            context.vertexInterceptor.glTexCoord4f(texX + texWidth, texY + texHeight, 0, 1);
            context.vertexInterceptor.glVertex3f(width, height, 0);
            context.vertexInterceptor.glTexCoord4f(texX + texWidth, texY, 0, 1);
            context.vertexInterceptor.glVertex3f(width, 0, 0);
            context.vertexInterceptor.glEnd();

            context.attribManager.glDisable(GL11.GL_BLEND);
            context.matrixManager.glPopMatrix();

            if (texClamp) {
                org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_S, GL11.GL_REPEAT);
                org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_T, GL11.GL_REPEAT);
            }
        }
    }
}
