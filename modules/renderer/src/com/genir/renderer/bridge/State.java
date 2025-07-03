package com.genir.renderer.bridge;

import com.genir.renderer.Default;
import com.genir.renderer.Renderer;
import com.genir.renderer.Renderer.Quad;
import com.genir.renderer.Renderer.QuadContext;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix3f;

public class State {
    private final Renderer renderer;

    // Key.
    private int textureTarget = -1;
    private int textureID = -1;

    private int blendSfactor = -1;
    private int blendDfactor = -1;
    private int blendEquation = Default.blendEquation;

    // Quad.
    private int mode;
    private byte[] color;
    private float[] texCoord;
    private float[] vertexes;
    private int texNum;
    private int vertexNum;

    // Model matrix.
    private final Matrix3f[] matrixStack = new Matrix3f[8];
    private int matrixIdx = 0;

    public State(Renderer renderer) {
        this.renderer = renderer;

        matrixStack[0] = Default.modelMatrix();
    }

    public void assertState() {
        // assert no model matrix leak.
        assert (matrixIdx == 0);

        Matrix3f m = matrixStack[matrixIdx];
        assert (m.m00 == 1f);
        assert (m.m01 == 0f);
        assert (m.m02 == 0.01f);
        assert (m.m10 == 0f);
        assert (m.m11 == 1f);
        assert (m.m12 == 0.01f);
        assert (m.m20 == 0f);
        assert (m.m21 == 0f);
        assert (m.m22 == 1f);
    }

    private Matrix3f defaultModelMatrix() {
        Matrix3f defaultMatrix = new Matrix3f();
        defaultMatrix.setIdentity();
        defaultMatrix.m02 = 0.01f;
        defaultMatrix.m12 = 0.01f;

        return defaultMatrix;
    }

    public void glEnable(int cap) {
        assert (cap == GL11.GL_TEXTURE_2D || cap == GL11.GL_BLEND);
    }

    public void glDisable(int cap) {
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

    public void glPushMatrix() {
        int next = matrixIdx + 1;
        if (matrixStack[next] == null) {
            matrixStack[next] = new Matrix3f();
        }

        Matrix3f.load(matrixStack[matrixIdx], matrixStack[next]);
        matrixIdx++;
    }

    public void glPopMatrix() {
        matrixIdx--;
    }

    public void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        color = new byte[]{red, green, blue, alpha};
    }

    public void glTranslatef(float x, float y, float z) {
        assert (z == 0f);

        Matrix3f t = new Matrix3f();
        t.m00 = 1f;
        t.m02 = x;
        t.m11 = 1f;
        t.m12 = y;
        t.m22 = 1f;

        Matrix3f m = matrixStack[matrixIdx];
        Matrix3f.mul(t, m, m);
    }

    public void glRotatef(float angle, float x, float y, float z) {
        assert (x == 0f);
        assert (y == 0f);
        assert (z == 1f);

        float a = angle * (float) (Math.PI / 180);
        float cos = (float) Math.cos(a);
        float sin = (float) Math.sin(a);

        Matrix3f r = new Matrix3f();
        r.m00 = cos;
        r.m01 = -sin;
        r.m10 = sin;
        r.m11 = cos;
        r.m22 = 1f;

        Matrix3f m = matrixStack[matrixIdx];
        Matrix3f.mul(r, m, m);
    }

    public void glTexCoord2f(float s, float t) {
        assert (mode == GL11.GL_QUADS);

        if (texNum == 4) {
            commitQuad();
            beginQuad();
        }

        texCoord[texNum * 2] = s;
        texCoord[texNum * 2 + 1] = t;

        texNum++;
    }

    public void glVertex2f(float x, float y) {
        assert (mode == GL11.GL_QUADS);

        if (vertexNum == 4) {
            commitQuad();
            beginQuad();
        }

        Matrix3f m = matrixStack[matrixIdx];

        float u = x * m.m00 + y * m.m01 + m.m02;
        float v = x * m.m10 + y * m.m11 + m.m12;

        vertexes[vertexNum * 2] = u;
        vertexes[vertexNum * 2 + 1] = v;

        vertexNum++;
    }

    public void glBegin(int mode) {
        assert (mode == GL11.GL_QUADS);

        this.mode = mode;

        beginQuad();
    }

    public void glEnd() {
        assert (mode == GL11.GL_QUADS);

        if (vertexNum == 4) {
            commitQuad();
        }

        mode = -1;
    }

    private void beginQuad() {
        texCoord = new float[8];
        vertexes = new float[8];

        texNum = 0;
        vertexNum = 0;
    }

    private void commitQuad() {
        assert (textureTarget != -1);
        assert (textureID != -1);
        assert (blendSfactor != -1);
        assert (blendDfactor != -1);

        assert (texNum == 4);
        assert (vertexNum == 4);

        assert (color != null);
        assert (texCoord != null);
        assert (vertexes != null);

        QuadContext ctx = new QuadContext(textureTarget, textureID, blendSfactor, blendDfactor, blendEquation);
        Quad q = new Quad(color, texCoord, vertexes);

        renderer.addQuad(ctx, q);
    }
}
