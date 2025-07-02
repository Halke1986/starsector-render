package com.genir.graphics;

import com.genir.graphics.Renderer.Quad;
import com.genir.graphics.Renderer.QuadContext;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix3f;

import java.nio.FloatBuffer;
import java.util.Stack;

import static com.genir.graphics.Debug.asert;

public class GLState {
    // Key.
    private int textureTarget;
    private int textureID;

    private int blendSfactor;
    private int blendDfactor;

    // Quad.
    private byte[] color;
    private FloatBuffer texCoord;
    private FloatBuffer vertexes;

    private int mode;

    private Stack<Matrix3f> matrixStack;
    private Matrix3f modelMatrix;

    public void init() {
        textureTarget = -1;
        textureID = -1;

        blendSfactor = -1;
        blendDfactor = -1;

        color = null;
        texCoord = null;
        vertexes = null;

        mode = -1;

        modelMatrix = defaultModelMatrix();
        matrixStack = new Stack<>();
    }

    public void assertState() {
        // Assert no model matrix leak.
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

    public void glBegin(int mode) {
        assert (mode == GL11.GL_QUADS);

        this.mode = mode;

        texCoord = FloatBuffer.allocate(4 * 2);
        vertexes = FloatBuffer.allocate(4 * 2);
    }

    // Add a finished quad to renderer array.
    public void glEnd() {
        assert (mode == GL11.GL_QUADS);

        assert (textureTarget != 1);
        assert (textureID != 1);
        assert (blendSfactor != 1);
        assert (blendDfactor != 1);

        assert (color != null);

        texCoord.flip();
        vertexes.flip();

        QuadContext ctx = new QuadContext(textureTarget, textureID, blendSfactor, blendDfactor);
        Quad q = new Quad();
        q.color = color;
        q.texCoord = texCoord;
        q.vertexes = vertexes;

        Renderer.addQuad(ctx, q);

        color = null;
        texCoord = null;
        vertexes = null;

        mode = -1;
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
        assert (z == 0f);

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

        Matrix3f m = modelMatrix;
        Matrix3f.mul(r, m, m);
    }

    public void glTexCoord2f(float s, float t) {
        assert (mode == GL11.GL_QUADS);

        texCoord.put(s);
        texCoord.put(t);
    }

    public void glVertex2f(float x, float y) {
        assert (mode == GL11.GL_QUADS);

        Matrix3f m = modelMatrix;

        float u = x * m.m00 + y * m.m01 + m.m02;
        float v = x * m.m10 + y * m.m11 + m.m12;

        vertexes.put(u);
        vertexes.put(v);
    }
}
