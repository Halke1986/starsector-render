package com.genir.renderer.bridge.impl;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix4f;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class VertexInterceptor {
    private final int BUFFER_SIZE = 1 << 16;
    private static final int VERTEX_SIZE = 3;
    private static final int COLOR_SIZE = 4;
    private static final int TEX_SIZE = 2;
    private static final int NORMAL_SIZE = 3;
    private static final int VERTEX_SIZE_2D = 2;
    private static final int STRIDE = VERTEX_SIZE + COLOR_SIZE + TEX_SIZE + NORMAL_SIZE;

    private final MatrixStack modelView;
    private final AttribManager attribManager;
    private final ClientAttribTracker clientAttribTracker;

    //
    private boolean shouldRegisterArrays = true;
    //    private boolean reorderDraw = false;
//
//    // State.
    private int mode = 0;
    private float red;
    private float green;
    private float blue;
    private float alpha;
    private float texS;
    private float texT;
    private float nx;
    private float ny;
    private float nz;

    // Total number of vertices since glBegin.
    private int cachedVertices = 0;

    // Draw buffers.
    private final float[] vertexScratchpad = new float[BUFFER_SIZE * STRIDE];
    private FloatBuffer vertexPointer = BufferUtils.createFloatBuffer(BUFFER_SIZE * STRIDE);
    private final FloatBuffer matrixBuffer = BufferUtils.createFloatBuffer(16);

    //    private final Map<ReorderedDrawContext, FloatBuffer> reorderBuffer = new HashMap<>();
//
    public VertexInterceptor(
            ClientAttribTracker clientAttribTracker,
            AttribManager attribManager,
            MatrixStack modelView) {
        this.clientAttribTracker = clientAttribTracker;
        this.attribManager = attribManager;
        this.modelView = modelView;
    }

    public void update() {
        registerDefaultVertexPointer();
    }

//    public void setReorderDraw(boolean reorder) {
//        reorderDraw = reorder;
//    }
//
//    public void commitLayer() {
//        int count = 0;
//        for (Map.Entry<ReorderedDrawContext, FloatBuffer> entry : reorderBuffer.entrySet()) {
//            FloatBuffer vertices = entry.getValue();
//            count += vertices.position() / STRIDE;
//        }
//
//        if (count == 0) {
//            return;
//        }
//
//        prepareVertexPointer(count);
//
//        for (Map.Entry<ReorderedDrawContext, FloatBuffer> entry : reorderBuffer.entrySet()) {
//            FloatBuffer vertexBatch = entry.getValue();
//            if (vertexBatch.position() == 0) {
//                continue;
//            }
//
//            ReorderedDrawContext ctx = entry.getKey();
//
//            final int batchMode = ctx.mode;
//            final int batchOffset = vertexPointer.position() / STRIDE;
//            final int batchCount = vertexBatch.position() / STRIDE;
//
//            vertexBatch.flip();
//            vertexPointer.put(vertexBatch);
//            vertexBatch.clear();
//
//            attribManager.forceReorderedDrawContext(ctx);
//            GL11.glDrawArrays(batchMode, batchOffset, batchCount);
//        }
//    }

    private void registerDefaultVertexPointer() {
        FloatBuffer p = vertexPointer;

        GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glEnableClientState(GL11.GL_NORMAL_ARRAY);
        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);

        GL11.glVertexPointer(VERTEX_SIZE, STRIDE * Float.BYTES, p.position(0));
        GL11.glColorPointer(COLOR_SIZE, STRIDE * Float.BYTES, p.position(p.position() + VERTEX_SIZE));
        GL11.glTexCoordPointer(TEX_SIZE, STRIDE * Float.BYTES, p.position(p.position() + COLOR_SIZE));
        GL11.glNormalPointer(STRIDE * Float.BYTES, p.position(p.position() + TEX_SIZE));

        shouldRegisterArrays = false;
    }

    public void arraysTouched() {
        shouldRegisterArrays = true;
    }

    public void glBegin(int mode) {
        this.mode = mode;
    }

    public void glEnd() {
        final int count = cachedVertices;

        if (count == 0) {
            return;
//        } else if (reorderDraw) {
//            storeReorderedDraw(mode, count);
        } else if (mode == GL11.GL_LINE_LOOP || mode == GL11.GL_LINE_STRIP) {
            drawLine(mode, count);
        } else {
            drawAsArray(mode, count);
        }

        cachedVertices = 0;
    }

    public void glColor4f(float red, float green, float blue, float alpha) {
        this.red = red;
        this.green = green;
        this.blue = blue;
        this.alpha = alpha;
    }

    public void glTexCoord2f(float s, float t) {
        texS = s;
        texT = t;
    }

    public void glNormal3f(float nx, float ny, float nz) {
        this.nx = nx;
        this.ny = ny;
        this.nz = nz;
    }

    public void glVertex3f(float x, float y, float z) {
        int offset = cachedVertices * STRIDE;

        Matrix4f m = modelView.getMatrix();

        // Transform vertices;
        float xt = x * m.m00 + y * m.m01 + z * m.m02 + m.m03;
        float yt = x * m.m10 + y * m.m11 + z * m.m12 + m.m13;
        float zt = x * m.m20 + y * m.m21 + z * m.m22 + m.m23;

        // Transform normals.
        // Assume model view is just rotations and translations, no shear or scale.
        // Otherwise, the upper left 3x3 part of transformation matrix would have
        // to be inversed and transposed first.
        float nxt = nx * m.m00 + ny * m.m01 + nz * m.m02;
        float nyt = nx * m.m10 + ny * m.m11 + nz * m.m12;
        float nzt = nx * m.m20 + ny * m.m21 + nz * m.m22;

        vertexScratchpad[offset + 0] = xt;
        vertexScratchpad[offset + 1] = yt;
        vertexScratchpad[offset + 2] = zt;

        // Define vertex color.
        vertexScratchpad[offset + 3] = red;
        vertexScratchpad[offset + 4] = green;
        vertexScratchpad[offset + 5] = blue;
        vertexScratchpad[offset + 6] = alpha;

        // Define vertex texture.
        vertexScratchpad[offset + 7] = texS;
        vertexScratchpad[offset + 8] = texT;

        vertexScratchpad[offset + 9] = nxt;
        vertexScratchpad[offset + 10] = nyt;
        vertexScratchpad[offset + 11] = nzt;

        cachedVertices++;
    }

    public Runnable recordGlDrawArrays(int mode, int first, int count) {
        // Vertex array snapshot. Not required if vertices are defined via VBO.
        FloatBuffer vertexSnapshot = null;
        FloatBuffer vertexPointer = clientAttribTracker.getVertexPointer();
        if (vertexPointer != null && clientAttribTracker.getEnableVertexArray()) {
            vertexSnapshot = BufferUtil.snapshot(vertexPointer);
        }

        // Texture array snapshot.
        FloatBuffer texCoordSnapshot = null;
        FloatBuffer texCoordPointer = clientAttribTracker.getTexCoordPointer();
        if (texCoordPointer != null && clientAttribTracker.getEnableTexCoordArray()) {
            texCoordSnapshot = BufferUtil.snapshot(texCoordPointer);
        }

        // Color array snapshot.
        ByteBuffer colorSnapshot = null;
        ByteBuffer colorPointer = clientAttribTracker.getColorPointer();
        if (colorPointer != null && clientAttribTracker.getEnableColorArray()) {
            colorSnapshot = BufferUtil.snapshot(colorPointer);
        }

        record recordedGlDrawArrays(
                int mode,
                int first,
                int count,
                FloatBuffer vertexSnapshot,
                FloatBuffer texCoordSnapshot,
                ByteBuffer colorSnapshot,
                boolean enableColorArray,
                VertexInterceptor parent) implements Runnable {
            @Override
            public void run() {
                parent.arraysTouched();

                if (enableColorArray) {
                    GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
                } else {
                    // Define color if GL_COLOR_ARRAY is disabled.
                    GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
                    GL11.glColor4f(parent.red, parent.green, parent.blue, parent.alpha);
                }

                if (vertexSnapshot != null) {
                    GL11.glVertexPointer(VERTEX_SIZE_2D, 0, vertexSnapshot);
                }

                if (texCoordSnapshot != null) {
                    GL11.glTexCoordPointer(TEX_SIZE, 0, texCoordSnapshot);
                }

                if (colorSnapshot != null) {
                    GL11.glColorPointer(COLOR_SIZE, GL11.GL_UNSIGNED_BYTE, 0, colorSnapshot);
                }

                parent.attribManager.applyEnableAndColorBufferBit();
                parent.attribManager.forceMatrixMode(GL11.GL_MODELVIEW);

                parent.matrixBuffer.clear();
                parent.modelView.getMatrix().storeTranspose(parent.matrixBuffer);
                parent.matrixBuffer.flip();

                // Draw.
                GL11.glMultMatrix(parent.matrixBuffer);
                GL11.glDrawArrays(mode, first, count);
                GL11.glLoadIdentity();
            }
        }

        return new recordedGlDrawArrays(mode,
                first,
                count,
                vertexSnapshot,
                texCoordSnapshot,
                colorSnapshot,
                clientAttribTracker.getEnableColorArray(),
                this);
    }

