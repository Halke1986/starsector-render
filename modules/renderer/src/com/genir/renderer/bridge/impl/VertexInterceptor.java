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
    private final int COLOR_SIZE = 4;
    private final int TEX_SIZE = 2;
    private final int NORMAL_SIZE = 3;
    private final int VERTEX_SIZE = 3;
    private final int VERTEX_SIZE_2D = 2;

    private final Executor exec;
    private final MatrixStack modelView;
    private final RenderContext renderContext;

    private boolean shouldRegisterArrays = false;

    // State.
    private int mode = 0;
    private byte red;
    private byte green;
    private byte blue;
    private byte alpha;
    private float texS;
    private float texT;
    private float nx;
    private float ny;
    private float nz;

    // Local buffers.
    private final byte[] colorsCache = new byte[BUFFER_SIZE * COLOR_SIZE];
    private final float[] texCoordsCache = new float[BUFFER_SIZE * TEX_SIZE];
    private final float[] normalsCache = new float[BUFFER_SIZE * NORMAL_SIZE];
    private final float[] verticesCache = new float[BUFFER_SIZE * VERTEX_SIZE];

    // Total number of vertices since glBegin.
    private int cachedVertices = 0;

    // Draw buffers.
    private ByteBuffer colorPointer = BufferUtils.createByteBuffer(COLOR_SIZE);
    private FloatBuffer texCoordsPointer = BufferUtils.createFloatBuffer(TEX_SIZE);
    private FloatBuffer normalsPointer = BufferUtils.createFloatBuffer(NORMAL_SIZE);
    private FloatBuffer vertexPointer = BufferUtils.createFloatBuffer(VERTEX_SIZE);

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
        colorPointer.clear();
        texCoordsPointer.clear();
        normalsPointer.clear();
        vertexPointer.clear();

        GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glEnableClientState(GL11.GL_NORMAL_ARRAY);
        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);

        registerArrays();
    }

    private void registerArrays() {
        GL11.glColorPointer(COLOR_SIZE, GL11.GL_UNSIGNED_BYTE, 0, colorPointer.duplicate().clear());
        GL11.glTexCoordPointer(TEX_SIZE, 0, texCoordsPointer.duplicate().clear());
        GL11.glNormalPointer(0, normalsPointer.duplicate().clear());
        GL11.glVertexPointer(VERTEX_SIZE, 0, vertexPointer.duplicate().clear());
    }

    public void arraysTouched() {
        shouldRegisterArrays = true;
    }

    public void glBegin(int mode) {
        this.mode = mode;
    }

    public void glEnd() {
        final int drawMode = mode;
        final int drawBufferOffset = vertexPointer.position() / VERTEX_SIZE;
        final int drawSize = cachedVertices;

        final boolean shouldRegisterArrays = this.shouldRegisterArrays;
        this.shouldRegisterArrays = false;

        resizeDrawBuffers(drawSize);

        colorPointer.put(colorsCache, 0, drawSize * COLOR_SIZE);

        if (renderContext.enableTexture()) texCoordsPointer.put(texCoordsCache, 0, drawSize * TEX_SIZE);
        else texCoordsPointer.position(texCoordsPointer.position() + drawSize * TEX_SIZE);

        if (renderContext.enableLighting()) normalsPointer.put(normalsCache, 0, drawSize * NORMAL_SIZE);
        else normalsPointer.position(normalsPointer.position() + drawSize * NORMAL_SIZE);

        vertexPointer.put(verticesCache, 0, drawSize * VERTEX_SIZE);

        renderContext.applyEnableAndColorBufferBit();
        exec.execute(() -> {
            if (shouldRegisterArrays) {
                registerArrays();
            }

            GL11.glDrawArrays(drawMode, drawBufferOffset, drawSize);
        });

        cachedVertices = 0;
    }

    public void glColor4ub(byte red, byte green, byte blue, byte alpha) {
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
        int idx = cachedVertices;

        // Define vertex color.
        colorsCache[idx * COLOR_SIZE + 0] = red;
        colorsCache[idx * COLOR_SIZE + 1] = green;
        colorsCache[idx * COLOR_SIZE + 2] = blue;
        colorsCache[idx * COLOR_SIZE + 3] = alpha;

        // Define vertex texture.
        if (renderContext.enableTexture()) {
            texCoordsCache[idx * TEX_SIZE + 0] = texS;
            texCoordsCache[idx * TEX_SIZE + 1] = texT;
        }

        Matrix4f m = modelView.getMatrix();

        // Transform normals.
        if (renderContext.enableLighting()) {
            // Assume model view is just rotations and translations, no shear or scale.
            // Otherwise, the upper left 3x3 part of transformation matrix would have
            // to be inversed and transposed first.
            normalsCache[idx * NORMAL_SIZE + 0] = nx * m.m00 + ny * m.m01 + nz * m.m02;
            normalsCache[idx * NORMAL_SIZE + 1] = nx * m.m10 + ny * m.m11 + nz * m.m12;
            normalsCache[idx * NORMAL_SIZE + 3] = nx * m.m20 + ny * m.m21 + nz * m.m22;
        }

        // Transform vertices;
        verticesCache[idx * VERTEX_SIZE + 0] = x * m.m00 + y * m.m01 + z * m.m02 + m.m03;
        verticesCache[idx * VERTEX_SIZE + 1] = x * m.m10 + y * m.m11 + z * m.m12 + m.m13;
        verticesCache[idx * VERTEX_SIZE + 3] = x * m.m20 + y * m.m21 + z * m.m22 + m.m23;

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
            // Prepare draw buffers.
            resizeDrawBuffers(count);
            final int drawBufferSize = vertexPointer.position() / VERTEX_SIZE;

            final boolean shouldRegisterArrays = this.shouldRegisterArrays;
            this.shouldRegisterArrays = false;

            colorPointer.put(colors, 0, count * COLOR_SIZE);
            texCoordsPointer.put(texCoords, 0, count * TEX_SIZE);
            transform2DVertices(vertices, count);
            vertexPointer.put(verticesCache, 0, count * VERTEX_SIZE);

            renderContext.applyEnableAndColorBufferBit();
            exec.execute(() -> {
                if (shouldRegisterArrays) {
                    registerArrays();
                }

                GL11.glDrawArrays(mode, drawBufferSize, count);
            });
        };
    }

    private void resizeDrawBuffers(int vertexNum) {
        if (vertexPointer.remaining() >= vertexNum * VERTEX_SIZE) {
            return;
        }

        int currentSize = vertexPointer.capacity() / VERTEX_SIZE;
        final int newSize = Math.max(currentSize * 2, currentSize + vertexNum);

        log(VertexInterceptor.class, "resize draw buffer to " + newSize + " vertices");

        exec.wait(() -> {
            colorPointer = BufferUtils.createByteBuffer(newSize * COLOR_SIZE);
            texCoordsPointer = BufferUtils.createFloatBuffer(newSize * TEX_SIZE);
            normalsPointer = BufferUtils.createFloatBuffer(newSize * NORMAL_SIZE);
            vertexPointer = BufferUtils.createFloatBuffer(newSize * VERTEX_SIZE);

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
            verticesCache[i * VERTEX_SIZE + 0] = x * m.m00 + y * m.m01 + m.m03;
            verticesCache[i * VERTEX_SIZE + 1] = x * m.m10 + y * m.m11 + m.m13;
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
