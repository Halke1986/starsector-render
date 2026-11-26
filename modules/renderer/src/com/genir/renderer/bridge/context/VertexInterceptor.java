package com.genir.renderer.bridge.context;

import com.genir.renderer.debug.Assert;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL13;

import java.nio.FloatBuffer;
import java.util.Arrays;

public class VertexInterceptor {
    public static final int VERTEX_SIZE = 3;
    public static final int COLOR_SIZE = 4;
    public static final int TEX0_SIZE = 2;
    public static final int TEX0_SEPARATE_SIZE = 4;
    public static final int TEX1_SIZE = 2;
    public static final int NORMAL_SIZE = 3;
    public static final int STRIDE = VERTEX_SIZE + COLOR_SIZE + TEX0_SEPARATE_SIZE + TEX1_SIZE + NORMAL_SIZE;

    public static final int VERTEX_FLAG = 1;
    public static final int COLOR_FLAG = 2;
    public static final int TEX0_FLAG = 4;
    public static final int TEX0_SEPARATE_FLAG = 8;
    public static final int TEX1_FLAG = 16;
    public static final int NORMAL_FLAG = 32;

    // GL State.
    private final MatrixManager matrixManager;
    private final AttribManager attribManager;

    // State.
    private int mode = 0;
    private int arrayFlags = 0;
    private int expectedArrayFlags = 0;

    // Color.
    private float red;
    private float green;
    private float blue;
    private float alpha;

    // Texture.
    private float texS;
    private float texT;
    private float texR;
    private float texQ;
    private float texS1;
    private float texT1;

    // Normal.
    private float nx;
    private float ny;
    private float nz;

    // Total number of vertices since glBegin.
    private int cachedVertices = 0;

    // Draw buffers.
    private float[] vertexScratchpad = new float[STRIDE];
    private FloatBuffer primaryVertexPointer = BufferUtils.createFloatBuffer(STRIDE);

    public VertexInterceptor(AttribManager attribManager, MatrixManager matrixManager) {
        this.attribManager = attribManager;
        this.matrixManager = matrixManager;
    }

    public void update() {
        arraysTouched();
    }

    public void arraysTouched() {
        arrayFlags = 0;
    }

    //
    // GL calls.
    //

    public void glBegin(int mode) {
        this.mode = mode;
        this.expectedArrayFlags = VERTEX_FLAG | COLOR_FLAG;
    }

    public void glEnd() {
        final int count = cachedVertices;

        if (count == 0) {
            return;
        } else {
            drawAsArray(count);
        }

        cachedVertices = 0;
    }

    public void glColor4f(float red, float green, float blue, float alpha) {
        this.red = red;
        this.green = green;
        this.blue = blue;
        this.alpha = alpha;
    }

    public void glTexCoord4f(float s, float t, float r, float q) {
        this.texS = s;
        this.texT = t;
        this.texR = r;
        this.texQ = q;

        this.expectedArrayFlags |= TEX0_FLAG;
        if (r != 0f || q != 1f) {
            this.expectedArrayFlags = TEX0_SEPARATE_FLAG;
        }
    }

    public void glMultiTexCoord2f(int target, float s, float t) {
        Assert.supported(target, GL13.GL_TEXTURE1, "glMultiTexCoord2f$target");

        this.texS1 = s;
        this.texT1 = t;

        this.expectedArrayFlags |= TEX1_FLAG;
    }

    public void glNormal3f(float nx, float ny, float nz) {
        this.nx = nx;
        this.ny = ny;
        this.nz = nz;

        this.expectedArrayFlags |= NORMAL_FLAG;
    }

    public void glVertex3f(float x, float y, float z) {
        Matrix m = matrixManager.getCPUModelView();

        // Transform vertices;
        float xt = x * m.m00 + y * m.m01 + z * m.m02 + m.m03;
        float yt = x * m.m10 + y * m.m11 + z * m.m12 + m.m13;
        float zt = x * m.m20 + y * m.m21 + z * m.m22 + m.m23;

        // Prepare vertex scratchpad.
        int offset = cachedVertices * STRIDE;
        while (vertexScratchpad.length <= offset + STRIDE) {
            vertexScratchpad = Arrays.copyOf(vertexScratchpad, vertexScratchpad.length * 2);
        }

        // Vertex.
        vertexScratchpad[offset + 0] = xt;
        vertexScratchpad[offset + 1] = yt;
        vertexScratchpad[offset + 2] = zt;

        // Vertex color.
        vertexScratchpad[offset + 3] = red;
        vertexScratchpad[offset + 4] = green;
        vertexScratchpad[offset + 5] = blue;
        vertexScratchpad[offset + 6] = alpha;

        // Vertex texture.
        vertexScratchpad[offset + 7] = texS;
        vertexScratchpad[offset + 8] = texT;
        vertexScratchpad[offset + 9] = texR;
        vertexScratchpad[offset + 10] = texQ;

        // Vertex texture unit 1.
        vertexScratchpad[offset + 11] = texS1;
        vertexScratchpad[offset + 12] = texT1;

        if ((expectedArrayFlags & NORMAL_FLAG) != 0) {
            // Transform normals.
            // Assume model view is just rotations and translations, no shear or scale.
            // Otherwise, the upper left 3x3 part of transformation matrix would have
            // to be inversed and transposed first.
            float nxt = nx * m.m00 + ny * m.m01 + nz * m.m02;
            float nyt = nx * m.m10 + ny * m.m11 + nz * m.m12;
            float nzt = nx * m.m20 + ny * m.m21 + nz * m.m22;

            // Vertex normal.
            vertexScratchpad[offset + 13] = nxt;
            vertexScratchpad[offset + 14] = nyt;
            vertexScratchpad[offset + 15] = nzt;
        }

        cachedVertices++;
    }

