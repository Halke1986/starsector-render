package com.genir.renderer.bridge.rendering;

import com.genir.renderer.bridge.state.RenderContext;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;

import java.awt.*;
import java.util.Map;

import static com.genir.renderer.Debug.logger;

public class Renderer {
    private final VertexRepository vertexRepository;

    private String layer = "";

    public Renderer(VertexRepository vertexRepository) {
        this.vertexRepository = vertexRepository;
    }

    public void beginLayer(String layer) {

    }

    public void commitLayer() {
        Map<RenderContext, VertexBuffer> buffers = vertexRepository.getBuffers();

        logLayer(buffers);
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

        for (Map.Entry<RenderContext, VertexBuffer> entry : buffers.entrySet()) {
            RenderContext ctx = entry.getKey();

            if (ctx.enableStencil && ctx.stencilFunc == GL11.GL_NEVER) {
                VertexBuffer vertexBuffer = entry.getValue();
                drawBuffer(ctx, vertexBuffer);
            }
        }

        for (Map.Entry<RenderContext, VertexBuffer> entry : buffers.entrySet()) {
            RenderContext ctx = entry.getKey();

            if (!ctx.enableStencil || ctx.stencilFunc != GL11.GL_NEVER) {
                VertexBuffer vertexBuffer = entry.getValue();
                drawBuffer(ctx, vertexBuffer);
            }
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

    public static void drawRectangle(float var0, float var1, float var2, float var3, Color var4, float var5) {
        GL11.glColor4ub((byte) var4.getRed(), (byte) var4.getGreen(), (byte) var4.getBlue(), (byte) ((int) ((float) var4.getAlpha() * var5)));
        GL11.glBegin(7);
        GL11.glVertex2f(var0, var1);
        GL11.glVertex2f(var0, var1 + var3);
        GL11.glVertex2f(var0 + var2, var1 + var3);
        GL11.glVertex2f(var0 + var2, var1);
        GL11.glEnd();
    }

    private void drawBuffer(RenderContext ctx, VertexBuffer vertexBuffer) {
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
            GL11.glStencilFunc(ctx.stencilFunc, ctx.stencilRef, ctx.stencilFuncMask);
            GL11.glStencilOp(ctx.stencilFail, ctx.stencilZfail, ctx.stencilZpass);
            GL11.glStencilMask(ctx.stencilMask);
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
            GL11.glTexCoordPointer(2, 0, buffers.texCoords());
        }
        GL11.glColorPointer(4, GL11.GL_UNSIGNED_BYTE, 0, buffers.colors());
        GL11.glVertexPointer(2, 0, buffers.vertices());

        GL11.glDrawArrays(ctx.arrayMode(), 0, vertexBuffer.size());
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
