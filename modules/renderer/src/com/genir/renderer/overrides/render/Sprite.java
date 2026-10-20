package com.genir.renderer.overrides.render;

import com.fs.graphics.TextureHandler;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.context.Matrix;
import com.genir.renderer.bridge.context.Pool;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.overrides.render.core.Clip;
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

        final Context context = ContextManager.getThreadContext();

        float pivotX = regionFractionX * width;
        float pivotY = regionFractionY * height;

        if (centerX != -1 && centerY != -1) {
            pivotX -= centerX;
            pivotY -= centerY;
        } else {
            pivotX -= width / 2;
            pivotY -= height / 2;
        }

        Matrix model = context.sharedMatrix;

        model.set(context.matrixTracker.getModelView());
        model.glTranslatef(posX + (float) offsetX + width / 2, posY + (float) offsetY + height / 2, 0); // set sprite location, anchored at pivot
        model.glRotatef(angle, 0, 0, 1);
        model.glTranslatef(pivotX, pivotY, 0); // set sprite pivot
        model.glScalef(regionFractionWidth * width, regionFractionHeight * height, 0);

        // Skip sprites outside the clip volume.
        // Starsector already culls off-screen sprites relatively effectively,
        // so this additional test eliminates only 2–10% of draw calls,
        // with no noticeable performance gain. It is retained primarily
        // as a reference implementation and for testing and benchmarking.
        if (!Clip.rectangleTest(model, context.matrixTracker.getProjection())) {
            return;
        }

        RenderState command = getCommand();

        command.spritePool = spritePool;
        command.m.set(model);

        command.r = (byte) color.getRed();
        command.g = (byte) color.getGreen();
        command.b = (byte) color.getBlue();
        command.a = (byte) ((int) ((float) color.getAlpha() * alphaMult));

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
    private RenderState getCommand() {
        if (spritePool == null) {
            spritePool = new Pool();
        }

        Object pooledCommand = spritePool.get();
        if (pooledCommand != null) {
            return (RenderState) pooledCommand;
        }

        RenderState newState = new RenderState();
        newState.m = new Matrix();

        return newState;
    }

    /**
     * ADDED METHOD
     */
    private void runCommand(RenderState command) {
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

    public static class RenderState implements GLCommand {
        public Pool spritePool;
        public Matrix m;

        public byte r;
        public byte g;
        public byte b;
        public byte a;

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
            context.matrixManager.glLoadMatrix(m);

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
            context.vertexInterceptor.glVertex3f(0, 1, 0);
            context.vertexInterceptor.glTexCoord4f(texX + texWidth, texY + texHeight, 0, 1);
            context.vertexInterceptor.glVertex3f(1, 1, 0);
            context.vertexInterceptor.glTexCoord4f(texX + texWidth, texY, 0, 1);
            context.vertexInterceptor.glVertex3f(1, 0, 0);
            context.vertexInterceptor.glEnd();

            context.attribManager.glDisable(GL11.GL_BLEND);
            context.matrixManager.glPopMatrix();

            if (texClamp) {
                org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_S, GL11.GL_REPEAT);
                org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_T, GL11.GL_REPEAT);
            }

            spritePool.put(this);
        }
    }
}