    //
    // Draw.
    //

    public float[] borrowVertexScratchpad(int vertices) {
        while (vertexScratchpad.length <= vertices * STRIDE) {
            vertexScratchpad = Arrays.copyOf(vertexScratchpad, vertexScratchpad.length * 2);
        }

        return vertexScratchpad;
    }

    public void drawExternalArray(int mode, float[] externalScratchpad, int vertexCount, int flags) {
        prepareVertexPointers(vertexCount, flags);
        primaryVertexPointer.put(0, externalScratchpad, 0, vertexCount * STRIDE);

        org.lwjgl.opengl.GL11.glDrawArrays(mode, 0, vertexCount);
    }

    /**
     * Draw vertices recorded in glBegin/glEnd block using glDrawArrays command.
     */
    private void drawAsArray(int count) {
        prepareVertexPointers(count, expectedArrayFlags);
        primaryVertexPointer.put(0, vertexScratchpad, 0, count * STRIDE);

        attribManager.applyDrawAttribs();
        org.lwjgl.opengl.GL11.glDrawArrays(mode, 0, count);
    }

    private void prepareVertexPointers(int count, int requiredFlags) {
        boolean wasResized = false;
        int capacityRequired = count * STRIDE;
        if (primaryVertexPointer.capacity() < capacityRequired) {
            primaryVertexPointer = BufferUtils.createFloatBuffer(capacityRequired);
            wasResized = true;
        }

        if (!wasResized && arrayFlags == requiredFlags) {
            return;
        }

        prepareVertexPointersGL(wasResized, requiredFlags);

        arrayFlags = requiredFlags;
    }

    private void prepareVertexPointersGL(boolean wasResized, int requiredFlags) {
        FloatBuffer p = primaryVertexPointer;

        // Vertex.
        if (wasResized || (arrayFlags & VERTEX_FLAG) != (requiredFlags & VERTEX_FLAG)) {
            if ((requiredFlags & VERTEX_FLAG) != 0) {
                org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
                ClientArray.glVertexPointer(VERTEX_SIZE, STRIDE * Float.BYTES, p.position(0));
            } else {
                org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
            }
        }

        // Color.
        if (wasResized || (arrayFlags & COLOR_FLAG) != (requiredFlags & COLOR_FLAG)) {
            if ((requiredFlags & COLOR_FLAG) != 0) {
                org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
                ClientArray.glColorPointer(COLOR_SIZE, STRIDE * Float.BYTES, p.position(VERTEX_SIZE));
            } else {
                org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
                org.lwjgl.opengl.GL11.glColor4f(red, green, blue, alpha);
            }
        }

        // Texture Unit 0. Using only the required texture coordinate size prevents visual artifacts in certain rare scenarios.
        if (wasResized || (arrayFlags & TEX0_FLAG) != (requiredFlags & TEX0_FLAG) || (arrayFlags & TEX0_SEPARATE_FLAG) != (requiredFlags & TEX0_SEPARATE_FLAG)) {
            int prevActiveTex = org.lwjgl.opengl.GL11.glGetInteger(GL13.GL_CLIENT_ACTIVE_TEXTURE);
            org.lwjgl.opengl.GL13.glClientActiveTexture(GL13.GL_TEXTURE0);

            if ((requiredFlags & TEX0_FLAG) != 0 || (requiredFlags & TEX0_SEPARATE_FLAG) != 0) {
                org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
                int size = (requiredFlags & TEX0_SEPARATE_FLAG) != 0 ? TEX0_SEPARATE_SIZE : TEX0_SIZE;
                ClientArray.glTexCoordPointer(size, STRIDE * Float.BYTES, p.position(VERTEX_SIZE + COLOR_SIZE));
            } else {
                org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
            }

            org.lwjgl.opengl.GL13.glClientActiveTexture(prevActiveTex);
        }

        // Texture Unit 1.
        if (wasResized || (arrayFlags & TEX1_FLAG) != (requiredFlags & TEX1_FLAG)) {
            int prevActiveTex = org.lwjgl.opengl.GL11.glGetInteger(GL13.GL_CLIENT_ACTIVE_TEXTURE);
            org.lwjgl.opengl.GL13.glClientActiveTexture(GL13.GL_TEXTURE1);

            if ((requiredFlags & TEX1_FLAG) != 0) {
                org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
                ClientArray.glTexCoordPointer(TEX1_SIZE, STRIDE * Float.BYTES, p.position(VERTEX_SIZE + COLOR_SIZE + TEX0_SEPARATE_SIZE));
            } else {
                org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
            }

            org.lwjgl.opengl.GL13.glClientActiveTexture(prevActiveTex);
        }

        // Normal.
        if (wasResized || (arrayFlags & NORMAL_FLAG) != (requiredFlags & NORMAL_FLAG)) {
            if ((requiredFlags & NORMAL_FLAG) != 0) {
                org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_NORMAL_ARRAY);
                ClientArray.glNormalPointer(STRIDE * Float.BYTES, p.position(VERTEX_SIZE + COLOR_SIZE + TEX0_SEPARATE_SIZE + TEX1_SIZE));
            } else {
                org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_NORMAL_ARRAY);
            }
        }
    }
}
