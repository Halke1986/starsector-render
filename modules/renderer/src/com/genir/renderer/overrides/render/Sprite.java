package com.genir.renderer.overrides.render;

import com.fs.graphics.TextureHandler;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.context.Pool;
import com.genir.renderer.bridge.interfaces.DebugString;
import com.genir.renderer.bridge.interfaces.GLCommand;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL12;

import java.awt.*;

/**
 * OVERRIDES com.fs.graphics.Sprite
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
     * ADDED FIELD
     */
    private static Pool spritePool;

    /**
     * STUB
     */
    public Sprite(String texturePath) {
    }

    /**
     * STUB
     */
    public void renderRegionAtCenter(float x, float y, float tx, float ty, float tdx, float tdy) {
    }

    /**
     * STUB
     */
    public void renderAtCenter(float var1, float var2) {
    }

    /**
     * REPLACED METHOD
     */
    public void render(float posX, float posY) {
        renderRegion(posX, posY, 0, 0, 1, 1, true);
    }

    /**
     * REPLACED METHOD
     */
    public void renderNoBind(float posX, float posY) {
        renderRegion(posX, posY, 0, 0, 1, 1, false);
    }

    /**
     * REPLACED METHOD
     * <p>
     * Executes vanilla Sprite rendering directly on the rendering thread,
     * avoiding the overhead of passing individual OpenGL calls across
     * the client-server thread boundary.
     */
    public void renderRegion(
            float posX,
            float posY,
            float regionFractionX,
            float regionFractionY,
            float regionFractionWidth,
            float regionFractionHeight,
            boolean bind
    ) {
        if (texture == null) {
            return;
        }

        Sprite$render command = getCommand();

        command.spritePool = spritePool;

        command.spriteX = posX + (float) offsetX;
        command.spriteY = posY + (float) offsetY;
        command.spriteWidth = width;
        command.spriteHeight = height;

        command.centerX = centerX;
        command.centerY = centerY;
        command.angle = angle;

        command.r = (byte) color.getRed();
        command.g = (byte) color.getGreen();
        command.b = (byte) color.getBlue();
        command.a = (byte) ((int) ((float) color.getAlpha() * alphaMult));

        command.quadX = regionFractionX * width;
        command.quadY = regionFractionY * height;
        command.quadWidth = regionFractionWidth * width;
        command.quadHeight = regionFractionHeight * height;

        if (regionFractionX != 0 || regionFractionY != 0) {
            command.texX = regionFractionX * texWidth;
            command.texY = regionFractionY * texHeight;
        } else {
            command.texX = texX;
            command.texY = texY;
        }
        command.texWidth = regionFractionWidth * texWidth;
        command.texHeight = regionFractionHeight * texHeight;

        command.textureID = texture.TextureHandler_getTextureID();
        command.blendSrc = blendSrc;
        command.blendDest = blendDest;
        command.bind = bind;
        command.texClamp = texClamp;

        runCommand(command);
    }

    /**
     * ADDED METHOD
     */
    private Sprite$render getCommand() {
        if (spritePool == null) {
            spritePool = new Pool();
        }

        Object pooledCommand = spritePool.get();
        if (pooledCommand != null) {
            return (Sprite$render) pooledCommand;
        }

        return new Sprite$render();
    }

    /**
     * ADDED METHOD
     */
    private void runCommand(Sprite$render command) {
        final Context context = ContextManager.getThreadContext();

        if (command.bind) {
            if (context.textureTracker.glBindTexture(GL11.GL_TEXTURE_2D, command.textureID)) {
                context.attribTracker.glBindTexture(GL11.GL_TEXTURE_2D, command.textureID);
            }
            context.textureManager.glBindTexture(context, GL11.GL_TEXTURE_2D, command.textureID);
        }

        context.attribTracker.glEnable(GL11.GL_TEXTURE_2D);
        context.attribTracker.glDisable(GL11.GL_BLEND);

        context.exec.execute(command);
    }

    public static class Sprite$render implements GLCommand, DebugString {
        public Pool spritePool;

        public float spriteX;
        public float spriteY;
        public float spriteWidth;
        public float spriteHeight;
        public float centerX;
        public float centerY;
        public float angle;

        public byte r;
        public byte g;
        public byte b;
        public byte a;

        public float quadX;
        public float quadY;
        public float quadWidth;
        public float quadHeight;

        public float texX;
        public float texY;
        public float texWidth;
        public float texHeight;

        public int textureID;
        public int blendSrc;
        public int blendDest;
        public boolean bind;
        public boolean texClamp;

        @Override
        public void run(Context context, float[] args, int argsOffset) {
            if (bind) {
                context.attribManager.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
                org.lwjgl.opengl.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
            }

            if (texClamp) {
                org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_S, GL12.GL_CLAMP_TO_EDGE);
                org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_T, GL12.GL_CLAMP_TO_EDGE);
            }

            context.matrixManager.glPushMatrix();
            context.matrixManager.glTranslatef(spriteX + spriteWidth / 2, spriteY + spriteHeight / 2, 0);
            context.matrixManager.glRotatef(angle, 0, 0, 1);
            if (centerX != -1 && centerY != -1) {
                context.matrixManager.glTranslatef(-centerX, -centerY, 0);
            } else {
                context.matrixManager.glTranslatef(-spriteWidth / 2, -spriteHeight / 2, 0);
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
            context.vertexInterceptor.glVertex3f(quadX, quadY, 0);
            context.vertexInterceptor.glTexCoord4f(texX, texY + texHeight, 0, 1);
            context.vertexInterceptor.glVertex3f(quadX, quadY + quadHeight, 0);
            context.vertexInterceptor.glTexCoord4f(texX + texWidth, texY + texHeight, 0, 1);
            context.vertexInterceptor.glVertex3f(quadX + quadWidth, quadY + quadHeight, 0);
            context.vertexInterceptor.glTexCoord4f(texX + texWidth, texY, 0, 1);
            context.vertexInterceptor.glVertex3f(quadX + quadWidth, quadY, 0);
            context.vertexInterceptor.glEnd();

            context.attribManager.glDisable(GL11.GL_BLEND);
            context.matrixManager.glPopMatrix();

            if (texClamp) {
                org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_S, GL11.GL_REPEAT);
                org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_T, GL11.GL_REPEAT);
            }

            spritePool.put(this);
        }

        @Override
        public String debugString(Context context, float[] args, int argsOffset) {
            return "Sprite$render[texture=" + textureID + "]";
        }
    }

    public void renderRegionAtCenterNative(
            float posX,
            float posY,
            float regionFractionX,
            float regionFractionY,
            float regionFractionWidth,
            float regionFractionHeight
    ) {
        renderRegionNative(
                posX - width / 2,
                posY - height / 2,
                regionFractionX,
                regionFractionY,
                regionFractionWidth,
                regionFractionHeight
        );
    }

    // Render the Sprite directly on the rendering thread,
    // bypassing Fast Rendering OpenGL context simulation.
    // Should be executed in a dedicated GL sharedDrawable.
    public void renderRegionNative(
            float posX,
            float posY,
            float regionFractionX,
            float regionFractionY,
            float regionFractionWidth,
            float regionFractionHeight
    ) {
        org.lwjgl.opengl.GL11.glBindTexture(GL11.GL_TEXTURE_2D, texture.TextureHandler_getTextureID());

        if (texClamp) {
            org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_S, GL12.GL_CLAMP_TO_EDGE);
            org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_T, GL12.GL_CLAMP_TO_EDGE);
        }

        org.lwjgl.opengl.GL11.glPushMatrix();
        org.lwjgl.opengl.GL11.glTranslatef(posX + (float) offsetX + width / 2, posY + (float) offsetY + height / 2, 0);
        org.lwjgl.opengl.GL11.glRotatef(angle, 0, 0, 1);
        if (centerX != -1 && centerY != -1) {
            org.lwjgl.opengl.GL11.glTranslatef(-centerX, -centerY, 0);
        } else {
            org.lwjgl.opengl.GL11.glTranslatef(-width / 2, -height / 2, 0);
        }

        org.lwjgl.opengl.GL11.glEnable(GL11.GL_TEXTURE_2D);
        org.lwjgl.opengl.GL11.glEnable(GL11.GL_BLEND);
        org.lwjgl.opengl.GL11.glBlendFunc(blendSrc, blendDest);

        byte r = (byte) color.getRed();
        byte g = (byte) color.getGreen();
        byte b = (byte) color.getBlue();
        byte a = (byte) ((int) ((float) color.getAlpha() * alphaMult));

        org.lwjgl.opengl.GL11.glColor4f(
                (r & 0xFF) / 255f,
                (g & 0xFF) / 255f,
                (b & 0xFF) / 255f,
                (a & 0xFF) / 255f
        );

        float quadX = regionFractionX * width;
        float quadY = regionFractionY * height;
        float quadWidth = regionFractionWidth * width;
        float quadHeight = regionFractionHeight * height;

        float texX;
        float texY;
        if (regionFractionX != 0 || regionFractionY != 0) {
            texX = regionFractionX * texWidth;
            texY = regionFractionY * texHeight;
        } else {
            texX = this.texX;
            texY = this.texY;
        }
        float texWidth = regionFractionWidth * this.texWidth;
        float texHeight = regionFractionHeight * this.texHeight;

        org.lwjgl.opengl.GL11.glBegin(GL11.GL_QUADS);
        org.lwjgl.opengl.GL11.glTexCoord4f(texX, texY, 0, 1);
        org.lwjgl.opengl.GL11.glVertex3f(quadX, quadY, 0);
        org.lwjgl.opengl.GL11.glTexCoord4f(texX, texY + texHeight, 0, 1);
        org.lwjgl.opengl.GL11.glVertex3f(quadX, quadY + quadHeight, 0);
        org.lwjgl.opengl.GL11.glTexCoord4f(texX + texWidth, texY + texHeight, 0, 1);
        org.lwjgl.opengl.GL11.glVertex3f(quadX + quadWidth, quadY + quadHeight, 0);
        org.lwjgl.opengl.GL11.glTexCoord4f(texX + texWidth, texY, 0, 1);
        org.lwjgl.opengl.GL11.glVertex3f(quadX + quadWidth, quadY, 0);
        org.lwjgl.opengl.GL11.glEnd();

        org.lwjgl.opengl.GL11.glDisable(GL11.GL_BLEND);
        org.lwjgl.opengl.GL11.glPopMatrix();

        if (texClamp) {
            org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_S, GL11.GL_REPEAT);
            org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_T, GL11.GL_REPEAT);
        }
    }
}
