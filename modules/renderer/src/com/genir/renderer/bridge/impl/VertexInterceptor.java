package com.genir.renderer.bridge.impl;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix4f;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Map;

public class VertexInterceptor {
    private static final int VERTEX_SIZE = 3;
    private static final int COLOR_SIZE = 4;
    private static final int TEX_SIZE = 4;
    private static final int NORMAL_SIZE = 3;
    private static final int VERTEX_SIZE_2D = 2;
    private static final int STRIDE = VERTEX_SIZE + COLOR_SIZE + TEX_SIZE + NORMAL_SIZE;

    private final TransformManager transformManager;
    private final AttribManager attribManager;
    private final ClientAttribTracker clientAttribTracker;

    private boolean shouldRegisterArrays = true;
    private boolean reorderDraw = false;

    // State.
    private int mode = 0;
    private float red;
    private float green;
    private float blue;
    private float alpha;
    private float texS;
    private float texT;
    private float texR;
    private float texQ;
    private float nx;
    private float ny;
    private float nz;

    // Total number of vertices since glBegin.
    private int cachedVertices = 0;

    // Draw buffers.
    private float[] vertexScratchpad = new float[STRIDE];
    private FloatBuffer defaultVertexPointer = BufferUtils.createFloatBuffer(STRIDE);
    private final Map<ReorderedDrawContext, FloatBuffer> reorderBuffer = new HashMap<>();

    // Recorded array draw buffers.
    private ByteBuffer texCoordPointer = BufferUtils.createByteBuffer(0);
    private ByteBuffer vertexPointer = BufferUtils.createByteBuffer(0);
    private ByteBuffer colorPointer = BufferUtils.createByteBuffer(0);

    public VertexInterceptor(
            ClientAttribTracker clientAttribTracker,
            AttribManager attribManager,
            TransformManager transformManager) {
        this.clientAttribTracker = clientAttribTracker;
        this.attribManager = attribManager;
        this.transformManager = transformManager;
    }

    public void update() {
        registerDefaultVertexPointer();
    }

    public void setReorderDraw(boolean reorder) {
        reorderDraw = reorder;
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
        } else if (reorderDraw) {
            storeReorderedDraw(mode, count);
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

    public void glTexCoord4f(float s, float t, float r, float q) {
        texS = s;
        texT = t;
        texR = r;
        texQ = q;
    }

    public void glNormal3f(float nx, float ny, float nz) {
        this.nx = nx;
        this.ny = ny;
        this.nz = nz;
    }

    public void glVertex3f(float x, float y, float z) {
        Matrix4f m = transformManager.getCPUModelView();

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

        // Prepare vertext scratchpad.
        int offset = cachedVertices * STRIDE;
        if (vertexScratchpad.length <= offset) {
            vertexScratchpad = BufferUtil.reallocate(vertexScratchpad.length * 2, vertexScratchpad);
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

        // Vertex normal.
        vertexScratchpad[offset + 11] = nxt;
        vertexScratchpad[offset + 12] = nyt;
        vertexScratchpad[offset + 13] = nzt;

        cachedVertices++;
    }

    public void commitLayer() {
        for (Map.Entry<ReorderedDrawContext, FloatBuffer> entry : reorderBuffer.entrySet()) {
            FloatBuffer vertexBatch = entry.getValue();
            if (vertexBatch.position() == 0) {
                continue;
            }

            ReorderedDrawContext ctx = entry.getKey();

            final int batchMode = ctx.mode;
            final int batchCount = vertexBatch.position() / STRIDE;

            prepareDefaultVertexPointer(batchCount);

            vertexBatch.flip();
            defaultVertexPointer.put(vertexBatch);
            vertexBatch.clear();

            attribManager.forceReorderedDrawContext(ctx);
            GL11.glDrawArrays(batchMode, 0, batchCount);
        }
    }

    private void storeReorderedDraw(int mode, int count) {
        ReorderedDrawContext ctx = attribManager.getReorderedDrawContext(mode);

        // Create buffer if absent.
        FloatBuffer vertexPointer = reorderBuffer.get(ctx);
        if (vertexPointer == null) {
            vertexPointer = BufferUtils.createFloatBuffer(STRIDE);
            reorderBuffer.put(ctx, vertexPointer);
        }

        // Resize buffer if necessary.
        int capacityRequired = BufferUtil.capacityRequired(vertexPointer, count * STRIDE);
        if (capacityRequired > 0) {
            vertexPointer = BufferUtil.reallocate(capacityRequired, vertexPointer);
            reorderBuffer.put(ctx, vertexPointer);
        }

        vertexPointer.put(vertexScratchpad, 0, count * STRIDE);
    }

    public Runnable glDrawArraysWithContext(Runnable drawArraysCommand) { // Main thread
        // Vertex array snapshot.
        final ArrayPointer vertexPointer = clientAttribTracker.getVertexPointer();
        final ArraySnapshot vertexSnapshot = (clientAttribTracker.getEnableVertexArray()) ?
                vertexPointer.getSnapshot() : null;

        // Texture array snapshot.
        final ArrayPointer texCoordPointer = clientAttribTracker.getTexCoordPointer();
        final ArraySnapshot texCoordSnapshot = (clientAttribTracker.getEnableTexCoordArray()) ?
                texCoordPointer.getSnapshot() : null;

        // Color array snapshot.
        final ArrayPointer colorPointer = clientAttribTracker.getColorPointer();
        final ArraySnapshot colorSnapshot = (clientAttribTracker.getEnableColorArray()) ?
                colorPointer.getSnapshot() : null;

        return () -> drawRecordedArray(
                drawArraysCommand,
                vertexSnapshot,
                texCoordSnapshot,
                colorSnapshot);
    }

    private void drawRecordedArray(
            Runnable drawArraysCommand,
            ArraySnapshot vs,
            ArraySnapshot ts,
            ArraySnapshot cs
    ) {
        arraysTouched();

        // Vertex array.
        if (vs != null) {
            GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);

            if (vs.snapshot() != null) {
                if (vertexPointer.capacity() < vs.bytes()) {
                    vertexPointer = BufferUtils.createByteBuffer(vs.bytes());
                }

                vs.store(vertexPointer.clear());
                GL11.glVertexPointer(vs.size(), vs.type(), vs.stride(), vertexPointer.flip()); // Legacy
            }
        } else {
            GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
        }

        // Texture array.
        if (ts != null) {
            GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

            if (ts.snapshot() != null) {
                if (texCoordPointer.capacity() < ts.bytes()) {
                    texCoordPointer = BufferUtils.createByteBuffer(ts.bytes());
                }

                ts.store(texCoordPointer.clear());
                GL11.glTexCoordPointer(ts.size(), ts.type(), ts.stride(), texCoordPointer.flip()); // Legacy
            }
        } else {
            GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        }

        // Color array.
        if (cs != null) {
            GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);

            if (cs.snapshot() != null) {
                if (colorPointer.capacity() < cs.bytes()) {
                    colorPointer = BufferUtils.createByteBuffer(cs.bytes());
                }

                cs.store(colorPointer.clear());
                GL11.glColorPointer(cs.size(), cs.type(), cs.stride(), colorPointer.flip()); // Legacy
            }
        } else {
            // Define color if GL_COLOR_ARRAY is disabled.
            GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
            GL11.glColor4f(red, green, blue, alpha);
        }

        // Normal array.
        GL11.glDisableClientState(GL11.GL_NORMAL_ARRAY);

        // Move model transformation from CPU to GPU.
        // The vertex array is stored in object/local space rather than pre-transformed
        // into model space, since the model matrix can change every time the array is drawn.
        // Applying the transformation on the GPU avoids repeatedly un-packing the array,
        // transforming vertices on the CPU, and re-packing the data for each draw call.
        transformManager.setGPUModelView();

        // Draw.
        attribManager.applyDrawAttribs();
        drawArraysCommand.run();

        // Move model transformation back to CPU.
        transformManager.setCPUModelView();
    }

