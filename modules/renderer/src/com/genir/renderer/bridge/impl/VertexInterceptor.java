package com.genir.renderer.bridge.impl;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix4f;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

import static com.genir.renderer.Debug.asert;
import static com.genir.renderer.Debug.log;

public class VertexInterceptor {
    private final int BUFFER_SIZE = 1 << 16;
    private final int VERTEX_SIZE = 3;
    private final int COLOR_SIZE = 4;
    private final int TEX_SIZE = 2;
    private final int NORMAL_SIZE = 3;
    private final int VERTEX_SIZE_2D = 2;
    private final int STRIDE = VERTEX_SIZE + COLOR_SIZE + TEX_SIZE + NORMAL_SIZE;

    private final Executor exec;
    private final MatrixStack modelView;
    private final RenderContext renderContext;

    private boolean shouldRegisterArrays = false;

    // State.
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
    private FloatBuffer vertexPointer = BufferUtils.createFloatBuffer(STRIDE);

    // External buffers.
    private ByteBuffer externalColorPointer;
    private FloatBuffer externalTexCoordsPointer;
    private FloatBuffer externalVertexPointer;

    public VertexInterceptor(Executor exec, MatrixStack modelView, RenderContext renderContext) {
        this.exec = exec;
        this.modelView = modelView;
        this.renderContext = renderContext;
    }

    public void update() {
        // Accessing VertexInterceptor state on the GL thread. Ensure the update method
        // runs within a synchronized executor operation (wait or barrier).
        // Otherwise, concurrent modification may occur.
        vertexPointer.clear();

        GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glEnableClientState(GL11.GL_NORMAL_ARRAY);
        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);

