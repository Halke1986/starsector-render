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
    private final AttribTracker attribTracker;
    private final ClientAttribTracker clientAttribTracker;

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

    public VertexInterceptor(
            Executor exec,
            MatrixStack modelView,
            AttribTracker attribTracker,
            ClientAttribTracker clientAttribTracker) {
        this.exec = exec;
        this.modelView = modelView;
        this.attribTracker = attribTracker;
        this.clientAttribTracker = clientAttribTracker;
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

        if (count == 0) {
            return;
        }

        if (drawMode == GL11.GL_LINE_LOOP || drawMode == GL11.GL_LINE_STRIP) {
            drawLine(drawMode, count);
            return;
        }

        final boolean shouldRegisterArrays = this.shouldRegisterArrays;
        this.shouldRegisterArrays = false;

        resizeDrawBuffers(count);
        vertexPointer.put(vertexScratchpad, 0, count * STRIDE);

        attribTracker.applyEnableAndColorBufferBit();
        exec.execute(() -> {
            try {
                if (shouldRegisterArrays) {
                    registerArrays();
                }

                GL11.glDrawArrays(drawMode, drawBufferOffset, count);
            } catch (Throwable t) {
                throw new RuntimeException("glEnd: " + t);
            }
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
        if (attribTracker.enableTexture()) {
            vertexScratchpad[offset + 7] = texS;
            vertexScratchpad[offset + 8] = texT;
        }

        // Transform normals.
        if (attribTracker.enableLighting()) {
            // Assume model view is just rotations and translations, no shear or scale.
            // Otherwise, the upper left 3x3 part of transformation matrix would have
            // to be inversed and transposed first.
            vertexScratchpad[offset + 9] = nx * m.m00 + ny * m.m01 + nz * m.m02;
            vertexScratchpad[offset + 10] = nx * m.m10 + ny * m.m11 + nz * m.m12;
            vertexScratchpad[offset + 11] = nx * m.m20 + ny * m.m21 + nz * m.m22;
        }

        cachedVertices++;
    }

    public void glDrawArrays(int mode, int first, int count) {
        arraysTouched();

        // Array draw, as opposed to glBegin/gEnd block doesn't
        // have model matrix applied on the CPU side.
        Matrix4f m = modelView.getMatrix();
        final FloatBuffer mBuffer = BufferUtils.createFloatBuffer(16);
        m.storeTranspose(mBuffer);
        mBuffer.flip();

        // Vertex array snapshot. Not required if vertices are defined via VBO.
        if (clientAttribTracker.vertexPointer() != null) {
            final FloatBuffer vertexSnapshot = BufferUtil.snapshot(clientAttribTracker.vertexPointer());
            exec.execute(() -> GL11.glVertexPointer(VERTEX_SIZE_2D, 0, vertexSnapshot));
        }

        // Texture array snapshot.
        if (clientAttribTracker.enableTexCoordArray() && clientAttribTracker.texCoordPointer() != null) {
            final FloatBuffer texCoordSnapshot = BufferUtil.snapshot(clientAttribTracker.texCoordPointer());
            exec.execute(() -> GL11.glTexCoordPointer(TEX_SIZE, 0, texCoordSnapshot));
        }

        // Color array snapshot.
        if (clientAttribTracker.enableColorArray() && clientAttribTracker.colorPointer() != null) {
            final ByteBuffer colorSnapshot = BufferUtil.snapshot(clientAttribTracker.colorPointer());
            exec.execute(() -> GL11.glColorPointer(COLOR_SIZE, GL11.GL_UNSIGNED_BYTE, 0, colorSnapshot));
        }

        // Define color if GL_COLOR_ARRAY is disabled.
        if (!clientAttribTracker.enableColorArray()) {
            final float r = red, g = green, b = blue, a = alpha;

            exec.execute(() -> {
                GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
                GL11.glColor4f(r, g, b, a);
            });
        }

        attribTracker.applyEnableAndColorBufferBit();
        attribTracker.forceMatrixMode(GL11.GL_MODELVIEW);

        // Draw.
        exec.execute(() -> {
            try {
                GL11.glMultMatrix(mBuffer);
                GL11.glDrawArrays(mode, first, count);
                GL11.glLoadIdentity();
            } catch (Throwable t) {
                throw new RuntimeException("glEnd: " + t);
            }
        });
    }

    public Runnable recordedGlDrawArrays(int mode, int first, int count) {
        asert(first == 0);

        // Take snapshot of the buffers at the time of list recording.
        ByteBuffer colorReader = clientAttribTracker.colorPointer().duplicate().position(0);
        FloatBuffer vertexReader = clientAttribTracker.vertexPointer().duplicate().position(0);
        FloatBuffer texCoordReader = clientAttribTracker.texCoordPointer().duplicate().position(0);

        final float[] vertexSnapshot = new float[count * STRIDE];
        for (int i = 0; i < count; i++) {
            int offset = i * STRIDE;

            vertexSnapshot[offset + 3] = (colorReader.get() & 0xFF) / 255f;
            vertexSnapshot[offset + 4] = (colorReader.get() & 0xFF) / 255f;
            vertexSnapshot[offset + 5] = (colorReader.get() & 0xFF) / 255f;
            vertexSnapshot[offset + 6] = (colorReader.get() & 0xFF) / 255f;

            vertexSnapshot[offset + 7] = texCoordReader.get();
            vertexSnapshot[offset + 8] = texCoordReader.get();

            // Since vanilla is not recording arrays with normals, it is possible
            // to use normals indices to store untransformed vertices.
            vertexSnapshot[offset + 9] = vertexReader.get();
            vertexSnapshot[offset + 10] = vertexReader.get();
        }

        return () -> {
            // Prepare draw buffers.
            resizeDrawBuffers(count);
            final int drawBufferSize = vertexPointer.position() / STRIDE;

            final boolean shouldRegisterArrays = this.shouldRegisterArrays;
            this.shouldRegisterArrays = false;

            // Transform vertices;
            Matrix4f m = modelView.getMatrix();
            for (int i = 0; i < count; i++) {
                int offset = i * STRIDE;

                float x = vertexSnapshot[offset + 9];
                float y = vertexSnapshot[offset + 10];

                vertexSnapshot[offset + 0] = x * m.m00 + y * m.m01 + m.m03;
                vertexSnapshot[offset + 1] = x * m.m10 + y * m.m11 + m.m13;
            }

            vertexPointer.put(vertexSnapshot, 0, count * STRIDE);

            attribTracker.applyEnableAndColorBufferBit();
            exec.execute(() -> {
                try {
                    if (shouldRegisterArrays) {
                        registerArrays();
                    }

                    GL11.glDrawArrays(mode, drawBufferSize, count);
                } catch (Throwable t) {
                    throw new RuntimeException("recordedGlDrawArrays: " + t);
                }
            });
        };
    }

    /**
     * GL11.GL_LINE_LOOP and GL11.GL_LINE_STRIP cannot be converted from
     * a glBegin()/glEnd() block into glDrawArrays using the standard approach,
     * because that triggers Intel driver bugs and can produce malformed geometry.
     * <p>
     * Instead, LINE primitives are batched into a dedicated buffer without texCoords
     * or normals. Although allocating a new buffer for each draw is less efficient
     * than reusing a persistent buffer, LINES are drawn very infrequently, so the
     * overall performance impact is negligible.
     */
    private void drawLine(int mode, int count) {
        final int LINE_STRIDE = VERTEX_SIZE + COLOR_SIZE;
        final FloatBuffer linePointer = org.lwjgl.BufferUtils.createFloatBuffer(count * LINE_STRIDE);

        for (int i = 0; i < count; i++) {
            linePointer.put(vertexScratchpad, i * STRIDE, LINE_STRIDE);
        }

        attribTracker.applyEnableAndColorBufferBit();
        exec.execute(() -> {
            try {
                GL11.glVertexPointer(VERTEX_SIZE, LINE_STRIDE * Float.BYTES, linePointer.position(0));
                GL11.glColorPointer(COLOR_SIZE, LINE_STRIDE * Float.BYTES, linePointer.position(VERTEX_SIZE));

                GL11.glDrawArrays(mode, 0, count);

                registerArrays();
            } catch (Throwable t) {
                throw new RuntimeException("drawLine: " + t);
            }
        });

        cachedVertices = 0;
    }

    private void resizeDrawBuffers(int vertexNum) {
        if (vertexPointer.remaining() >= vertexNum * STRIDE) {
            return;
        }

        int currentSize = vertexPointer.capacity() / STRIDE;
        final int newSize = Math.max(currentSize * 2, currentSize + vertexNum);

        log(VertexInterceptor.class, "resize draw buffer to " + newSize + " vertices");

        exec.wait(() -> {
            try {
                vertexPointer = BufferUtils.createFloatBuffer(newSize * STRIDE);

                update();
            } catch (Throwable t) {
                throw new RuntimeException("resizeDrawBuffers: " + t);
            }
        });
    }
}
