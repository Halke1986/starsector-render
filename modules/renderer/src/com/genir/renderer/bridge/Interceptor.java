package com.genir.renderer.bridge;

import com.genir.renderer.Default;
import com.genir.renderer.Renderer;
import com.genir.renderer.Renderer.QuadContext;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix3f;

import static com.genir.renderer.Debug.asert;

public class Interceptor {
    private final Renderer renderer;

    // Key.
    private int textureTarget = -1;
    private int textureID = -1;

    private int blendSfactor = -1;
    private int blendDfactor = -1;
    private int blendEquation = Default.blendEquation;

    // Quad.
    private int mode;
    private final byte[] colors = new byte[16];
    private final float[] texCoords = new float[8];
    private final float[] vertices = new float[8];
    private int texNum = 0;
    private int vertexNum = 0;

    // Model matrix.
    private final ModelView matrixStack;

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
        colors[0] = red;
        colors[1] = green;
        colors[2] = blue;
        colors[3] = alpha;
        colors[4] = red;
        colors[5] = green;
        colors[6] = blue;
        colors[7] = alpha;
        colors[8] = red;
        colors[9] = green;
        colors[10] = blue;
        colors[11] = alpha;
        colors[12] = red;
        colors[13] = green;
        colors[14] = blue;
        colors[15] = alpha;
    }

    public void glTexCoord2f(float s, float t) {
        asert(mode != -1);

        if (texNum == 4) {
            commitQuad();
        }

        texCoords[texNum * 2] = s;
        texCoords[texNum * 2 + 1] = t;

        texNum++;
    }

    public void glVertex2f(float x, float y) {
        asert(mode != -1);

        if (vertexNum == 4) {
            commitQuad();
        }

        Matrix3f m = matrixStack.getMatrix();

        float u = x * m.m00 + y * m.m01 + m.m02;
        float v = x * m.m10 + y * m.m11 + m.m12;

        vertices[vertexNum * 2] = u;
        vertices[vertexNum * 2 + 1] = v;

        vertexNum++;
    }

    public void glBegin(int mode) {
        asert(mode == GL11.GL_QUADS || mode == GL11.GL_QUAD_STRIP);

        this.mode = mode;
    }

    public void glEnd() {
        asert(mode != -1);

        if (vertexNum == 4) {
            commitQuad();
        }

        mode = -1;
    }

    private void commitQuad() {
        asert(textureTarget != -1);
        asert(textureID != -1);
        asert(blendSfactor != -1);
        asert(blendDfactor != -1);

        asert(texNum == 4);
        asert(vertexNum == 4);

        QuadContext ctx = new QuadContext(textureTarget, textureID, blendSfactor, blendDfactor, blendEquation);
        renderer.getQuads(ctx).addQuad(colors, texCoords, vertices);

        texNum = 0;
        vertexNum = 0;
    }
}