        registerArrays();
    }

    private void registerArrays() {
        FloatBuffer pointer = vertexPointer.duplicate();

        GL11.glVertexPointer(VERTEX_SIZE, STRIDE * Float.BYTES, pointer.position(0));
        GL11.glColorPointer(COLOR_SIZE, STRIDE * Float.BYTES, pointer.position(pointer.position() + VERTEX_SIZE));
        GL11.glTexCoordPointer(TEX_SIZE, STRIDE * Float.BYTES, pointer.position(pointer.position() + COLOR_SIZE));
        GL11.glNormalPointer(STRIDE * Float.BYTES, pointer.position(pointer.position() + TEX_SIZE));
    }

    public void arraysTouched() {
        shouldRegisterArrays = true;
    }

    public void glBegin(int mode) {
        this.mode = mode;
    }

    public void glEnd() {
        final int drawMode = mode;
        final int drawBufferOffset = vertexPointer.position() / STRIDE;
        final int count = cachedVertices;

        final boolean shouldRegisterArrays = this.shouldRegisterArrays;
        this.shouldRegisterArrays = false;

        resizeDrawBuffers(count);
        vertexPointer.put(vertexScratchpad, 0, count * STRIDE);

        renderContext.applyEnableAndColorBufferBit();
        exec.execute(() -> {
            if (shouldRegisterArrays) {
                registerArrays();
            }

            GL11.glDrawArrays(drawMode, drawBufferOffset, count);
        });

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
        vertexScratchpad[offset + 0] = x * m.m00 + y * m.m01 + z * m.m02 + m.m03;
        vertexScratchpad[offset + 1] = x * m.m10 + y * m.m11 + z * m.m12 + m.m13;
        vertexScratchpad[offset + 2] = x * m.m20 + y * m.m21 + z * m.m22 + m.m23;

        // Define vertex color.
        vertexScratchpad[offset + 3] = red;
        vertexScratchpad[offset + 4] = green;
        vertexScratchpad[offset + 5] = blue;
        vertexScratchpad[offset + 6] = alpha;

        // Define vertex texture.
        if (renderContext.enableTexture()) {
            vertexScratchpad[offset + 7] = texS;
            vertexScratchpad[offset + 8] = texT;
        }

        // Transform normals.
        if (renderContext.enableLighting()) {
            // Assume model view is just rotations and translations, no shear or scale.
            // Otherwise, the upper left 3x3 part of transformation matrix would have
            // to be inversed and transposed first.
            vertexScratchpad[offset + 9] = nx * m.m00 + ny * m.m01 + nz * m.m02;
            vertexScratchpad[offset + 10] = nx * m.m10 + ny * m.m11 + nz * m.m12;
            vertexScratchpad[offset + 11] = nx * m.m20 + ny * m.m21 + nz * m.m22;
        }

        cachedVertices++;
    }

    public void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) {
        asert(stride == 0);
        asert(size == COLOR_SIZE);

        arraysTouched();
        externalColorPointer = pointer;
    }

    public void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        asert(stride == 0);
        asert(size == TEX_SIZE);

        arraysTouched();
        externalTexCoordsPointer = pointer;
    }

    public void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        asert(stride == 0);
        asert(size == VERTEX_SIZE_2D);

        arraysTouched();
        externalVertexPointer = pointer;
    }

    public void glDrawArrays(int mode, int first, int count) {
        // Array draw, as opposed to glBegin/gEnd block doesn't
        // have model matrix applied on the CPU side.
        Matrix4f m = modelView.getMatrix();
        final FloatBuffer mBuffer = BufferUtils.createFloatBuffer(16);
        m.storeTranspose(mBuffer);
        mBuffer.flip();

        // Draw.
        renderContext.applyEnableAndColorBufferBit();
        renderContext.forceMatrixMode(GL11.GL_MODELVIEW);
        exec.execute(() -> {
            GL11.glMultMatrix(mBuffer);
            GL11.glDrawArrays(mode, first, count);
            GL11.glLoadIdentity();
        });
    }

    public Runnable recordedGlDrawArrays(int mode, int first, int count) {
        asert(first == 0);

        // Take snapshot of the buffers at the time of list recording.
        final byte[] colors = bufferSnapshot(externalColorPointer, count * COLOR_SIZE);
        final float[] texCoords = bufferSnapshot(externalTexCoordsPointer, count * TEX_SIZE);
        final float[] vertices = bufferSnapshot(externalVertexPointer, count * VERTEX_SIZE_2D);

        return () -> {
           /* // Prepare draw buffers.
            resizeDrawBuffers(count);
            final int drawBufferSize = vertexPointer.position() / VERTEX_SIZE;

            final boolean shouldRegisterArrays = this.shouldRegisterArrays;
            this.shouldRegisterArrays = false;

            colorPointer.put(colors, 0, count * COLOR_SIZE);
            texCoordsPointer.put(texCoords, 0, count * TEX_SIZE);
            transform2DVertices(vertices, count);
            vertexPointer.put(vertexScratchpad, 0, count * VERTEX_SIZE);

            renderContext.applyEnableAndColorBufferBit();
            exec.execute(() -> {
                if (shouldRegisterArrays) {
                    registerArrays();
                }

                GL11.glDrawArrays(mode, drawBufferSize, count);
            });*/
        };
    }

    private void resizeDrawBuffers(int vertexNum) {
        if (vertexPointer.remaining() >= vertexNum * STRIDE) {
            return;
        }

        int currentSize = vertexPointer.capacity() / STRIDE;
        final int newSize = Math.max(currentSize * 2, currentSize + vertexNum);

        log(VertexInterceptor.class, "resize draw buffer to " + newSize + " vertices");

        exec.wait(() -> {
            vertexPointer = BufferUtils.createFloatBuffer(newSize * STRIDE);

            update();
        });
    }

    private void transform2DVertices(float[] input, int count) {
        // Transform vertices;
        Matrix4f m = modelView.getMatrix();

        // Iterate in the reverse direction in case input is same as output.
        // That way spreading vertices from 2D to 3D won't override input values.
        for (int i = count - 1; i >= 0; i--) {
            float x = input[i * VERTEX_SIZE_2D + 0];
            float y = input[i * VERTEX_SIZE_2D + 1];

            // Use the default cache array to store output.
            vertexScratchpad[i * VERTEX_SIZE + 0] = x * m.m00 + y * m.m01 + m.m03;
            vertexScratchpad[i * VERTEX_SIZE + 1] = x * m.m10 + y * m.m11 + m.m13;
        }
    }

    private float[] bufferSnapshot(FloatBuffer params, int count) {
        FloatBuffer reader = params.duplicate();
        reader.rewind();

        float[] snapshot = new float[count];
        reader.get(snapshot, 0, count);

        return snapshot;
    }

    private byte[] bufferSnapshot(ByteBuffer params, int count) {
        ByteBuffer reader = params.duplicate();
        reader.rewind();

        byte[] snapshot = new byte[count];
        reader.get(snapshot, 0, count);

        return snapshot;
    }
}
