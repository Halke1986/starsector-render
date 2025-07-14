package com.genir.renderer.bridge.interception;

import com.genir.renderer.bridge.rendering.Renderer;
import com.genir.renderer.bridge.state.ModelView;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix3f;

import static com.genir.renderer.Debug.asert;

public class VertexInterceptor {
    private final Renderer renderer;
    private final ModelView matrixStack;

    // State.
    private final byte[] color = new byte[4];
    private final float[] texCoord = new float[2];

    // Buffers.
    private final byte[] colors = new byte[16];
    private final float[] texCoords = new float[8];
    private final float[] vertices = new float[8];

    // Total number of vertices since glBegin.
    private int vertexNum = 0;

    public void glBegin(int mode) {
        asert(mode == GL11.GL_QUADS);
    }

    public void glEnd() {
    }

    public VertexInterceptor(Renderer renderer, ModelView matrixStack) {
        this.renderer = renderer;
        this.matrixStack = matrixStack;
    }

    public void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        color[0] = red;
        color[1] = green;
        color[2] = blue;
        color[3] = alpha;
    }

    public void glTexCoord2f(float s, float t) {
        texCoord[0] = s;
        texCoord[1] = t;
    }

    public void glVertex2f(float x, float y) {
        Matrix3f m = matrixStack.getMatrix();

        float u = x * m.m00 + y * m.m01 + m.m02;
        float v = x * m.m10 + y * m.m11 + m.m12;

        int idx = vertexNum;

        vertices[idx * 2 + 0] = u;
        vertices[idx * 2 + 1] = v;

        // Define vertex texture.
        texCoords[idx * 2 + 0] = texCoord[0];
        texCoords[idx * 2 + 1] = texCoord[1];

        // Define vertex color.
        colors[idx * 4 + 0] = color[0];
        colors[idx * 4 + 1] = color[1];
        colors[idx * 4 + 2] = color[2];
        colors[idx * 4 + 3] = color[3];

        vertexNum++;

        if (vertexNum == 4) {
            commit();
        }
    }

    private void commit() {
        renderer.drawPrimitives(colors, texCoords, vertices, 4);
        vertexNum = 0;
    }
}
