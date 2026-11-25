package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.context.array.*;
import com.genir.renderer.debug.Assert;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL13;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.Stack;

public class ClientArrayManager {
    // GL State.
    private final MatrixManager matrixManager;
    private final AttribManager attribManager;
    private final VertexInterceptor vertexInterceptor;

    private final ClientArrayAttribState state = new ClientArrayAttribState();
    private final Stack<AttribSnapshot> stateStack = new Stack<>();

    // Color.
    private float red;
    private float green;
    private float blue;
    private float alpha;

    public ClientArrayManager(
            MatrixManager matrixManager,
            AttribManager attribManager,
            VertexInterceptor vertexInterceptor
    ) {
        this.matrixManager = matrixManager;
        this.attribManager = attribManager;
        this.vertexInterceptor = vertexInterceptor;
    }

    //
    // Getters.
    //

    public ArraysSnapshot makeArrayPointersSnapshot() {
        return new ArraysSnapshot(
                state.enableVertexArray ? state.vertexPointer.makeSnapshot() : null,
                state.enableTexCoordArray ? state.texCoordPointer.makeSnapshot() : null,
                state.enableColorArray ? state.colorPointer.makeSnapshot() : null);
    }

    public void assertArrayPointersCapacity(int first, int count) {
        int required = first + count;

        if (first < 0) {
            throw new AssertionError("Invalid draw range: first=" + first);
        }

        if (state.enableVertexArray) {
            int capacity = state.vertexPointer.getCapacity();
            if (capacity != -1 && capacity < required) {
                throw new AssertionError("Insufficient vertex array size: " + capacity + "<" + required);
            }
        }

        if (state.enableTexCoordArray) {
            int capacity = state.texCoordPointer.getCapacity();
            if (capacity != -1 && capacity < required) {
                throw new AssertionError("Insufficient texture array size: " + capacity + "<" + required);
            }
        }

        if (state.enableColorArray) {
            int capacity = state.colorPointer.getCapacity();
            if (capacity != -1 && capacity < required) {
                throw new AssertionError("Insufficient color array size: " + capacity + "<" + required);
            }
        }
    }

    //
    // GL calls.
    //

    public void glColor4f(float red, float green, float blue, float alpha) {
        this.red = red;
        this.green = green;
        this.blue = blue;
        this.alpha = alpha;
    }

    public void glPushClientAttrib(int mask) {
        // Save expected state.
        ClientArrayAttribState stateSnapshot = new ClientArrayAttribState();
        stateSnapshot.overwriteWith(state, mask);
        stateStack.push(new AttribSnapshot(stateSnapshot, mask));
    }

    public void glPopClientAttrib() {
        // GL_STACK_UNDERFLOW
        if (stateStack.isEmpty()) {
            return;
        }

        AttribSnapshot snapshot = stateStack.pop();
        state.overwriteWith(snapshot.state(), snapshot.attribMask());
    }

    public void glEnableClientState(int cap) {
        Assert.supported(cap, cap == GL11.GL_VERTEX_ARRAY ||
                cap == GL11.GL_TEXTURE_COORD_ARRAY ||
                cap == GL11.GL_COLOR_ARRAY, "glEnableClientState$cap");

        setState(cap, true);
    }

    public void glDisableClientState(int cap) {
        Assert.supported(cap, cap == GL11.GL_VERTEX_ARRAY ||
                cap == GL11.GL_TEXTURE_COORD_ARRAY ||
                cap == GL11.GL_COLOR_ARRAY, "glDisableClientState$cap");

        setState(cap, false);
    }

    public void glColorPointer(int size, int type, int stride, ByteBuffer pointer) {
        Assert.supported(stride, 0, "glColorPointer$stride");
        Assert.supported(pointer.position(), 0, "glColorPointer$position");

        state.colorPointer = new ArrayPointerByte(size, type, stride, pointer);
    }

    public void glColorPointer(int size, int type, int stride, FloatBuffer pointer) {
        Assert.supported(stride, 0, "glColorPointer$stride");
        Assert.supported(pointer.position(), 0, "glColorPointer$position");

        state.colorPointer = new ArrayPointerFloat(size, type, stride, pointer);
    }

    public void glTexCoordPointer(int size, int type, int stride, ByteBuffer pointer) {
        Assert.supported(stride, 0, "glTexCoordPointer$stride");
        Assert.supported(pointer.position(), 0, "glTexCoordPointer$position");

        state.texCoordPointer = new ArrayPointerByte(size, type, stride, pointer);
    }

    public void glTexCoordPointer(int size, int type, int stride, FloatBuffer pointer) {
        Assert.supported(stride, 0, "glTexCoordPointer$stride");
        Assert.supported(pointer.position(), 0, "glTexCoordPointer$position");

        state.texCoordPointer = new ArrayPointerFloat(size, type, stride, pointer);
    }

    public void glVertexPointer(int size, int type, int stride, ByteBuffer pointer) {
        Assert.supported(stride, 0, "glVertexPointer$stride");
        Assert.supported(pointer.position(), 0, "glVertexPointer$position");

        state.vertexPointer = new ArrayPointerByte(size, type, stride, pointer);
    }

    public void glVertexPointer(int size, int type, int stride, FloatBuffer pointer) {
        Assert.supported(stride, 0, "glVertexPointer$stride");
        Assert.supported(pointer.position(), 0, "glVertexPointer$position");

        state.vertexPointer = new ArrayPointerFloat(size, type, stride, pointer);
    }

