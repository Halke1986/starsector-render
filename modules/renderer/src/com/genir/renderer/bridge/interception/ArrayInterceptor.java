package com.genir.renderer.bridge.interception;

import com.genir.renderer.bridge.rendering.Renderer;
import com.genir.renderer.bridge.rendering.VertexBuffer;
import com.genir.renderer.bridge.state.ModelView;
import com.genir.renderer.bridge.state.RenderContext;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix3f;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

import static com.genir.renderer.Debug.asert;

public class ArrayInterceptor {
    private final Renderer renderer;
    private final RenderContext ctx;
    private final ModelView matrixStack;

    private ByteBuffer colors;
    private FloatBuffer texCoords;
    private FloatBuffer vertices;

    public ArrayInterceptor(Renderer renderer, RenderContext ctx, ModelView matrixStack) {
        this.renderer = renderer;
        this.ctx = ctx;
        this.matrixStack = matrixStack;
    }

    public void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) {
        asert(size == 4);
        asert(unsigned);
        asert(stride == 0);

        colors = pointer;
    }

    public void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        asert(size == 2);
        asert(stride == 0);

        texCoords = pointer;
    }

    public void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        asert(size == 2);
        asert(stride == 0);

        vertices = pointer;
    }

    public void glDrawArrays(int mode, int first, int count) {
        asert(mode == GL11.GL_QUADS);
        asert(first == 0);

        VertexBuffer buffer = renderer.getVertexBuffer(ctx);

        // Transform vertices;
        Matrix3f m = matrixStack.getMatrix();
        float[] rawVertices = new float[count * 2];
        vertices.get(rawVertices);

        for (int i = 0; i < rawVertices.length; i += 2) {
            float x = rawVertices[i + 0];
            float y = rawVertices[i + 1];

            rawVertices[i + 0] = x * m.m00 + y * m.m01 + m.m02;
            rawVertices[i + 1] = x * m.m10 + y * m.m11 + m.m12;
        }

        buffer.addVertices(colors, texCoords, rawVertices, count);
    }
}
