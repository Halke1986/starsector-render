package com.genir.renderer.overrides.render;

import com.fs.graphics.TextureHandler;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLCommandClient;
import com.genir.renderer.bridge.interfaces.Recordable;
import com.genir.renderer.bridge.interfaces.Releasable;
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

        Object pooledCommand = Pools.spritePool.get();
        if (pooledCommand == null) {
            pooledCommand = new RenderState();
        }

        RenderState command = (RenderState) pooledCommand;

        command.posX = posX;
        command.posY = posY;
        command.textureID = texture.TextureHandler_getTextureID();
        command.width = width;
        command.height = height;
        command.texX = texX;
        command.texY = texY;
        command.texWidth = texWidth;
        command.texHeight = texHeight;
        command.angle = angle;
        command.r = (byte) color.getRed();
        command.g = (byte) color.getGreen();
        command.b = (byte) color.getBlue();
        command.a = (byte) ((int) ((float) color.getAlpha() * alphaMult));
        command.centerX = centerX;
        command.centerY = centerY;
        command.offsetX = (float) offsetX;
        command.offsetY = (float) offsetY;
        command.blendSrc = blendSrc;
        command.blendDest = blendDest;
        command.texClamp = texClamp;

        final Context context = ContextManager.getThreadContext();
        command.runClient(context, null, 0);
        context.exec.execute(command);
    }

    public static class RenderState implements GLCommand, GLCommandClient, Recordable, Releasable {
        public float posX;
        public float posY;
        public int textureID;
        public float width;
        public float height;
        public float texX;
        public float texY;
        public float texWidth;
        public float texHeight;
        public float angle;
        public byte r;
        public byte g;
        public byte b;
        public byte a;
        public float centerX;
        public float centerY;
        public float offsetX;
        public float offsetY;
        public int blendSrc;
        public int blendDest;
        public boolean texClamp;

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

            if (!context.listManager.isReplaying()) {
                this.release();
            }
        }

        @Override
        public void runClient(Context context, float[] args, int argsOffset) {
            if (context.clientListManager.isRecording(this, args, argsOffset))
                return;

            if (context.textureTracker.glBindTexture(GL11.GL_TEXTURE_2D, textureID)) {
                context.attribTracker.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
            }
            context.textureManager.glBindTexture(context, GL11.GL_TEXTURE_2D, textureID);

            context.attribTracker.glEnable(GL11.GL_TEXTURE_2D);
            context.attribTracker.glDisable(GL11.GL_BLEND);
        }

        @Override
        public void release() {
            Pools.spritePool.put(this);
        }
    }
}
