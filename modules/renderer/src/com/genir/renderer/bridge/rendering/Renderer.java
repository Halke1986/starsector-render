package com.genir.renderer.bridge.rendering;

import com.genir.renderer.bridge.state.RenderContext;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Map;

import static com.genir.renderer.Debug.logger;

public class Renderer {
    private final BufferPool bufferPool = new BufferPool();
    private final Map<RenderContext, VertexBuffer> buffers = new HashMap<>();

    private ByteBuffer colors = BufferUtils.createByteBuffer(0);
    private FloatBuffer texCoords = BufferUtils.createFloatBuffer(0);
    private FloatBuffer vertices = BufferUtils.createFloatBuffer(0);

    private String layer = "";

    public void beginLayer(String layer) {
        this.layer = layer;

        // Put back quad buffers into pool for later reuse.
        bufferPool.returnBuffers(buffers.values());
        buffers.clear();
    }

    public void commitLayer() {
        if (buffers.isEmpty()) {
            return;
        }

        ensureBufferCapacity();

        // Vertices are already transformed into model frame.
        GL11.glMatrixMode(GL11.GL_MODELVIEW);
        GL11.glPushMatrix();
        GL11.glLoadIdentity();

        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
        GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

        GL11.glColorPointer(4, GL11.GL_UNSIGNED_BYTE, 0, colors);
        GL11.glTexCoordPointer(2, 0, texCoords);
        GL11.glVertexPointer(2, 0, vertices);

        for (Map.Entry<RenderContext, VertexBuffer> entry : buffers.entrySet()) {
            RenderContext ctx = entry.getKey();

            VertexBuffer vertexBuffer = entry.getValue();
            drawBuffer(ctx, vertexBuffer);
        }

        // Cleanup.
        GL11.glDisable(GL11.GL_ALPHA_TEST);
        GL11.glDisable(GL11.GL_STENCIL_TEST);
        GL11.glDisable(GL11.GL_BLEND);
        GL14.glBlendEquation(GL14.GL_FUNC_ADD);
        GL11.glDisable(GL11.GL_TEXTURE_2D);

        GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);

        GL11.glPopMatrix();

        GL11.glClearStencil(0);
        GL11.glStencilMask(0xFF);
        GL11.glClear(GL11.GL_STENCIL_BUFFER_BIT);
    }

    public VertexBuffer getVertexBuffer(RenderContext ctx) {
        VertexBuffer buffer = buffers.get(ctx);
        if (buffer != null) {
            return buffer;
        }

        VertexBuffer newBuffer = bufferPool.getBuffer();
        buffers.put(ctx.copy(), newBuffer);

        return newBuffer;
    }

    private void ensureBufferCapacity() {
        int maxVertices = 0;

        for (Map.Entry<RenderContext, VertexBuffer> entry : buffers.entrySet()) {
            VertexBuffer vertexBuffer = entry.getValue();

            if (vertexBuffer.size() > maxVertices) {
                maxVertices = vertexBuffer.size();
            }
        }

        if (maxVertices * 2 > vertices.capacity()) {
            colors = BufferUtils.createByteBuffer(maxVertices * 2 * 4);
            texCoords = BufferUtils.createFloatBuffer(maxVertices * 2 * 2);
            vertices = BufferUtils.createFloatBuffer(maxVertices * 2 * 2);
        }
    }

    private void drawBuffer(RenderContext ctx, VertexBuffer vertexBuffer) {
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

        vertexBuffer.exportVertices(colors, texCoords, vertices);

        GL11.glDrawArrays(GL11.GL_QUADS, 0, vertexBuffer.size());
    }

    private void logLayer(Map<RenderContext, VertexBuffer> buffers) {
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
