package com.genir.renderer.bridge.rendering;

import com.genir.renderer.bridge.state.RenderContext;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;

import java.util.*;

import static com.genir.renderer.Debug.logger;

public class Renderer {
    private final Stack<VertexBuffer> bufferPool = new Stack<>();
    private Map<RenderContext, VertexBuffer> buffers = new HashMap<>();
    private String layer = "";

    public static int useCount = 0;

    public void beginLayer(String layer) {
        // Put back quad buffers into pool for later reuse.
        for (Map.Entry<RenderContext, VertexBuffer> entry : buffers.entrySet()) {
            VertexBuffer buffer = entry.getValue();
            bufferPool.push(buffer);
        }

        this.buffers = new HashMap<>();
        this.layer = layer;

        useCount = 0;
    }

    public void commitLayer() {
        logLayer();

        if (buffers.isEmpty()) {
            return;
        }

        // Vertices are already transformed into model frame.
        GL11.glMatrixMode(GL11.GL_MODELVIEW);
        GL11.glPushMatrix();
        GL11.glLoadIdentity();

        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
        GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

        List<Map.Entry<RenderContext, VertexBuffer>> bufferList = new java.util.ArrayList<>(buffers.entrySet().stream().toList());
        bufferList.sort(Comparator.comparingInt(o -> o.getValue().lastUsed));

        for (Map.Entry<RenderContext, VertexBuffer> entry : bufferList) {
            RenderContext ctx = entry.getKey();
            VertexBuffer vertexBuffer = entry.getValue();

            GL11.glColorMask(ctx.maskRed, ctx.maskGreen, ctx.maskBlue, ctx.maskAlpha);

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

            // Stencil context.
            if (ctx.enableStencil) {
                GL11.glEnable(GL11.GL_STENCIL_TEST);
                GL11.glStencilFunc(ctx.stencilFunc, ctx.stencilRef, ctx.stencilMask);
                GL11.glStencilOp(ctx.stencilFail, ctx.stencilZfail, ctx.stencilZpass);
            } else {
                GL11.glDisable(GL11.GL_STENCIL_TEST);
            }

            // Alpha context.
            if (ctx.enableAlpha) {
                GL11.glEnable(GL11.GL_ALPHA_TEST);
                GL11.glAlphaFunc(ctx.alphaFunc, ctx.alphaRef);
            } else {
                GL11.glDisable(GL11.GL_ALPHA_TEST);
            }

            VertexBuffer.Buffers buffers = vertexBuffer.getFlippedBuffers();

            if (ctx.enableTexture) {
                GL11.glTexCoordPointer(2, 0, buffers.texCoord());
            }
            GL11.glColorPointer(4, GL11.GL_UNSIGNED_BYTE, 0, buffers.colors());
            GL11.glVertexPointer(2, 0, buffers.vertices());

            GL11.glDrawArrays(ctx.arrayMode(), 0, vertexBuffer.size());
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
