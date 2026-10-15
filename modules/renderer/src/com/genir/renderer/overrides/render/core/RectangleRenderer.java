package com.genir.renderer.overrides.render.core;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.debug.Debug;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.awt.*;
import java.nio.FloatBuffer;
import java.util.Arrays;

public class RectangleRenderer {
    private static final int RECTANGLE_SIZE = 14;

    private static final int VERTEX_SIZE = 2;
    private static final int COLOR_SIZE = 4;
    private static final int TEX_SIZE = 2;
    private static final int STRIDE = VERTEX_SIZE + COLOR_SIZE + TEX_SIZE;

    private float[] scratchpad = new float[RECTANGLE_SIZE];
    private int rectangles = 0;

    private float[] vertexScratchpad = new float[STRIDE * 4];
    private FloatBuffer vertexPointer = BufferUtils.createFloatBuffer(STRIDE * 4);

    public void clear() {
        rectangles = 0;
    }

    public void addRectangle(
            float centerX,
            float centerY,
            float angle,
            float width,
            float height,

            Color color,
            float alphaMult,

            float texX,
            float texY,
            float texWidth,
            float texHeight
    ) {
        addRectangle(
                centerX,
                centerY,
                angle,
                width,
                height,

                color.getRed() / 255f,
                color.getGreen() / 255f,
                color.getBlue() / 255f,
                (color.getAlpha() / 255f) * alphaMult,

                texX,
                texY,
                texWidth,
                texHeight
        );
    }

    public void addRectangle(
            float centerX,
            float centerY,
            float angle,
            float width,
            float height,

            float red,
            float green,
            float blue,
            float alpha,

            float texX,
            float texY,
            float texWidth,
            float texHeight
    ) {
        // Optimized equivalent of:
        // m.setIdentity()
        // m.translate(centerX, centerY, 0);
        // m.rotate(angle, 0, 0, 1);
        // m.scale(width, height, 0);

        float c = 1;
        float s = 0;
        if (angle != 0) {
            double rad = angle * Math.PI / 180.0;
            c = (float) Math.cos(rad);
            s = (float) Math.sin(rad);
        }

        addRectangle(
                c * width,
                -s * height,
                centerX,
                s * width,
                c * height,
                centerY,

                red,
                green,
                blue,
                alpha,

                texX,
                texY,
                texWidth,
                texHeight
        );
    }

    public void addRectangle(
            float m00,
            float m01,
            float m03,
            float m10,
            float m11,
            float m13,

            float red,
            float green,
            float blue,
            float alpha,

            float texX,
            float texY,
            float texWidth,
            float texHeight
    ) {
        while (scratchpad.length <= (rectangles + 1) * RECTANGLE_SIZE) {
            scratchpad = Arrays.copyOf(scratchpad, scratchpad.length * 2);
        }

        int offset = rectangles * RECTANGLE_SIZE;

        scratchpad[offset + 0] = m00;
        scratchpad[offset + 1] = m01;
        scratchpad[offset + 2] = m03;
        scratchpad[offset + 3] = m10;
        scratchpad[offset + 4] = m11;
        scratchpad[offset + 5] = m13;

        scratchpad[offset + 6] = red;
        scratchpad[offset + 7] = green;
        scratchpad[offset + 8] = blue;
        scratchpad[offset + 9] = alpha;

        scratchpad[offset + 10] = texX;
        scratchpad[offset + 11] = texY;
        scratchpad[offset + 12] = texWidth;
        scratchpad[offset + 13] = texHeight;

        rectangles++;
    }

