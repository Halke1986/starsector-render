package com.genir.renderer.bridge.interception;

import com.genir.renderer.bridge.rendering.VertexRepository;
import com.genir.renderer.bridge.state.ModelView;
import com.genir.renderer.bridge.state.RenderContext;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix3f;

import static com.genir.renderer.Debug.asert;

public class VertexInterceptor {
    private final VertexRepository vertexRepository;
    private final RenderContext ctx;
    private final ModelView matrixStack;
    private final StencilManager stencilManager;

    // State.
    private final byte[] color = new byte[4];
    private final float[] texCoord = new float[2];

    // Buffers.
    private final byte[] colors = new byte[16];
    private final float[] texCoords = new float[8];
    private final float[] vertices = new float[8];

    // Total number of vertices since glBegin.
    private int vertexNum = 0;

    public VertexInterceptor(
            VertexRepository vertexRepository,
            RenderContext ctx,
            ModelView matrixStack,
            StencilManager stencilManager) {
        this.vertexRepository = vertexRepository;
        this.ctx = ctx;
        this.matrixStack = matrixStack;
        this.stencilManager = stencilManager;
    }

    public void glBegin(int mode) {
        asert(ctx.mode == GL11.GL_QUADS
                || ctx.mode == GL11.GL_QUAD_STRIP
                || ctx.mode == GL11.GL_TRIANGLES
                || ctx.mode == GL11.GL_TRIANGLE_STRIP
                || ctx.mode == GL11.GL_TRIANGLE_FAN);

        vertexNum = 0;
    }

    public void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        color[0] = red;
        color[1] = green;
        color[2] = blue;
        color[3] = alpha;
    }

    public void glColor3d(double red, double green, double blue) {
        color[0] = (byte) Math.round(red * 255.0);
        color[1] = (byte) Math.round(green * 255.0);
        color[2] = (byte) Math.round(blue * 255.0);
        color[3] = (byte) 255;
    }

    public void glTexCoord2f(float s, float t) {
        texCoord[0] = s;
        texCoord[1] = t;
    }

    public void glVertex2f(float x, float y) {
        asert(ctx.mode != -1);

        Matrix3f m = matrixStack.getMatrix();

        float u = x * m.m00 + y * m.m01 + m.m02;
        float v = x * m.m10 + y * m.m11 + m.m12;

        int idx = vertexIndex();

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
        commit();
    }

    public void glVertex3d(double x, double y, double z) {
        asert(z == 0);

        glVertex2f((float) x, (float) y);
    }

    /**
     * At which position in the buffer should the vertex be stored.
     */
    private int vertexIndex() {
        switch (ctx.mode) {
            case GL11.GL_QUADS:
                return vertexNum % 4;
            case GL11.GL_QUAD_STRIP:
                if (vertexNum < 2) {
                    // Initial Quad.
                    return vertexNum;
                } else {
                    // Subsequent Quads. Reverse the order of the vertex pair.
                    return (vertexNum + 1) % 2 + 2;
                }
            case GL11.GL_TRIANGLES:
                return vertexNum % 3;
            case GL11.GL_TRIANGLE_FAN, GL11.GL_TRIANGLE_STRIP:
                return Math.min(vertexNum, 2);
            default:
                return 0;
        }
    }

    private void commit() {
        if (vertexNum == 0) {
            return;
        }

        switch (ctx.mode) {
            case GL11.GL_QUADS:
                if (vertexNum % 4 == 0) {
                    commitQuad();
                }
                break;
            case GL11.GL_QUAD_STRIP:
                if (vertexNum >= 4 && vertexNum % 2 == 0) {
                    commitQuad();
                    rotateQuadStrip();
                }
                break;
            case GL11.GL_TRIANGLES:
                if (vertexNum % 3 == 0) {
                    commitTriangle();
                }
                break;
            case GL11.GL_TRIANGLE_FAN:
                if (vertexNum >= 3) {
                    commitTriangle();
                    rotateTriangleFan();
                }
                break;
            case GL11.GL_TRIANGLE_STRIP:
                if (vertexNum >= 3) {
                    commitTriangle();
                    rotateTriangleStrip();
                }
                break;
        }
    }

    private void commitQuad() {
        commitPrimitive(4);
    }

    private void commitTriangle() {
        commitPrimitive(3);
    }

    private void commitPrimitive(int vertexNum) {
        switch (stencilManager.getState()) {
            case REPLACE_0:
                // Drop vanilla draws designed to clear stencil buffer.
                return;
            case REPLACE_1:
                // Let stencil manager handle the mask drawing.
                stencilManager.addMask(colors, texCoords, vertices, vertexNum);
                break;
            default:
                vertexRepository.addVertices(ctx, colors, texCoords, vertices, vertexNum);
        }
    }

    private void rotateQuadStrip() {
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
    }

    private void rotateTriangleStrip() {
        float[] t = texCoords;
        float[] v = vertices;
        byte[] c = colors;

        if (vertexNum % 2 == 0) {
            t[2] = t[4];
            t[3] = t[5];

            v[2] = v[4];
            v[3] = v[5];

            c[4] = c[8];
            c[5] = c[9];
            c[6] = c[10];
            c[7] = c[11];
        } else {
            t[0] = t[4];
            t[1] = t[5];

            v[0] = v[4];
            v[1] = v[5];

            c[0] = c[8];
            c[1] = c[9];
            c[2] = c[10];
            c[3] = c[11];
        }
    }

    private void rotateTriangleFan() {
        float[] t = texCoords;
        t[2] = t[4];
        t[3] = t[5];

        float[] v = vertices;
        v[2] = v[4];
        v[3] = v[5];

        byte[] c = colors;
        c[4] = c[8];
        c[5] = c[9];
        c[6] = c[10];
        c[7] = c[11];
    }
}
