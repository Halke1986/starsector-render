package com.genir.renderer.bridge.context;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix4f;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Map;

import static com.genir.renderer.debug.Debug.asert;

public class VertexInterceptor {
    private static final int VERTEX_SIZE = 3;
    private static final int COLOR_SIZE = 4;
    private static final int TEX_SIZE = 4;
    private static final int NORMAL_SIZE = 3;
    private static final int VERTEX_SIZE_2D = 2;
    private static final int STRIDE_DEFAULT = VERTEX_SIZE + COLOR_SIZE + TEX_SIZE;
    private static final int STRIDE_NORMAL = STRIDE_DEFAULT + NORMAL_SIZE;

    private static final int ARRAY_UNDEFINED = 0;
    private static final int ARRAY_DEFAULT = 1;
    private static final int ARRAY_NORMAL = 2;

    private final TransformManager transformManager;
    private final AttribManager attribManager;

    private int registeredArrayType = ARRAY_UNDEFINED;
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
    private boolean hasNormal = false;

    // Total number of vertices since glBegin.
    private int cachedVertices = 0;

    // Draw buffers.
    private float[] vertexScratchpad = new float[1];
    private FloatBuffer primaryVertexPointer = BufferUtils.createFloatBuffer(STRIDE_NORMAL);
    private final Map<ReorderedDrawContext, FloatBuffer> reorderBuffer = new HashMap<>();

    // Recorded array draw buffers.
    private ByteBuffer texCoordPointer = BufferUtils.createByteBuffer(0);
    private ByteBuffer vertexPointer = BufferUtils.createByteBuffer(0);
    private ByteBuffer colorPointer = BufferUtils.createByteBuffer(0);

    public VertexInterceptor(AttribManager attribManager, TransformManager transformManager) {
        this.attribManager = attribManager;
        this.transformManager = transformManager;
    }

    public void update() {
        registeredArrayType = ARRAY_UNDEFINED;
    }

    public void arraysTouched() {
        registeredArrayType = ARRAY_UNDEFINED;
    }

    public void setReorderDraw(boolean reorder) {
        reorderDraw = reorder;
    }

    public void glBegin(int mode) {
        this.mode = mode;
        this.hasNormal = false;
    }

