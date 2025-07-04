package com.genir.renderer.bridge;

import com.genir.renderer.Default;
import com.genir.renderer.Renderer;
import com.genir.renderer.Renderer.Quad;
import com.genir.renderer.Renderer.QuadContext;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix3f;

import static com.genir.renderer.Debug.asert;

public class Quads {
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
    private final ModelView matrixStack;

    public Quads(Renderer renderer, ModelView matrixStack) {
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
        color = new byte[]{red, green, blue, alpha};
    }

    public void glTexCoord2f(float s, float t) {
        asert(mode != -1);

        if (texNum == 4) {
            commitQuad();
            beginQuad();
        }

        texCoord[texNum * 2] = s;
        texCoord[texNum * 2 + 1] = t;

        texNum++;
    }

    public void glVertex2f(float x, float y) {
        asert(mode != -1);

        if (vertexNum == 4) {
            commitQuad();
            beginQuad();
        }

        Matrix3f m = matrixStack.getMatrix();

        float u = x * m.m00 + y * m.m01 + m.m02;
        float v = x * m.m10 + y * m.m11 + m.m12;

        vertexes[vertexNum * 2] = u;
        vertexes[vertexNum * 2 + 1] = v;

        vertexNum++;
    }

    public void glBegin(int mode) {
        asert(mode == GL11.GL_QUADS || mode == GL11.GL_QUAD_STRIP);

        this.mode = mode;

        beginQuad();
    }

    public void glEnd() {
        asert(mode != -1);

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

        QuadContext ctx = new QuadContext(textureTarget, textureID, blendSfactor, blendDfactor, blendEquation);
        Quad q = new Quad(color, texCoord, vertexes);

        renderer.addQuad(ctx, q);
    }
}
