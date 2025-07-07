package com.genir.renderer.bridge.rendering;

import com.genir.renderer.bridge.state.RenderContext;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;

import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

import static com.genir.renderer.Debug.logger;

public class Renderer {
    private final Stack<VertexBuffer> bufferPool = new Stack<>();
    private Map<RenderContext, VertexBuffer> buffers = new HashMap<>();
    private String layer = "";

    public void beginLayer(String layer) {
        // Put back quad buffers into pool for later reuse.
        for (Map.Entry<RenderContext, VertexBuffer> entry : buffers.entrySet()) {
            VertexBuffer buffer = entry.getValue();
            bufferPool.push(buffer);
        }

        this.buffers = new HashMap<>();
        this.layer = layer;
    }

    public void commitLayer() {
        logLayer();

        if (buffers.isEmpty()) {
            return;
        }

        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
        GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

        for (Map.Entry<RenderContext, VertexBuffer> entry : buffers.entrySet()) {
            RenderContext ctx = entry.getKey();
            VertexBuffer vertexBuffer = entry.getValue();

            // Texture context.
            if (ctx.enableTexture) {
                GL11.glEnable(GL11.GL_TEXTURE_2D);
                GL11.glBindTexture(ctx.textureTarget, ctx.textureID);
            } else {
                GL11.glDisable(GL11.GL_TEXTURE_2D);
            }

            // Blend context.
            if (ctx.enableBlend) {
                GL11.glEnable(GL11.GL_BLEND);
                GL11.glBlendFunc(ctx.blendSfactor, ctx.blendDfactor);
                GL14.glBlendEquation(ctx.blendEquation);
            } else {
                GL11.glDisable(GL11.GL_BLEND);
            }

            VertexBuffer.Buffers buffers = vertexBuffer.getBuffers();

            GL11.glVertexPointer(2, 0, buffers.vertices());
            GL11.glTexCoordPointer(2, 0, buffers.texCoord());
            GL11.glColorPointer(4, GL11.GL_UNSIGNED_BYTE, 0, buffers.colors());

            GL11.glDrawArrays(ctx.arrayMode(), 0, vertexBuffer.size());
        }

        // Cleanup.
        GL11.glDisable(GL11.GL_TEXTURE_2D);
        GL11.glDisable(GL11.GL_BLEND);
        GL14.glBlendEquation(GL14.GL_FUNC_ADD);

        GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
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

    private void logLayer() {
        int entities = 0;
        for (Map.Entry<RenderContext, VertexBuffer> entry : buffers.entrySet()) {
            VertexBuffer quads = entry.getValue();

            entities += quads.size();
        }

        if (entities > 0) {
            logger().info(layer + ": " + buffers.size() + " " + entities);
        }
    }
}