    public void glEnd() {
        final int count = cachedVertices;

        if (count == 0) {
            return;
        } else if (reorderDraw) {
            storeReorderedDraw(mode, count);
        } else if (mode == GL11.GL_LINE_LOOP || mode == GL11.GL_LINE_STRIP) {
            drawLine(mode, count);
        } else if (hasNormal) {
            drawAsArrayWithNormals(mode, count);
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
        this.texS = s;
        this.texT = t;
        this.texR = r;
        this.texQ = q;
    }

    public void glNormal3f(float nx, float ny, float nz) {
        this.hasNormal = true;

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

        // Prepare vertext scratchpad.
        int stride = hasNormal ? STRIDE_NORMAL : STRIDE_DEFAULT;
        int offset = cachedVertices * stride;
        while (vertexScratchpad.length <= offset + stride) {
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

        if (hasNormal) {
            // Normals are not handled for reordered draws.
            asert(!reorderDraw);

            // Transform normals.
            // Assume model view is just rotations and translations, no shear or scale.
            // Otherwise, the upper left 3x3 part of transformation matrix would have
            // to be inversed and transposed first.
            float nxt = nx * m.m00 + ny * m.m01 + nz * m.m02;
            float nyt = nx * m.m10 + ny * m.m11 + nz * m.m12;
            float nzt = nx * m.m20 + ny * m.m21 + nz * m.m22;

            // Vertex normal.
            vertexScratchpad[offset + 11] = nxt;
            vertexScratchpad[offset + 12] = nyt;
            vertexScratchpad[offset + 13] = nzt;
        }

        cachedVertices++;
    }

    public void commitLayer(Context context, float[] args, int offset) {
        for (Map.Entry<ReorderedDrawContext, FloatBuffer> entry : reorderBuffer.entrySet()) {
            FloatBuffer vertexBatch = entry.getValue();
            if (vertexBatch.position() == 0) {
                continue;
            }

            ReorderedDrawContext ctx = entry.getKey();

            final int batchMode = ctx.mode;
            final int batchCount = vertexBatch.position() / STRIDE_DEFAULT;

            prepareDefaultVertexPointer(batchCount);

            vertexBatch.flip();
            primaryVertexPointer.put(vertexBatch);
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
            vertexPointer = BufferUtils.createFloatBuffer(STRIDE_DEFAULT);
            reorderBuffer.put(ctx, vertexPointer);
        }

        // Resize buffer if necessary.
        int capacityRequired = BufferUtil.capacityRequired(vertexPointer, count * STRIDE_DEFAULT);
        if (capacityRequired > 0) {
            vertexPointer = BufferUtil.reallocate(capacityRequired, vertexPointer);
            reorderBuffer.put(ctx, vertexPointer);
        }

        vertexPointer.put(vertexScratchpad, 0, count * STRIDE_DEFAULT);
    }

    public void drawRecordedArrays(Runnable drawArraysCommand, ClientAttribTracker.ArrayPointersSnapshot snapshot) {
        registeredArrayType = ARRAY_UNDEFINED;

        // Vertex array.
        final ArraySnapshot vs = snapshot.vertex();
        if (vs != null) {
            GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);

            if (vs.snapshot() != null) {
                vertexPointer = restoreSnapshot(vs, vertexPointer);
                GL11.glVertexPointer(vs.size(), vs.type(), vs.stride(), vertexPointer);
            }
        } else {
            GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
        }

        // Texture array.
        final ArraySnapshot ts = snapshot.texCoord();
        if (ts != null) {
            GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

            if (ts.snapshot() != null) {
                texCoordPointer = restoreSnapshot(ts, texCoordPointer);
                GL11.glTexCoordPointer(ts.size(), ts.type(), ts.stride(), texCoordPointer);
            }
        } else {
            GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        }

        // Color array.
        final ArraySnapshot cs = snapshot.color();
        if (cs != null) {
            GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);

            if (cs.snapshot() != null) {
                colorPointer = restoreSnapshot(cs, colorPointer);
                GL11.glColorPointer(cs.size(), cs.type(), cs.stride(), colorPointer);
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
        transformManager.setGPUMode();

        // Draw.
        attribManager.applyDrawAttribs();
        drawArraysCommand.run();

        // Move model transformation back to CPU.
        transformManager.setCPUMode();
    }

    private ByteBuffer restoreSnapshot(ArraySnapshot snapshot, ByteBuffer pointer) {
        if (pointer.capacity() < snapshot.bytes()) {
            pointer = BufferUtils.createByteBuffer(snapshot.bytes());
        }

        snapshot.store(pointer.clear());
        return pointer.flip();
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

        int capacityRequired = count * LINE_STRIDE;
        if (primaryVertexPointer.capacity() < capacityRequired) {
            primaryVertexPointer = BufferUtils.createFloatBuffer(capacityRequired);
        }

        // Compress the data by skipping texCoord section. Assume normal section was not used.
        primaryVertexPointer.clear();
        for (int i = 0; i < count; i++) {
            primaryVertexPointer.put(vertexScratchpad, i * STRIDE_DEFAULT, LINE_STRIDE);
        }

        registeredArrayType = ARRAY_UNDEFINED;

        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
        GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);

        GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glDisableClientState(GL11.GL_NORMAL_ARRAY);

        GL11.glVertexPointer(VERTEX_SIZE, LINE_STRIDE * Float.BYTES, primaryVertexPointer.position(0));
        GL11.glColorPointer(COLOR_SIZE, LINE_STRIDE * Float.BYTES, primaryVertexPointer.position(VERTEX_SIZE));

        attribManager.applyDrawAttribs();
        GL11.glDrawArrays(mode, 0, count);
    }

    /**
     * Draw vertices recorded in glBegin/glEnd block using glDrawArrays command.
     */
    private void drawAsArray(int mode, int count) {
        prepareDefaultVertexPointer(count);
        primaryVertexPointer.put(vertexScratchpad, 0, count * STRIDE_DEFAULT);

        attribManager.applyDrawAttribs();
        GL11.glDrawArrays(mode, 0, count);
    }

    private void drawAsArrayWithNormals(int mode, int count) {
        prepareNormalVertexPointer(count);
        primaryVertexPointer.put(vertexScratchpad, 0, count * STRIDE_NORMAL);

        attribManager.applyDrawAttribs();
        GL11.glDrawArrays(mode, 0, count);
    }

    private void prepareDefaultVertexPointer(int count) {
        boolean resized = false;

        int capacityRequired = count * STRIDE_DEFAULT;
        if (primaryVertexPointer.capacity() < capacityRequired) {
            primaryVertexPointer = BufferUtils.createFloatBuffer(capacityRequired);
            resized = true;
        }

        if (registeredArrayType != ARRAY_DEFAULT) {
            GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
            GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
            GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
            GL11.glDisableClientState(GL11.GL_NORMAL_ARRAY);
        }

        if (registeredArrayType != ARRAY_DEFAULT || resized) {
            FloatBuffer p = primaryVertexPointer;

            GL11.glVertexPointer(VERTEX_SIZE, STRIDE_DEFAULT * Float.BYTES, p.position(0));
            GL11.glColorPointer(COLOR_SIZE, STRIDE_DEFAULT * Float.BYTES, p.position(VERTEX_SIZE));
            GL11.glTexCoordPointer(TEX_SIZE, STRIDE_DEFAULT * Float.BYTES, p.position(VERTEX_SIZE + COLOR_SIZE));
        }

        registeredArrayType = ARRAY_DEFAULT;
        primaryVertexPointer.clear();
    }

    private void prepareNormalVertexPointer(int count) {
        boolean resized = false;

        int capacityRequired = count * STRIDE_NORMAL;
        if (primaryVertexPointer.capacity() < capacityRequired) {
            primaryVertexPointer = BufferUtils.createFloatBuffer(capacityRequired);
            resized = true;
        }

        if (registeredArrayType != ARRAY_NORMAL) {
            GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
            GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
            GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
            GL11.glEnableClientState(GL11.GL_NORMAL_ARRAY);
        }

        if (registeredArrayType != ARRAY_NORMAL || resized) {
            FloatBuffer p = primaryVertexPointer;

            GL11.glVertexPointer(VERTEX_SIZE, STRIDE_NORMAL * Float.BYTES, p.position(0));
            GL11.glColorPointer(COLOR_SIZE, STRIDE_NORMAL * Float.BYTES, p.position(VERTEX_SIZE));
            GL11.glTexCoordPointer(TEX_SIZE, STRIDE_NORMAL * Float.BYTES, p.position(VERTEX_SIZE + COLOR_SIZE));
            GL11.glNormalPointer(STRIDE_NORMAL * Float.BYTES, p.position(VERTEX_SIZE + COLOR_SIZE + TEX_SIZE));
        }

        registeredArrayType = ARRAY_NORMAL;
        primaryVertexPointer.clear();
    }
}
