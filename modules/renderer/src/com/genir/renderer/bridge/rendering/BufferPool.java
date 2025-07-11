package com.genir.renderer.bridge.rendering;

import java.util.Collection;
import java.util.Stack;

public class BufferPool {
    private final Stack<VertexBuffer> bufferPool = new Stack<>();

    public VertexBuffer getBuffer() {
        return (bufferPool.isEmpty()) ? new VertexBuffer() : bufferPool.pop();
    }

    public void returnBuffers(Collection<VertexBuffer> buffers) {
        for (VertexBuffer buffer : buffers) {
            buffer.clear();
            bufferPool.push(buffer);
        }
    }
}