//
//    private void storeReorderedDraw(int mode, int count) {
//        ReorderedDrawContext ctx = attribManager.getReorderedDrawContext(mode);
//
//        // Create buffer if absent.
//        FloatBuffer vertexPointer = reorderBuffer.get(ctx);
//        if (vertexPointer == null) {
//            vertexPointer = BufferUtils.createFloatBuffer(STRIDE);
//            reorderBuffer.put(ctx, vertexPointer);
//        }
//
//        // Resize buffer if necessary.
//        int capacityRequired = capacityRequired(vertexPointer, count * STRIDE);
//        if (capacityRequired > 0) {
//            vertexPointer = BufferUtil.reallocate(capacityRequired, vertexPointer);
//            reorderBuffer.put(ctx, vertexPointer);
//        }
//
//        vertexPointer.put(vertexScratchpad, 0, count * STRIDE);
//    }

    /**
     * GL11.GL_LINE_LOOP and GL11.GL_LINE_STRIP cannot be converted from
     * a glBegin()/glEnd() block into glDrawArrays using the standard approach,
     * because that triggers Intel driver bugs and can produce malformed geometry.
     * Instead, LINE primitives are batched into a dedicated buffer without texCoords
     * or normals.
     */
    private void drawLine(int mode, int count) {
        final int LINE_STRIDE = VERTEX_SIZE + COLOR_SIZE;

        vertexPointer.clear();
        for (int i = 0; i < count; i++) {
            vertexPointer.put(vertexScratchpad, i * STRIDE, LINE_STRIDE);
        }

        arraysTouched();

        GL11.glVertexPointer(VERTEX_SIZE, LINE_STRIDE * Float.BYTES, vertexPointer.position(0));
        GL11.glColorPointer(COLOR_SIZE, LINE_STRIDE * Float.BYTES, vertexPointer.position(VERTEX_SIZE));

        attribManager.applyEnableAndColorBufferBit();
        GL11.glDrawArrays(mode, 0, count);
    }

    /**
     * Draw vertices recorded in glBegin/glEnd block using glDrawArrays command.
     */
    private void drawAsArray(int mode, int count) {
        if (shouldRegisterArrays) {
            registerDefaultVertexPointer();
        }

        vertexPointer.clear();
        vertexPointer.put(vertexScratchpad, 0, count * STRIDE);

        attribManager.applyEnableAndColorBufferBit();
        GL11.glDrawArrays(mode, 0, count);
    }
}
