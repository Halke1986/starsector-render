package com.genir.renderer.overrides.render;

import com.fs.graphics.TextureHandler;
import com.fs.graphics.particle.BaseParticle;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.context.Matrix;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;

import java.awt.*;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.Arrays;

/**
 * OVERRIDES com.fs.graphics.particle.NebulaParticle
 */
public class NebulaParticle extends BaseParticle {
    /**
     * STUBS
     */
    private transient TextureHandler texture;
    private Color color;
    boolean fullyFadedIn;
    private float fullBrightnessFraction;
    private int src;
    private int dst;
    private boolean negative;
    private int i;
    private int j;
    private int w;
    private float offsetX;
    private float offsetY;
    private float width;
    private float height;

    /**
     * ADDED FIELDS
     */
    private static float[] texScratchpad;
    private static byte[] colorScratchpad;
    private static float[] vertexScratchpad;

    private static ByteBuffer colorPointer;
    private static FloatBuffer texCoordPointer;
    private static FloatBuffer vertexPointer;

    private static int numPoints = 0;
    private static Matrix m;

    public void preBatch() {
        if (vertexScratchpad == null) {
            colorScratchpad = new byte[16];
            texScratchpad = new float[8];
            vertexScratchpad = new float[8];

            colorPointer = BufferUtils.createByteBuffer(16);
            texCoordPointer = BufferUtils.createFloatBuffer(8);
            vertexPointer = BufferUtils.createFloatBuffer(8);

            m = new Matrix();
        }

        numPoints = 0;

        if (this.negative) {
            com.genir.renderer.bridge.commands.GL14.glBlendEquation(GL14.GL_FUNC_REVERSE_SUBTRACT);
        }

        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_TEXTURE_2D);
        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_BLEND);
        com.genir.renderer.bridge.commands.GL11.glBlendFunc(src, dst);

        // Bind texture.
        int textureID = texture.TextureHandler_getTextureID();
        com.genir.renderer.bridge.commands.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
    }

    public void render() {
        // Resize vertex arrays.
        int requiredLength = (numPoints + 1) * 8;
        if (vertexScratchpad.length < requiredLength) {
            colorScratchpad = Arrays.copyOf(colorScratchpad, colorScratchpad.length * 2);
            texScratchpad = Arrays.copyOf(texScratchpad, texScratchpad.length * 2);
            vertexScratchpad = Arrays.copyOf(vertexScratchpad, vertexScratchpad.length * 2);
        }

        byte r = (byte) color.getRed();
        byte g = (byte) color.getGreen();
        byte b = (byte) color.getBlue();
        byte a = (byte) ((int) ((float) color.getAlpha() * calculateBrightness()));

        int c = numPoints * 16;

        colorScratchpad[c + 0] = r;
        colorScratchpad[c + 1] = g;
        colorScratchpad[c + 2] = b;
        colorScratchpad[c + 3] = a;
        colorScratchpad[c + 4] = r;
        colorScratchpad[c + 5] = g;
        colorScratchpad[c + 6] = b;
        colorScratchpad[c + 7] = a;
        colorScratchpad[c + 8] = r;
        colorScratchpad[c + 9] = g;
        colorScratchpad[c + 10] = b;
        colorScratchpad[c + 11] = a;
        colorScratchpad[c + 12] = r;
        colorScratchpad[c + 13] = g;
        colorScratchpad[c + 14] = b;
        colorScratchpad[c + 15] = a;

        int v = numPoints * 8;

        float size = w == 2 ? 0.5F : 0.25F;
        float s = (float) i * size;
        float t = (float) j * size;

        texScratchpad[v + 0] = s;
        texScratchpad[v + 1] = t;
        texScratchpad[v + 2] = s;
        texScratchpad[v + 3] = t + size;
        texScratchpad[v + 4] = s + size;
        texScratchpad[v + 5] = t + size;
        texScratchpad[v + 6] = s + size;
        texScratchpad[v + 7] = t;

        final Context context = ContextManager.getThreadContext();

        m.set(context.matrixTracker.getModelView());
        m.translate(this.getX(), this.getY(), 0);
        m.rotate(this.getAngle(), 0, 0, 1);

        float x = offsetX;
        float y = offsetY;

        vertexScratchpad[v + 0] = x * m.m00 + y * m.m01;
        vertexScratchpad[v + 1] = x * m.m10 + y * m.m11;
        vertexScratchpad[v + 2] = x * m.m00 + (y + height) * m.m01;
        vertexScratchpad[v + 3] = x * m.m10 + (y + height) * m.m11;
        vertexScratchpad[v + 4] = (x + width) * m.m00 + (y + height) * m.m01;
        vertexScratchpad[v + 5] = (x + width) * m.m10 + (y + height) * m.m11;
        vertexScratchpad[v + 6] = (x + width) * m.m00 + y * m.m01;
        vertexScratchpad[v + 7] = (x + width) * m.m10 + y * m.m11;

        numPoints++;
    }

    public void postBatch() {
        if (vertexPointer.capacity() < vertexScratchpad.length) {
            vertexPointer = BufferUtils.createFloatBuffer(vertexScratchpad.length);
            texCoordPointer = BufferUtils.createFloatBuffer(texScratchpad.length);
            colorPointer = BufferUtils.createByteBuffer(colorScratchpad.length);
        }

        vertexPointer.put(0, vertexScratchpad, 0, numPoints * 8);
        texCoordPointer.put(0, texScratchpad, 0, numPoints * 8);
        colorPointer.put(0, colorScratchpad, 0, numPoints * 16);

        com.genir.renderer.bridge.commands.GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
        com.genir.renderer.bridge.commands.GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        com.genir.renderer.bridge.commands.GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);

        com.genir.renderer.bridge.commands.GL11.glVertexPointer(2, 0, vertexPointer);
        com.genir.renderer.bridge.commands.GL11.glTexCoordPointer(2, 0, texCoordPointer);
        com.genir.renderer.bridge.commands.GL11.glColorPointer(4, true, 0, colorPointer);

        com.genir.renderer.bridge.commands.GL11.glDrawArrays(GL11.GL_QUADS, 0, numPoints * 4);

        com.genir.renderer.bridge.commands.GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
        com.genir.renderer.bridge.commands.GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        com.genir.renderer.bridge.commands.GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);

        com.genir.renderer.bridge.commands.GL11.glDisable(GL11.GL_TEXTURE_2D);

        if (this.negative) {
            com.genir.renderer.bridge.commands.GL14.glBlendEquation(GL14.GL_FUNC_ADD);
        }
    }

    private float calculateBrightness() {
        float brightness = this.getBrightness();
        if (brightness >= 1.0F) {
            fullyFadedIn = true;
        }

        if (fullyFadedIn && fullBrightnessFraction > 0.0F) {
            brightness = this.getAge() / this.getMaxAge();
            if (brightness <= fullBrightnessFraction) {
                brightness = 1.0F;
            } else {
                brightness = 1.0F - (brightness - fullBrightnessFraction) / (1.0F - fullBrightnessFraction);
            }
        }

        return brightness;
    }
}