    public void render() {
        record rectangleRenderer(
                RectangleRenderer renderer,
                float[] snapshot,
                int rectangles
        ) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                Debug.asertEqual(context.listManager.isRecording(), false, this);

                // Calculate array size.
                int vertices = rectangles * 4;
                int arraySize = renderer.vertexScratchpad.length;
                int arrayRequired = vertices * STRIDE;
                while (arraySize < arrayRequired) {
                    arraySize *= 2;
                }

                // Resize arrays.
                if (renderer.vertexScratchpad.length != arraySize) {
                    renderer.vertexScratchpad = Arrays.copyOf(renderer.vertexScratchpad, arraySize);
                    renderer.vertexPointer = BufferUtils.createFloatBuffer(arraySize);
                }

                // Unpack vertices.
                float[] scratchpad = renderer.vertexScratchpad;
                for (int i = 0; i < rectangles; i++) {
                    int readOffset = i * RECTANGLE_SIZE;
                    int writeOffset = i * STRIDE * 4;

                    float m00 = snapshot[readOffset + 0];
                    float m01 = snapshot[readOffset + 1];
                    float m03 = snapshot[readOffset + 2];
                    float m10 = snapshot[readOffset + 3];
                    float m11 = snapshot[readOffset + 4];
                    float m13 = snapshot[readOffset + 5];

                    float red = snapshot[readOffset + 6];
                    float green = snapshot[readOffset + 7];
                    float blue = snapshot[readOffset + 8];
                    float alpha = snapshot[readOffset + 9];

                    float texX = snapshot[readOffset + 10];
                    float texY = snapshot[readOffset + 11];
                    float texWidth = snapshot[readOffset + 12];
                    float texHeight = snapshot[readOffset + 13];

                    // Vertex 0.
                    scratchpad[writeOffset + 0] = -0.5f * m00 - 0.5f * m01 + m03;
                    scratchpad[writeOffset + 1] = -0.5f * m10 - 0.5f * m11 + m13;
                    scratchpad[writeOffset + 2] = red;
                    scratchpad[writeOffset + 3] = green;
                    scratchpad[writeOffset + 4] = blue;
                    scratchpad[writeOffset + 5] = alpha;
                    scratchpad[writeOffset + 6] = texX;
                    scratchpad[writeOffset + 7] = texY;

                    // Vertex 2.
                    scratchpad[writeOffset + 8] = -0.5f * m00 + 0.5f * m01 + m03;
                    scratchpad[writeOffset + 9] = -0.5f * m10 + 0.5f * m11 + m13;
                    scratchpad[writeOffset + 10] = red;
                    scratchpad[writeOffset + 11] = green;
                    scratchpad[writeOffset + 12] = blue;
                    scratchpad[writeOffset + 13] = alpha;
                    scratchpad[writeOffset + 14] = texX;
                    scratchpad[writeOffset + 15] = texY + texHeight;

                    // Vertex 3.
                    scratchpad[writeOffset + 16] = 0.5f * m00 + 0.5f * m01 + m03;
                    scratchpad[writeOffset + 17] = 0.5f * m10 + 0.5f * m11 + m13;
                    scratchpad[writeOffset + 18] = red;
                    scratchpad[writeOffset + 19] = green;
                    scratchpad[writeOffset + 20] = blue;
                    scratchpad[writeOffset + 21] = alpha;
                    scratchpad[writeOffset + 22] = texX + texWidth;
                    scratchpad[writeOffset + 23] = texY + texHeight;

                    // Vertex 4.
                    scratchpad[writeOffset + 24] = 0.5f * m00 - 0.5f * m01 + m03;
                    scratchpad[writeOffset + 25] = 0.5f * m10 - 0.5f * m11 + m13;
                    scratchpad[writeOffset + 26] = red;
                    scratchpad[writeOffset + 27] = green;
                    scratchpad[writeOffset + 28] = blue;
                    scratchpad[writeOffset + 29] = alpha;
                    scratchpad[writeOffset + 30] = texX + texWidth;
                    scratchpad[writeOffset + 31] = texY;
                }

                renderer.vertexPointer.put(0, scratchpad, 0, vertices * STRIDE);

                org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
                org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
                org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

                org.lwjgl.opengl.GL11.glVertexPointer(2, STRIDE * Float.BYTES, renderer.vertexPointer.position(0));
                org.lwjgl.opengl.GL11.glColorPointer(4, STRIDE * Float.BYTES, renderer.vertexPointer.duplicate().position(2));
                org.lwjgl.opengl.GL11.glTexCoordPointer(2, STRIDE * Float.BYTES, renderer.vertexPointer.duplicate().position(6));

                context.attribManager.applyDrawAttribs();

                org.lwjgl.opengl.GL11.glDrawArrays(GL11.GL_QUADS, 0, vertices);

                org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
                org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
                org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

                // Cleanup.
                context.vertexInterceptor.arraysTouched();
                ArrayPool.arrayPool.put(snapshot);
            }
        }

        final float[] snapshot = ArrayPool.arrayPool.get(rectangles * RECTANGLE_SIZE);

        System.arraycopy(scratchpad, 0, snapshot, 0, rectangles * RECTANGLE_SIZE);

        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new rectangleRenderer(this, snapshot, rectangles));
    }
}