    public void glColorPointer(int size, int type, int stride, Long pointer) {
        state.colorPointer = new ArrayPointerGLBuffer(size, type, stride, pointer);
    }

    public void glTexCoordPointer(int size, int type, int stride, Long pointer) {
        state.texCoordPointer = new ArrayPointerGLBuffer(size, type, stride, pointer);
    }

    public void glVertexPointer(int size, int type, int stride, Long pointer) {
        state.vertexPointer = new ArrayPointerGLBuffer(size, type, stride, pointer);
    }

    private void setState(int cap, boolean value) {
        switch (cap) {
            case GL11.GL_VERTEX_ARRAY:
                state.enableVertexArray = value;
                break;
            case GL11.GL_TEXTURE_COORD_ARRAY:
                state.enableTexCoordArray = value;
                break;
            case GL11.GL_COLOR_ARRAY:
                state.enableColorArray = value;
                break;
        }
    }

    //
    // Draw.
    //

    public void drawRecordedArrays(Runnable drawArraysCommand, ArraysSnapshot snapshot) {
        vertexInterceptor.arraysTouched();

        restoreVertexSnapshot(snapshot.vertex());
        restoreTextureSnapshot(snapshot.texCoord());
        restoreColorSnapshot(snapshot.color());

        // Cleanup state potentially left by VertexInterceptor.
        org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_NORMAL_ARRAY);
        org.lwjgl.opengl.GL13.glClientActiveTexture(GL13.GL_TEXTURE1);
        org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        org.lwjgl.opengl.GL13.glClientActiveTexture(GL13.GL_TEXTURE0);

        // Move model transformation from CPU to GPU.
        // The vertex array is stored in object/local space rather than pre-transformed
        // into model space, since the model matrix can change every time the array is drawn.
        // Applying the transformation on the GPU avoids repeatedly un-packing the array,
        // transforming vertices on the CPU, and re-packing the data for each draw call.
        matrixManager.setGPUMode();

        // Draw.
        attribManager.applyDrawAttribs();
        drawArraysCommand.run();

        // Move model transformation back to CPU.
        matrixManager.setCPUMode();
    }

    private void restoreVertexSnapshot(ArraySnapshot snapshot) {
        if (snapshot == null) {
            org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
            return;
        }

        org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);

        if (snapshot instanceof ArraySnapshotByte bytes) {
            ClientArray.glVertexPointer(bytes.size, bytes.type, bytes.stride, bytes.snapshot.buffer);
        } else if (snapshot instanceof ArraySnapshotFloat floats) {
            ClientArray.glVertexPointer(floats.size, floats.stride, floats.snapshot.buffer);
        } else if (snapshot instanceof ArraySnapshotGLBuffer glBuffer) {
            // TODO proper pointer restore, based on a native pointer.
        } else {
            throw new UnsupportedOperationException();
        }
    }

    private void restoreTextureSnapshot(ArraySnapshot snapshot) {
        if (snapshot == null) {
            org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
            return;
        }

        org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

        if (snapshot instanceof ArraySnapshotByte bytes) {
            ClientArray.glTexCoordPointer(bytes.size, bytes.type, bytes.stride, bytes.snapshot.buffer);
        } else if (snapshot instanceof ArraySnapshotFloat floats) {
            ClientArray.glTexCoordPointer(floats.size, floats.stride, floats.snapshot.buffer);
        } else if (snapshot instanceof ArraySnapshotGLBuffer glBuffer) {
            // TODO proper pointer restore, based on a native pointer.
        } else {
            throw new UnsupportedOperationException();
        }
    }

    private void restoreColorSnapshot(ArraySnapshot snapshot) {
        if (snapshot == null) {
            // Define color if GL_COLOR_ARRAY is disabled.
            org.lwjgl.opengl.GL11.glColor4f(red, green, blue, alpha);
            org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
            return;
        }

        org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);

        if (snapshot instanceof ArraySnapshotByte bytes) {
            ClientArray.glColorPointer(bytes.size, bytes.type, bytes.stride, bytes.snapshot.buffer);
        } else if (snapshot instanceof ArraySnapshotFloat floats) {
            ClientArray.glColorPointer(floats.size, floats.stride, floats.snapshot.buffer);
        } else if (snapshot instanceof ArraySnapshotGLBuffer glBuffer) {
            // TODO proper pointer restore, based on a native pointer.
        } else {
            throw new UnsupportedOperationException();
        }
    }

    private record AttribSnapshot(ClientArrayAttribState state, int attribMask) {
    }

    private static class ClientArrayAttribState {
        // GL11.GL_CLIENT_VERTEX_ARRAY_BIT
        public boolean enableVertexArray = false;
        public boolean enableTexCoordArray = false;
        public boolean enableColorArray = false;

        public ArrayPointer vertexPointer = null;
        public ArrayPointer texCoordPointer = null;
        public ArrayPointer colorPointer = null;

        public void overwriteWith(ClientArrayAttribState source, int attribMask) {
            if ((attribMask & GL11.GL_CLIENT_VERTEX_ARRAY_BIT) != 0) {
                enableVertexArray = source.enableVertexArray;
                enableTexCoordArray = source.enableTexCoordArray;
                enableColorArray = source.enableColorArray;

                vertexPointer = source.vertexPointer;
                texCoordPointer = source.texCoordPointer;
                colorPointer = source.colorPointer;
            }
        }
    }
}

