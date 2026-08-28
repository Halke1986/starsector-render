package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.interfaces.GLCommand;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL13;
import org.lwjgl.util.vector.Matrix4f;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import static com.genir.renderer.debug.Debug.asertEqual;

public class VertexInterceptor {
    private static final int VERTEX_SIZE = 3;
    private static final int COLOR_SIZE = 4;
    private static final int TEX_SIZE = 4;
    private static final int TEX1_SIZE = 2;
    private static final int NORMAL_SIZE = 3;
    private static final int STRIDE = VERTEX_SIZE + COLOR_SIZE + TEX_SIZE + TEX1_SIZE + NORMAL_SIZE;

    private static final int VERTEX_FLAG = 1;
    private static final int COLOR_FLAG = 2;
    private static final int TEX_FLAG = 4;
    private static final int TEX1_FLAG = 8;
    private static final int NORMAL_FLAG = 16;

    private final Context context;
    private final TransformManager transformManager;
    private final AttribManager attribManager;

    private boolean reorderDraw = false;
    private int arrayFlags = 0;

    // State.
    private int mode = 0;
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
    private boolean hasTexture1 = false;
    // Normal.
    private float nx;
    private float ny;
    private float nz;
    private boolean hasNormal = false;

    // Total number of vertices since glBegin.
    private int cachedVertices = 0;

    // Draw buffers.
    private float[] vertexScratchpad = new float[STRIDE];
    private FloatBuffer primaryVertexPointer = BufferUtils.createFloatBuffer(STRIDE);
    private final Map<ReorderedDrawContext, FloatBuffer> reorderBuffer = new HashMap<>();

    // Recorded array draw buffers.
    private ByteBuffer texCoordPointer = BufferUtils.createByteBuffer(0);
    private ByteBuffer vertexPointer = BufferUtils.createByteBuffer(0);
    private ByteBuffer colorPointer = BufferUtils.createByteBuffer(0);

    public VertexInterceptor(Context context, AttribManager attribManager, TransformManager transformManager) {
        this.context = context;
        this.attribManager = attribManager;
        this.transformManager = transformManager;
    }

    public void update() {
        arraysTouched();
    }

    public void arraysTouched() {
        arrayFlags = 0;
    }

    private void setReorderDraw(boolean reorder) {
        reorderDraw = reorder;
    }

    public void glBegin(int mode) {
        this.mode = mode;
        this.hasNormal = false;
        this.hasTexture1 = false;
    }

