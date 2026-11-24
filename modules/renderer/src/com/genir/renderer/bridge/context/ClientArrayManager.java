package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.interfaces.Releasable;
import com.genir.renderer.debug.Assert;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.Stack;

public class ClientArrayManager {
    // GL State.
    private final MatrixManager matrixManager;
    private final AttribManager attribManager;
    private final VertexInterceptor vertexInterceptor;
    private final Executor exec;

    private final ClientArrayAttribState state = new ClientArrayAttribState();
    private final Stack<AttribSnapshot> stateStack = new Stack<>();

    // Color.
    private float red;
    private float green;
    private float blue;
    private float alpha;

    // Recorded array draw buffers.
    private ByteBuffer texCoordPointer = BufferUtils.createByteBuffer(0);
    private ByteBuffer vertexPointer = BufferUtils.createByteBuffer(0);
    private ByteBuffer colorPointer = BufferUtils.createByteBuffer(0);

    public ClientArrayManager(
            MatrixManager matrixManager,
            AttribManager attribManager,
            VertexInterceptor vertexInterceptor,
            Executor exec
    ) {
        this.matrixManager = matrixManager;
        this.attribManager = attribManager;
        this.vertexInterceptor = vertexInterceptor;
        this.exec = exec;
    }

    //
    // Getters.
    //

    public ArrayPointersSnapshot makeArrayPointersSnapshot() {
        return new ArrayPointersSnapshot(
                state.enableVertexArray ? state.vertexPointer.getSnapshot() : null,
                state.enableTexCoordArray ? state.texCoordPointer.getSnapshot() : null,
                state.enableColorArray ? state.colorPointer.getSnapshot() : null);
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

    public void glColorPointer(int size, int type, int stride, Buffer pointer) {
        Assert.supported(stride, 0, "glColorPointer$stride");
        Assert.supported(pointer.position(), 0, "glColorPointer$position");

        state.colorPointer = new ArrayPointer(size, type, stride, pointer);
    }

    public void glTexCoordPointer(int size, int type, int stride, Buffer pointer) {
        Assert.supported(stride, 0, "glTexCoordPointer$stride");
        Assert.supported(pointer.position(), 0, "glTexCoordPointer$position");

        state.texCoordPointer = new ArrayPointer(size, type, stride, pointer);
    }

    public void glVertexPointer(int size, int type, int stride, Buffer pointer) {
        Assert.supported(stride, 0, "glVertexPointer$stride");
        Assert.supported(pointer.position(), 0, "glVertexPointer$position");

        state.vertexPointer = new ArrayPointer(size, type, stride, pointer);
    }

    public void glColorPointer(int size, int type, int stride, Long pointer) {
        Assert.supported(stride, 0, "glColorPointer$stride");
        Assert.supported(pointer, 0, "glColorPointer$pointer");

        state.colorPointer = new ArrayPointer(size, type, stride, null);
    }

    public void glTexCoordPointer(int size, int type, int stride, Long pointer) {
        Assert.supported(stride, 0, "glTexCoordPointer$stride");
        Assert.supported(pointer, 0, "glTexCoordPointer$pointer");

        state.texCoordPointer = new ArrayPointer(size, type, stride, null);
    }

    public void glVertexPointer(int size, int type, int stride, Long pointer) {
        Assert.supported(stride, 0, "glVertexPointer$stride");
        Assert.supported(pointer, 0, "glVertexPointer$pointer");

        state.vertexPointer = new ArrayPointer(size, type, stride, null);
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

    public void drawRecordedArrays(Runnable drawArraysCommand, ClientArrayManager.ArrayPointersSnapshot snapshot) {
        vertexInterceptor.arraysTouched();

        // Vertex array.
        final ArraySnapshot vs = snapshot.vertex();
        if (vs != null) {
            org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);

            if (vs.snapshot() != null) {
                vertexPointer = restoreSnapshot(vs, vertexPointer);
                ClientArray.glVertexPointer(vs.size(), vs.type(), vs.stride(), vertexPointer);
            }
        } else {
            org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
        }

        // Texture array.
        final ArraySnapshot ts = snapshot.texCoord();
        if (ts != null) {
            org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

            if (ts.snapshot() != null) {
                texCoordPointer = restoreSnapshot(ts, texCoordPointer);
                ClientArray.glTexCoordPointer(ts.size(), ts.type(), ts.stride(), texCoordPointer);
            }
        } else {
            org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        }

        // Color array.
        final ArraySnapshot cs = snapshot.color();
        if (cs != null) {
            org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);

            if (cs.snapshot() != null) {
                colorPointer = restoreSnapshot(cs, colorPointer);
                ClientArray.glColorPointer(cs.size(), cs.type(), cs.stride(), colorPointer);
            }
        } else {
            // Define color if GL_COLOR_ARRAY is disabled.
            org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
            org.lwjgl.opengl.GL11.glColor4f(red, green, blue, alpha);
        }

        // Normal array.
        org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_NORMAL_ARRAY);

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

    private ByteBuffer restoreSnapshot(ArraySnapshot snapshot, ByteBuffer pointer) {
        if (pointer.capacity() < snapshot.bytes()) {
            pointer = BufferUtils.createByteBuffer(snapshot.bytes());
        }

        snapshot.store(pointer.clear());
        return pointer.flip();
    }

    public record ArrayPointersSnapshot(ArraySnapshot vertex, ArraySnapshot texCoord, ArraySnapshot color) implements Releasable {
        @Override
        public void release() {
            if (vertex != null) vertex.release();
            if (texCoord != null) texCoord.release();
            if (color != null) color.release();
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

