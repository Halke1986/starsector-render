package com.genir.renderer.bridge.impl;

import org.lwjgl.opengl.GL11;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class VertexInterceptor {
    //    private final int BUFFER_SIZE = 1 << 16;
//    private final int VERTEX_SIZE = 3;
    private static final int COLOR_SIZE = 4;
    private static final int TEX_SIZE = 2;
    //    private final int NORMAL_SIZE = 3;
    private static final int VERTEX_SIZE_2D = 2;
    //    private final int STRIDE = VERTEX_SIZE + COLOR_SIZE + TEX_SIZE + NORMAL_SIZE;
//
//    private final MatrixStack modelView;
//    private final AttribManager attribManager;
    private final ClientAttribTracker clientAttribTracker;

    //
//    private boolean shouldRegisterArrays = true;
//    private boolean reorderDraw = false;
//
//    // State.
//    private int mode = 0;
//    private float red;
//    private float green;
//    private float blue;
//    private float alpha;
//    private float texS;
//    private float texT;
//    private float nx;
//    private float ny;
//    private float nz;
//
//    // Total number of vertices since glBegin.
//    private int cachedVertices = 0;
//
//    // Draw buffers.
//    private final float[] vertexScratchpad = new float[BUFFER_SIZE * STRIDE];
//    private FloatBuffer vertexPointer = BufferUtils.createFloatBuffer(STRIDE);
//    private ByteBuffer auxDataBuffer = BufferUtils.createByteBuffer(1);
//
//    private final Map<ReorderedDrawContext, FloatBuffer> reorderBuffer = new HashMap<>();
//
    public VertexInterceptor(
            ClientAttribTracker clientAttribTracker) {
//        this.modelView = modelView;
//        this.attribManager = attribManager;
        this.clientAttribTracker = clientAttribTracker;
    }

    //    public void update() {
//        // Accessing VertexInterceptor state on the GL thread. Ensure the update method
//        // runs within a synchronized executor operation (wait or barrier).
//        // Otherwise, concurrent modification may occur.
//        vertexPointer.clear();
//        auxDataBuffer.clear();
//
//        GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
//        GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
//        GL11.glEnableClientState(GL11.GL_NORMAL_ARRAY);
//        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
//
//        registerArrays(vertexPointer);
//    }
//
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
//
//    private void registerArrays(FloatBuffer vertexPointer) {
//        FloatBuffer pointer = vertexPointer.duplicate();
//
//        GL11.glVertexPointer(VERTEX_SIZE, STRIDE * Float.BYTES, pointer.position(0));
//        GL11.glColorPointer(COLOR_SIZE, STRIDE * Float.BYTES, pointer.position(pointer.position() + VERTEX_SIZE));
//        GL11.glTexCoordPointer(TEX_SIZE, STRIDE * Float.BYTES, pointer.position(pointer.position() + COLOR_SIZE));
//        GL11.glNormalPointer(STRIDE * Float.BYTES, pointer.position(pointer.position() + TEX_SIZE));
//    }
//
//    public void arraysTouched() {
//        shouldRegisterArrays = true;
//    }
//
//    public void glBegin(int mode) {
//        this.mode = mode;
//    }
//
//    public void glEnd() {
//        final int count = cachedVertices;
//
//        if (count == 0) {
//            return;
//        } else if (reorderDraw) {
//            storeReorderedDraw(mode, count);
//        } else if (mode == GL11.GL_LINE_LOOP || mode == GL11.GL_LINE_STRIP) {
//            drawLine(mode, count);
//        } else {
//            drawAsArray(mode, count);
//        }
//
//        cachedVertices = 0;
//    }
//
//    public void glColor4f(float red, float green, float blue, float alpha) {
//        this.red = red;
//        this.green = green;
//        this.blue = blue;
//        this.alpha = alpha;
//    }
//
//    public void glTexCoord2f(float s, float t) {
//        texS = s;
//        texT = t;
//    }
//
//    public void glNormal3f(float nx, float ny, float nz) {
//        this.nx = nx;
//        this.ny = ny;
//        this.nz = nz;
//    }
//
//    public void glVertex3f(float x, float y, float z) {
//        int offset = cachedVertices * STRIDE;
//
//        Matrix4f m = modelView.getMatrix();
//
//        // Transform vertices;
//        vertexScratchpad[offset + 0] = x * m.m00 + y * m.m01 + z * m.m02 + m.m03;
//        vertexScratchpad[offset + 1] = x * m.m10 + y * m.m11 + z * m.m12 + m.m13;
//        vertexScratchpad[offset + 2] = x * m.m20 + y * m.m21 + z * m.m22 + m.m23;
//
//        // Define vertex color.
//        vertexScratchpad[offset + 3] = red;
//        vertexScratchpad[offset + 4] = green;
//        vertexScratchpad[offset + 5] = blue;
//        vertexScratchpad[offset + 6] = alpha;
//
//        // Define vertex texture.
//        if (attribManager.enableTexture()) {
//            vertexScratchpad[offset + 7] = texS;
//            vertexScratchpad[offset + 8] = texT;
//        }
//
//        // Transform normals.
//        if (attribManager.enableLighting()) {
//            // Assume model view is just rotations and translations, no shear or scale.
//            // Otherwise, the upper left 3x3 part of transformation matrix would have
//            // to be inversed and transposed first.
//            vertexScratchpad[offset + 9] = nx * m.m00 + ny * m.m01 + nz * m.m02;
//            vertexScratchpad[offset + 10] = nx * m.m10 + ny * m.m11 + nz * m.m12;
//            vertexScratchpad[offset + 11] = nx * m.m20 + ny * m.m21 + nz * m.m22;
//        }
//
//        cachedVertices++;
//    }
//
    public Runnable recordGlDrawArrays(int mode, int first, int count) {
        // Vertex array snapshot. Not required if vertices are defined via VBO.
        FloatBuffer vertexSnapshot = null;
        FloatBuffer vertexPointer = clientAttribTracker.getVertexPointer();
        boolean enableVertexArray = clientAttribTracker.getEnableVertexArray();
        if (vertexPointer != null && enableVertexArray) {
            vertexSnapshot = BufferUtil.snapshot(vertexPointer);
        }

        // Texture array snapshot.
        FloatBuffer texCoordSnapshot = null;
        FloatBuffer texCoordPointer = clientAttribTracker.getTexCoordPointer();
        boolean enableTexCoordArray = clientAttribTracker.getEnableTexCoordArray();
        if (texCoordPointer != null && enableTexCoordArray) {
            texCoordSnapshot = BufferUtil.snapshot(texCoordPointer);
        }

        // Color array snapshot.
        ByteBuffer colorSnapshot = null;
        ByteBuffer colorPointer = clientAttribTracker.getColorPointer();
        boolean enableColorArray = clientAttribTracker.getEnableColorArray();
        if (colorPointer != null && enableColorArray) {
            colorSnapshot = BufferUtil.snapshot(colorPointer);
        }

        // Define color if GL_COLOR_ARRAY is disabled.
//        if (!clientAttribTracker.getEnableColorArray()) {
//            final float r = red, g = green, b = blue, a = alpha;

//            GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
//            GL11.glColor4f(r, g, b, a);
//        }

//        attribManager.applyEnableAndColorBufferBit();
//        attribManager.forceMatrixMode(GL11.GL_MODELVIEW);

        record recordedGlDrawArrays(
                int mode,
                int first,
                int count,
                FloatBuffer vertexSnapshot,
                FloatBuffer texCoordSnapshot,
                ByteBuffer colorSnapshot,
                boolean enableVertexArray,
                boolean enableTexCoordArray,
                boolean enableColorArray) implements Runnable {
            @Override
            public void run() {
                if (enableVertexArray) {
                    GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
                }

                if (enableTexCoordArray) {
                    GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
                }

                if (enableColorArray) {
                    GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
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

                // Draw.
//                GL11.glMultMatrix(mBuffer);
                GL11.glDrawArrays(mode, first, count);
//                GL11.glLoadIdentity();
            }
        }

        return new recordedGlDrawArrays(mode,
                first,
                count,
                vertexSnapshot,
                texCoordSnapshot,
                colorSnapshot,
                enableVertexArray,
                enableTexCoordArray,
                enableColorArray);
    }
//
//    public Runnable recordedGlDrawArrays(int mode, int first, int count) {
//        asert(first == 0);
//
//        // Take snapshot of the buffers at the time of list recording.
//        ByteBuffer colorReader = clientAttribTracker.getColorPointer().duplicate().position(0);
//        FloatBuffer vertexReader = clientAttribTracker.getVertexPointer().duplicate().position(0);
//        FloatBuffer texCoordReader = clientAttribTracker.getTexCoordPointer().duplicate().position(0);
//
//        final float[] vertexSnapshot = new float[count * STRIDE];
//        for (int i = 0; i < count; i++) {
//            int offset = i * STRIDE;
//
//            vertexSnapshot[offset + 3] = (colorReader.get() & 0xFF) / 255f;
//            vertexSnapshot[offset + 4] = (colorReader.get() & 0xFF) / 255f;
//            vertexSnapshot[offset + 5] = (colorReader.get() & 0xFF) / 255f;
//            vertexSnapshot[offset + 6] = (colorReader.get() & 0xFF) / 255f;
//
//            vertexSnapshot[offset + 7] = texCoordReader.get();
//            vertexSnapshot[offset + 8] = texCoordReader.get();
//
//            // Since vanilla is not recording arrays with normals, it is possible
//            // to use normals indices to store untransformed vertices.
//            vertexSnapshot[offset + 9] = vertexReader.get();
//            vertexSnapshot[offset + 10] = vertexReader.get();
//        }
//
//        return () -> {
//            // Transform vertices;
//            Matrix4f m = modelView.getMatrix();
//            for (int i = 0; i < count; i++) {
//                int offset = i * STRIDE;
//
//                float x = vertexSnapshot[offset + 9];
//                float y = vertexSnapshot[offset + 10];
//
//                vertexSnapshot[offset + 0] = x * m.m00 + y * m.m01 + m.m03;
//                vertexSnapshot[offset + 1] = x * m.m10 + y * m.m11 + m.m13;
//            }
//
//            // Prepare draw buffers.
//            prepareVertexPointer(count);
//
//            final int offset = vertexPointer.position() / STRIDE;
//            vertexPointer.put(vertexSnapshot, 0, count * STRIDE);
//
//            attribManager.applyEnableAndColorBufferBit();
//            GL11.glDrawArrays(mode, offset, count);
//        };
//    }
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
//
//    /**
//     * GL11.GL_LINE_LOOP and GL11.GL_LINE_STRIP cannot be converted from
//     * a glBegin()/glEnd() block into glDrawArrays using the standard approach,
//     * because that triggers Intel driver bugs and can produce malformed geometry.
//     * Instead, LINE primitives are batched into a dedicated buffer without texCoords
//     * or normals.
//     */
//    private void drawLine(int mode, int count) {
//        final int LINE_STRIDE = VERTEX_SIZE + COLOR_SIZE;
//        final FloatBuffer linePointer = allocateAuxDataf(count * LINE_STRIDE);
//
//        for (int i = 0; i < count; i++) {
//            linePointer.put(vertexScratchpad, i * STRIDE, LINE_STRIDE);
//        }
//
//        final FloatBuffer vertexPointerFinal = this.vertexPointer;
//
//        attribManager.applyEnableAndColorBufferBit();
//        GL11.glVertexPointer(VERTEX_SIZE, LINE_STRIDE * Float.BYTES, linePointer.position(0));
//        GL11.glColorPointer(COLOR_SIZE, LINE_STRIDE * Float.BYTES, linePointer.position(VERTEX_SIZE));
//
//        GL11.glDrawArrays(mode, 0, count);
//
//        registerArrays(vertexPointerFinal);
//
//        cachedVertices = 0;
//    }
//
//    /**
//     * Draw vertices recorded in glBegin/glEnd block using glDrawArrays command.
//     */
//    private void drawAsArray(int mode, int count) {
//        prepareVertexPointer(count);
//
//        final int offset = vertexPointer.position() / STRIDE;
//        vertexPointer.put(vertexScratchpad, 0, count * STRIDE);
//
//        attribManager.applyEnableAndColorBufferBit();
//        GL11.glDrawArrays(mode, offset, count);
//
//        cachedVertices = 0;
//    }
//
//    private void prepareVertexPointer(int vertexNum) {
//        int capacityRequired = capacityRequired(vertexPointer, vertexNum * STRIDE);
//        if (capacityRequired > 0) {
//            vertexPointer = BufferUtils.createFloatBuffer(capacityRequired);
//        }
//
//        if (shouldRegisterArrays || capacityRequired > 0) {
//            final FloatBuffer vertexPointerFinal = vertexPointer;
//            registerArrays(vertexPointerFinal);
//        }
//
//        shouldRegisterArrays = false;
//    }
//
//    private void resizeAuxData(int bytes) {
//        int capacityRequired = capacityRequired(auxDataBuffer, bytes);
//        if (capacityRequired > 0) {
//            log(VertexInterceptor.class, "resize aux data buffer to " + capacityRequired + " bytes");
//
//            auxDataBuffer = BufferUtils.createByteBuffer(capacityRequired);
//        }
//    }
//
//    private ByteBuffer allocateAuxData(int bytes) {
//        resizeAuxData(bytes);
//
//        ByteBuffer slice = auxDataBuffer.slice(auxDataBuffer.position(), bytes);
//        auxDataBuffer.position(auxDataBuffer.position() + bytes);
//        return slice;
//    }
//
//    private FloatBuffer allocateAuxDataf(int floats) {
//        resizeAuxData(floats * Float.BYTES);
//
//        FloatBuffer slice = auxDataBuffer.asFloatBuffer().slice(0, floats);
//        auxDataBuffer.position(auxDataBuffer.position() + floats * Float.BYTES);
//
//        return slice;
//    }
}
