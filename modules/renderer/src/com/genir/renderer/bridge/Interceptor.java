package com.genir.renderer.bridge;

import com.genir.renderer.Default;
import com.genir.renderer.Renderer;
import com.genir.renderer.Renderer.QuadContext;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix3f;

public class Interceptor {
    private final Renderer renderer;

    // Key.
    private int textureTarget = -1;
    private int textureID = -1;
    private int blendSfactor = -1;
    private int blendDfactor = -1;
    private int blendEquation = Default.blendEquation;

    // State.
    private int mode;
    private final ModelView matrixStack;
    private final byte[] color = new byte[4];

    // Quad.
    private final byte[] colors = new byte[16];
    private final float[] texCoords = new float[8];
    private final float[] vertices = new float[8];
    private int texNum = 0;
    private int vertexNum = 0;

    public Interceptor(Renderer renderer, ModelView matrixStack) {
        this.renderer = renderer;
        this.matrixStack = matrixStack;
    }

    public void glBindTexture(int target, int texture) {
        textureTarget = target;
        textureID = texture;
    }

    public void glBlendFunc(int sfactor, int dfactor) {
        blendSfactor = sfactor;
        blendDfactor = dfactor;
    }

    public void glBlendEquation(int mode) {
        blendEquation = mode;
    }

    public void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        color[0] = red;
        color[1] = green;
        color[2] = blue;
        color[3] = alpha;
    }

    public void glBegin(int mode) {
        assert (mode == GL11.GL_QUADS || mode == GL11.GL_QUAD_STRIP);

        this.mode = mode;

        texNum = 0;
        vertexNum = 0;
    }

    public void glEnd() {
        assert (mode != -1);

        mode = -1;
    }

    public void glTexCoord2f(float s, float t) {
        assert (mode != -1);

        addVertex(s, t, texNum, texCoords);
        texNum++;

        commit();
    }

    public void glVertex2f(float x, float y) {
        assert (mode != -1);

        Matrix3f m = matrixStack.getMatrix();

        float u = x * m.m00 + y * m.m01 + m.m02;
        float v = x * m.m10 + y * m.m11 + m.m12;

        int idx = addVertex(u, v, vertexNum, vertices);
        vertexNum++;

        // Define vertex color.
        int offset = idx * 4;
        colors[offset] = color[0];
        colors[offset + 1] = color[1];
        colors[offset + 2] = color[2];
        colors[offset + 3] = color[3];

        commit();
    }

    private int addVertex(float x, float y, int vertexNum, float[] buffer) {
        int idx = vertexNum;

        if (mode == GL11.GL_QUAD_STRIP && vertexNum >= 2) {
            idx = (vertexNum + 1) % 2 + 2;
        }

        buffer[idx * 2] = x;
        buffer[idx * 2 + 1] = y;

        return idx;
    }

    private void commit() {
        assert (texNum <= 4);
        assert (vertexNum <= 4);

        if (texNum == 4 && vertexNum == 4) {
            if (mode == GL11.GL_QUADS) {
                commitQuad();
            } else { // GL_QUAD_STRIP
                commitStrip();
            }
        }
    }

    private void commitQuad() {
        if (texNum == 0 && vertexNum == 0) {
            return;
        }

        assert (textureTarget != -1);
        assert (textureID != -1);
        assert (blendSfactor != -1);
        assert (blendDfactor != -1);

        assert (texNum == 4);
        assert (vertexNum == 4);

        QuadContext ctx = new QuadContext(textureTarget, textureID, blendSfactor, blendDfactor, blendEquation);
        renderer.getQuads(ctx).addQuad(colors, texCoords, vertices);

        texNum = 0;
        vertexNum = 0;
    }

    private void commitStrip() {
        if (texNum == 0 && vertexNum == 0) {
            return;
        }

        assert (textureTarget != -1);
        assert (textureID != -1);
        assert (blendSfactor != -1);
        assert (blendDfactor != -1);

        assert (texNum == vertexNum);
        assert (vertexNum >= 4);
        assert (vertexNum % 2 == 0);

        QuadContext ctx = new QuadContext(textureTarget, textureID, blendSfactor, blendDfactor, blendEquation);
        renderer.getQuads(ctx).addQuad(colors, texCoords, vertices);

        float[] t = texCoords;
        t[0] = t[6];
        t[1] = t[7];
        t[2] = t[4];
        t[3] = t[5];

        float[] v = vertices;
        v[0] = v[6];
        v[1] = v[7];
        v[2] = v[4];
        v[3] = v[5];

        byte[] c = colors;
        c[0] = c[12];
        c[1] = c[13];
        c[2] = c[14];
        c[3] = c[15];
        c[4] = c[8];
        c[5] = c[9];
        c[6] = c[10];
        c[7] = c[11];

        texNum = 2;
        vertexNum = 2;
    }
}
