package com.genir.renderer.bridge.rendering;

import com.genir.renderer.bridge.state.RenderContext;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Map;

public class VertexRepository {
    private final BufferPool bufferPool;
    private Map<RenderContext, VertexBuffer> buffers;

    public VertexRepository(BufferPool bufferPool) {
        this.bufferPool = bufferPool;
    }

    public void clear() {
        // Put back quad buffers into pool for later reuse.
        if (buffers != null) {
            bufferPool.returnBuffers(buffers.values());
        }

        this.buffers = new HashMap<>();
    }

    public Map<RenderContext, VertexBuffer> getBuffers() {
        return buffers;
    }

    public void addVertices(RenderContext ctx, byte[] colors, float[] texCoord, float[] vertices, int verticesToAdd) {
        VertexBuffer buffer = getVertexBuffer(ctx);
        buffer.addVertices(colors, texCoord, vertices, verticesToAdd);
    }

    public void addVertices(RenderContext ctx, ByteBuffer colors, FloatBuffer texCoord, float[] vertices, int verticesToAdd) {
        VertexBuffer buffer = getVertexBuffer(ctx);
        buffer.addVertices(colors, texCoord, vertices, verticesToAdd);
    }

    public void addVertices(RenderContext ctx, VertexBuffer vertexBuffer) {
        VertexBuffer buffer = getVertexBuffer(ctx);
        buffer.addVertices(vertexBuffer);
    }

    private VertexBuffer getVertexBuffer(RenderContext ctx) {
        VertexBuffer buffer = buffers.get(ctx);
        if (buffer != null) {
            return buffer;
        }

        VertexBuffer newBuffer = bufferPool.getBuffer();
        buffers.put(ctx.copy(), newBuffer);

        return newBuffer;
    }
}