    /**
     * GL11.GL_LINE_LOOP and GL11.GL_LINE_STRIP cannot be converted from
     * a glBegin()/glEnd() block into glDrawArrays using the standard approach,
     * because that triggers Intel driver bugs and can produce malformed geometry.
     * Instead, LINE primitives are batched into a dedicated buffer without texCoords
     * or normals.
     */
    private void drawLine(int mode, int count) {
        final int LINE_STRIDE = VERTEX_SIZE + COLOR_SIZE;

        prepareDefaultVertexPointer(count);
        for (int i = 0; i < count; i++) {
            defaultVertexPointer.put(vertexScratchpad, i * STRIDE, LINE_STRIDE);
        }

        arraysTouched();

        GL11.glVertexPointer(VERTEX_SIZE, LINE_STRIDE * Float.BYTES, defaultVertexPointer.position(0));
        GL11.glColorPointer(COLOR_SIZE, LINE_STRIDE * Float.BYTES, defaultVertexPointer.position(VERTEX_SIZE));

        attribManager.applyDrawAttribs();
        GL11.glDrawArrays(mode, 0, count);
    }

    /**
     * Draw vertices recorded in glBegin/glEnd block using glDrawArrays command.
     */
    private void drawAsArray(int mode, int count) {
        prepareDefaultVertexPointer(count);
        defaultVertexPointer.put(vertexScratchpad, 0, count * STRIDE);

        attribManager.applyDrawAttribs();
        GL11.glDrawArrays(mode, 0, count);
    }

    private void prepareDefaultVertexPointer(int count) {
        int capacityRequired = count * STRIDE;
        if (defaultVertexPointer.capacity() < capacityRequired) {
            defaultVertexPointer = BufferUtils.createFloatBuffer(capacityRequired);
            registerDefaultVertexPointer();
        }

        if (shouldRegisterArrays) {
            registerDefaultVertexPointer();
        }

        defaultVertexPointer.clear();
    }

    private void registerDefaultVertexPointer() {
        FloatBuffer p = defaultVertexPointer;

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
}
