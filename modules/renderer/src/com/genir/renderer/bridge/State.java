package com.genir.renderer.bridge;

import com.genir.renderer.bridge.Renderer.Quad;
import com.genir.renderer.bridge.Renderer.QuadContext;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix3f;

import java.util.Stack;

import static com.genir.renderer.Debug.asert;

public class State {
    private final Renderer renderer;

    // Key.
    private int textureTarget;
    private int textureID;

    private int blendSfactor;
    private int blendDfactor;

    // Quad.
    private int mode;
    private byte[] color;
    private float[] texCoord;
    private float[] vertexes;
    private int texNum;
    private int vertexNum;

    private Stack<Matrix3f> matrixStack;
    private Matrix3f modelMatrix;

    public State(Renderer renderer) {
        this.renderer = renderer;
    }

    public void init() {
        textureTarget = -1;
        textureID = -1;

        blendSfactor = -1;
        blendDfactor = -1;

        modelMatrix = defaultModelMatrix();
        matrixStack = new Stack<>();
    }

    public void assertState() {
        // assert no model matrix leak.
        asert(matrixStack.isEmpty());

        Matrix3f m = modelMatrix;
        asert(m.m00 == 1f);
        asert(m.m01 == 0f);
        asert(m.m02 == 0.01f);
        asert(m.m10 == 0f);
        asert(m.m11 == 1f);
        asert(m.m12 == 0.01f);
        asert(m.m20 == 0f);
        asert(m.m21 == 0f);
        asert(m.m22 == 1f);
    }

    private Matrix3f defaultModelMatrix() {
        Matrix3f defaultMatrix = new Matrix3f();
        defaultMatrix.setIdentity();
        defaultMatrix.m02 = 0.01f;
        defaultMatrix.m12 = 0.01f;

        return defaultMatrix;
    }

    // TODO manage state
    public void glEnable(int cap) {
    }

    // TODO manage state
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

    public void glPushMatrix() {
        matrixStack.push(Matrix3f.load(modelMatrix, null));
    }

    public void glPopMatrix() {
        modelMatrix = matrixStack.pop();
    }

    public void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        color = new byte[]{red, green, blue, alpha};
    }

    public void glTranslatef(float x, float y, float z) {
        asert(z == 0f);

        Matrix3f t = new Matrix3f();
        t.m00 = 1f;
        t.m02 = x;
        t.m11 = 1f;
        t.m12 = y;
        t.m22 = 1f;

        Matrix3f m = modelMatrix;
        Matrix3f.mul(t, m, m);
    }

    public void glRotatef(float angle, float x, float y, float z) {
        asert(x == 0f);
        asert(y == 0f);
        asert(z == 1f);

        float a = angle * (float) (Math.PI / 180);
        float cos = (float) Math.cos(a);
        float sin = (float) Math.sin(a);

        Matrix3f r = new Matrix3f();
        r.m00 = cos;
        r.m01 = -sin;
        r.m10 = sin;
        r.m11 = cos;
        r.m22 = 1f;

        Matrix3f m = modelMatrix;
        Matrix3f.mul(r, m, m);
    }

    public void glTexCoord2f(float s, float t) {
        asert(mode == GL11.GL_QUADS);

        if (texNum == 4) {
            commitQuad();
            beginQuad();
        }

        texCoord[texNum * 2] = s;
        texCoord[texNum * 2 + 1] = t;

        texNum++;
    }

    public void glVertex2f(float x, float y) {
        asert(mode == GL11.GL_QUADS);

        if (vertexNum == 4) {
            commitQuad();
            beginQuad();
        }

        Matrix3f m = modelMatrix;

        float u = x * m.m00 + y * m.m01 + m.m02;
        float v = x * m.m10 + y * m.m11 + m.m12;

        vertexes[vertexNum * 2] = u;
        vertexes[vertexNum * 2 + 1] = v;

        vertexNum++;
    }

    public void glBegin(int mode) {
        asert(mode == GL11.GL_QUADS);

        this.mode = mode;

        beginQuad();
    }

    public void glEnd() {
        asert(mode == GL11.GL_QUADS);

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
        asert(textureTarget != -1);
        asert(textureID != -1);
        asert(blendSfactor != -1);
        asert(blendDfactor != -1);

        asert(texNum == 4);
        asert(vertexNum == 4);

        asert(color != null);
        asert(texCoord != null);
        asert(vertexes != null);

        QuadContext ctx = new QuadContext(textureTarget, textureID, blendSfactor, blendDfactor);
        Quad q = new Quad(color, texCoord, vertexes);

        renderer.addQuad(ctx, q);
    }
}
