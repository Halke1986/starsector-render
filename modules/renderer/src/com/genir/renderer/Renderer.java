package com.genir.renderer;

import com.genir.renderer.bridge.GL14;
import org.lwjgl.opengl.GL11;

import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

public class Renderer {
    private final Stack<QuadBuffer> quadsPool = new Stack<>();
    private Map<QuadContext, QuadBuffer> buffer = new HashMap<>();

    public void beginLayer() {
        for (Map.Entry<QuadContext, QuadBuffer> entry : buffer.entrySet()) {
            QuadBuffer quads = entry.getValue();
            quadsPool.push(quads);
        }

        buffer = new HashMap<>();
    }

    public void commitLayer() {
        if (buffer.isEmpty()) {
            return;
        }

        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
        GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glEnable(GL11.GL_TEXTURE_2D);
        GL11.glEnable(GL11.GL_BLEND);

        for (Map.Entry<QuadContext, QuadBuffer> entry : buffer.entrySet()) {
            QuadContext key = entry.getKey();
            QuadBuffer quads = entry.getValue();

            GL11.glBindTexture(key.textureTarget, key.textureID);
            GL11.glBlendFunc(key.blendSfactor, key.blendDfactor);
            GL14.glBlendEquation(key.blendEquation);

            QuadBuffer.Buffers buffers = quads.getBuffers();

            GL11.glVertexPointer(2, 0, buffers.vertices());
            GL11.glTexCoordPointer(2, 0, buffers.texCoord());
            GL11.glColorPointer(4, GL11.GL_UNSIGNED_BYTE, 0, buffers.colors());
            GL11.glDrawArrays(GL11.GL_QUADS, 0, quads.size() * 4);
        }

        GL11.glDisable(GL11.GL_BLEND);
        GL11.glDisable(GL11.GL_TEXTURE_2D);
        GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
        GL14.glBlendEquation(Default.blendEquation);
    }

    public QuadBuffer getQuads(QuadContext ctx) {
        QuadBuffer quads = buffer.get(ctx);
        if (quads != null) {
            return quads;
        }

        QuadBuffer newQuads = (quadsPool.isEmpty()) ? new QuadBuffer() : quadsPool.pop();
        buffer.put(ctx, newQuads);

        newQuads.clear();
        return newQuads;
    }

    public record QuadContext(
            int textureTarget,
            int textureID,
            int blendSfactor,
            int blendDfactor,
            int blendEquation) {
    }
}