    public void glEnd() {
        final int count = cachedVertices;

        if (count == 0) {
            return;
        } else if (reorderDraw) {
            storeReorderedDraw(mode, count);
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
    }

    public void glMultiTexCoord2f(int target, float s, float t) {
        asertEqual(org.lwjgl.opengl.GL13.GL_TEXTURE1, target, null);

        this.texS1 = s;
        this.texT1 = t;
        this.hasTexture1 = true;
    }

    public void glNormal3f(float nx, float ny, float nz) {
        this.nx = nx;
        this.ny = ny;
        this.nz = nz;
        this.hasNormal = true;
    }

    public void glVertex3f(float x, float y, float z) {
        Matrix4f m = transformManager.getCPUModelView();

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

        if (hasNormal) {
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

    private void commitLayer() {
        for (Map.Entry<ReorderedDrawContext, FloatBuffer> entry : reorderBuffer.entrySet()) {
            FloatBuffer vertexBatch = entry.getValue();
            if (vertexBatch.position() == 0) {
                continue;
            }

            ReorderedDrawContext ctx = entry.getKey();

            vertexBatch.flip();
            final int batchMode = ctx.mode;
            final int batchCount = vertexBatch.limit() / STRIDE;

            prepareVertexPointers(batchCount, VERTEX_FLAG | COLOR_FLAG | TEX_FLAG);

            primaryVertexPointer.put(0, vertexBatch, 0, vertexBatch.limit());
            vertexBatch.clear();

            attribManager.forceReorderedDrawContext(ctx);
            com.genir.renderer.bridge.servercmds.GL11.glDrawArrays(context, batchMode, 0, batchCount);
        }

        // Restore client selected attributes to avoid client-server state desync.
        attribManager.reorderedDrawContextCleanup();
    }

    private void storeReorderedDraw(int mode, int count) {
        ReorderedDrawContext ctx = attribManager.getReorderedDrawContext(mode);

        // Create buffer if absent.
        FloatBuffer vertexBatch = reorderBuffer.get(ctx);
        if (vertexBatch == null) {
            vertexBatch = BufferUtils.createFloatBuffer(count * STRIDE);
            reorderBuffer.put(ctx, vertexBatch);
        }

        // Resize buffer if necessary.
        int capacityRequired = BufferUtil.capacityRequired(vertexBatch, count * STRIDE);
        if (capacityRequired > 0) {
            vertexBatch = BufferUtil.reallocate(capacityRequired, vertexBatch);
            reorderBuffer.put(ctx, vertexBatch);
        }

        // Append current vertices.
        vertexBatch.put(vertexScratchpad, 0, count * STRIDE);
    }

    public void drawRecordedArrays(Runnable drawArraysCommand, ClientAttribTracker.ArrayPointersSnapshot snapshot) {
        arraysTouched();

        // Vertex array.
        final ArraySnapshot vs = snapshot.vertex();
        if (vs != null) {
            com.genir.renderer.bridge.servercmds.GL11.glEnableClientState(context, GL11.GL_VERTEX_ARRAY);

            if (vs.snapshot() != null) {
                vertexPointer = restoreSnapshot(vs, vertexPointer);
                com.genir.renderer.bridge.servercmds.GL11.glVertexPointer(context, vs.size(), vs.type(), vs.stride(), vertexPointer);
            }
        } else {
            com.genir.renderer.bridge.servercmds.GL11.glDisableClientState(context, GL11.GL_VERTEX_ARRAY);
        }

        // Texture array.
        final ArraySnapshot ts = snapshot.texCoord();
        if (ts != null) {
            com.genir.renderer.bridge.servercmds.GL11.glEnableClientState(context, GL11.GL_TEXTURE_COORD_ARRAY);

            if (ts.snapshot() != null) {
                texCoordPointer = restoreSnapshot(ts, texCoordPointer);
                com.genir.renderer.bridge.servercmds.GL11.glTexCoordPointer(context, ts.size(), ts.type(), ts.stride(), texCoordPointer);
            }
        } else {
            com.genir.renderer.bridge.servercmds.GL11.glDisableClientState(context, GL11.GL_TEXTURE_COORD_ARRAY);
        }

        // Color array.
        final ArraySnapshot cs = snapshot.color();
        if (cs != null) {
            com.genir.renderer.bridge.servercmds.GL11.glEnableClientState(context, GL11.GL_COLOR_ARRAY);

            if (cs.snapshot() != null) {
                colorPointer = restoreSnapshot(cs, colorPointer);
                com.genir.renderer.bridge.servercmds.GL11.glColorPointer(context, cs.size(), cs.type(), cs.stride(), colorPointer);
            }
        } else {
            // Define color if GL_COLOR_ARRAY is disabled.
            com.genir.renderer.bridge.servercmds.GL11.glDisableClientState(context, GL11.GL_COLOR_ARRAY);
            com.genir.renderer.bridge.servercmds.GL11.glColor4f(context, red, green, blue, alpha);
        }

        // Normal array.
        com.genir.renderer.bridge.servercmds.GL11.glDisableClientState(context, GL11.GL_NORMAL_ARRAY);

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
     * Draw vertices recorded in glBegin/glEnd block using glDrawArrays command.
     */
    private void drawAsArray(int count) {
        int flags = VERTEX_FLAG | COLOR_FLAG | TEX_FLAG;
        if (hasTexture1) flags |= TEX1_FLAG;
        if (hasNormal) flags |= NORMAL_FLAG;

        prepareVertexPointers(count, flags);
        primaryVertexPointer.put(0, vertexScratchpad, 0, count * STRIDE);

        attribManager.applyDrawAttribs();
        com.genir.renderer.bridge.servercmds.GL11.glDrawArrays(context, mode, 0, count);
    }

    private void prepareVertexPointers(int count, int requiredFlags) {
        boolean resized = false;
        int capacityRequired = count * STRIDE;
        if (primaryVertexPointer.capacity() < capacityRequired) {
            primaryVertexPointer = BufferUtils.createFloatBuffer(capacityRequired);
            resized = true;
        }

        if (!resized && arrayFlags == requiredFlags) {
            return;
        }

        FloatBuffer p = primaryVertexPointer;

        if (resized || (arrayFlags & VERTEX_FLAG) != (requiredFlags & VERTEX_FLAG)) {
            if ((requiredFlags & VERTEX_FLAG) != 0) {
                com.genir.renderer.bridge.servercmds.GL11.glEnableClientState(context, GL11.GL_VERTEX_ARRAY);
                com.genir.renderer.bridge.servercmds.GL11.glVertexPointer(context, VERTEX_SIZE, STRIDE * Float.BYTES, p.position(0));
            } else {
                com.genir.renderer.bridge.servercmds.GL11.glDisableClientState(context, GL11.GL_VERTEX_ARRAY);
            }
        }

        if (resized || (arrayFlags & COLOR_FLAG) != (requiredFlags & COLOR_FLAG)) {
            if ((requiredFlags & COLOR_FLAG) != 0) {
                com.genir.renderer.bridge.servercmds.GL11.glEnableClientState(context, GL11.GL_COLOR_ARRAY);
                com.genir.renderer.bridge.servercmds.GL11.glColorPointer(context, COLOR_SIZE, STRIDE * Float.BYTES, p.position(VERTEX_SIZE));
            } else {
                com.genir.renderer.bridge.servercmds.GL11.glDisableClientState(context, GL11.GL_COLOR_ARRAY);
            }
        }

        if (resized || (arrayFlags & TEX_FLAG) != (requiredFlags & TEX_FLAG)) {
            int prevActiveTex = GL11.glGetInteger(GL13.GL_CLIENT_ACTIVE_TEXTURE);
            com.genir.renderer.bridge.servercmds.GL13.glClientActiveTexture(context, GL13.GL_TEXTURE0);

            if ((requiredFlags & TEX_FLAG) != 0) {
                com.genir.renderer.bridge.servercmds.GL11.glEnableClientState(context, GL11.GL_TEXTURE_COORD_ARRAY);
                com.genir.renderer.bridge.servercmds.GL11.glTexCoordPointer(context, TEX_SIZE, STRIDE * Float.BYTES, p.position(VERTEX_SIZE + COLOR_SIZE));
            } else {
                com.genir.renderer.bridge.servercmds.GL11.glDisableClientState(context, GL11.GL_TEXTURE_COORD_ARRAY);
            }

            com.genir.renderer.bridge.servercmds.GL13.glClientActiveTexture(context, prevActiveTex);
        }

        if (resized || (arrayFlags & TEX1_FLAG) != (requiredFlags & TEX1_FLAG)) {
            int prevActiveTex = GL11.glGetInteger(GL13.GL_CLIENT_ACTIVE_TEXTURE);
            com.genir.renderer.bridge.servercmds.GL13.glClientActiveTexture(context, GL13.GL_TEXTURE1);

            if ((requiredFlags & TEX1_FLAG) != 0) {
                com.genir.renderer.bridge.servercmds.GL11.glEnableClientState(context, GL11.GL_TEXTURE_COORD_ARRAY);
                com.genir.renderer.bridge.servercmds.GL11.glTexCoordPointer(context, TEX1_SIZE, STRIDE * Float.BYTES, p.position(VERTEX_SIZE + COLOR_SIZE + TEX_SIZE));
            } else {
                com.genir.renderer.bridge.servercmds.GL11.glDisableClientState(context, GL11.GL_TEXTURE_COORD_ARRAY);
            }

            com.genir.renderer.bridge.servercmds.GL13.glClientActiveTexture(context, prevActiveTex);
        }

        if (resized || (arrayFlags & NORMAL_FLAG) != (requiredFlags & NORMAL_FLAG)) {
            if ((requiredFlags & NORMAL_FLAG) != 0) {
                com.genir.renderer.bridge.servercmds.GL11.glEnableClientState(context, GL11.GL_NORMAL_ARRAY);
                com.genir.renderer.bridge.servercmds.GL11.glNormalPointer(context, STRIDE * Float.BYTES, p.position(VERTEX_SIZE + COLOR_SIZE + TEX_SIZE + TEX1_SIZE));
            } else {
                com.genir.renderer.bridge.servercmds.GL11.glDisableClientState(context, GL11.GL_NORMAL_ARRAY);
            }
        }

        arrayFlags = requiredFlags;
    }

    public record setReorderDraw(boolean reorder) implements GLCommand {
        @Override
        public void run(Context context, float[] args, int argsOffset) {
            context.vertexInterceptor.setReorderDraw(reorder);
        }
    }

    public record commitLayer() implements GLCommand {
        @Override
        public void run(Context context, float[] args, int argsOffset) {
            context.vertexInterceptor.commitLayer();
        }
    }
}
