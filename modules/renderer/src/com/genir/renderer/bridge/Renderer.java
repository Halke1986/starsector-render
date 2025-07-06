package com.genir.renderer.bridge;

import com.genir.renderer.bridge.state.RenderContext;
import org.lwjgl.opengl.GL11;

import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

public class Renderer {
    private final Stack<VertexBuffer> bufferPool = new Stack<>();
    private Map<RenderContext, VertexBuffer> buffers = new HashMap<>();

    public void beginLayer() {
        for (Map.Entry<RenderContext, VertexBuffer> entry : buffers.entrySet()) {
            VertexBuffer buffer = entry.getValue();
            bufferPool.push(buffer);
        }

        buffers = new HashMap<>();
    }

    public void commitLayer() {
        if (buffers.isEmpty()) {
            return;
        }

        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
        GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glEnable(GL11.GL_TEXTURE_2D);
        GL11.glEnable(GL11.GL_BLEND);

        for (Map.Entry<RenderContext, VertexBuffer> entry : buffers.entrySet()) {
            RenderContext ctx = entry.getKey();
            VertexBuffer vertexBuffer = entry.getValue();

            GL11.glBindTexture(ctx.textureTarget, ctx.textureID);
            GL11.glBlendFunc(ctx.blendSfactor, ctx.blendDfactor);
            GL14.glBlendEquation(ctx.blendEquation);

            VertexBuffer.Buffers buffers = vertexBuffer.getBuffers();

            GL11.glVertexPointer(2, 0, buffers.vertices());
            GL11.glTexCoordPointer(2, 0, buffers.texCoord());
            GL11.glColorPointer(4, GL11.GL_UNSIGNED_BYTE, 0, buffers.colors());

            GL11.glDrawArrays(GL11.GL_QUADS, 0, vertexBuffer.size());
        }

        GL11.glDisable(GL11.GL_BLEND);
        GL11.glDisable(GL11.GL_TEXTURE_2D);
        GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
        GL14.glBlendEquation(Default.blendEquation);
    }

    public VertexBuffer getVertexBuffer(RenderContext ctx) {
        VertexBuffer buffer = buffers.get(ctx);
        if (buffer != null) {
            return buffer;
        }

        VertexBuffer newBuffer = (bufferPool.isEmpty()) ? new VertexBuffer() : bufferPool.pop();
        buffers.put(ctx.copy(), newBuffer);

        newBuffer.clear();
        return newBuffer;
    }
}
