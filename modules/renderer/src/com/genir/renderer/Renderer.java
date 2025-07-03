package com.genir.renderer;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.genir.renderer.bridge.GL14;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class Renderer {
    private Map<QuadContext, List<Quad>> buffer = new HashMap<>();

    private int maxSprites = 0;
    private FloatBuffer vertexBuffer = BufferUtils.createFloatBuffer(0);
    private FloatBuffer textureBuffer = BufferUtils.createFloatBuffer(0);
    private ByteBuffer colorBuffer = BufferUtils.createByteBuffer(0);

    private String currentLayer = "";

    public void beginLayer(CombatEngineLayers layer) {
        beginLayer(layer.name());
    }

    public void beginLayer(String layer) {
        currentLayer = layer;
        buffer = new HashMap<>();
    }

    public void commitLayer() {
        currentLayer = "";
        renderLayer();
    }

    public void addQuad(QuadContext ctx, Quad q) {
        List<Quad> quads = buffer.computeIfAbsent(ctx, k -> new LinkedList<>());

        quads.add(q);
    }

    private void renderLayer() {
        if (buffer.isEmpty()) {
            return;
        }

        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
        GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glEnable(GL11.GL_TEXTURE_2D);
        GL11.glEnable(GL11.GL_BLEND);

        initBuffers();

        for (Map.Entry<QuadContext, List<Quad>> entry : buffer.entrySet()) {
            QuadContext key = entry.getKey();
            List<Quad> quads = entry.getValue();

            GL11.glBindTexture(key.textureTarget, key.textureID);
            GL11.glBlendFunc(key.blendSfactor, key.blendDfactor);
            GL14.glBlendEquation(key.blendEquation);

            vertexBuffer.clear();
            textureBuffer.clear();
            colorBuffer.clear();

            for (Quad q : quads) {
                byte[] colors = {
                        q.color[0], q.color[1], q.color[2], q.color[3],
                        q.color[0], q.color[1], q.color[2], q.color[3],
                        q.color[0], q.color[1], q.color[2], q.color[3],
                        q.color[0], q.color[1], q.color[2], q.color[3],
                };

                vertexBuffer.put(q.vertexes);
                textureBuffer.put(q.texCoord);
                colorBuffer.put(colors);
            }

            vertexBuffer.flip();
            textureBuffer.flip();
            colorBuffer.flip();

            GL11.glVertexPointer(2, 0, vertexBuffer);
            GL11.glTexCoordPointer(2, 0, textureBuffer);
            GL11.glColorPointer(4, GL11.GL_UNSIGNED_BYTE, 0, colorBuffer);
            GL11.glDrawArrays(GL11.GL_QUADS, 0, quads.size() * 4);
        }

        GL11.glDisable(GL11.GL_BLEND);
        GL11.glDisable(GL11.GL_TEXTURE_2D);
        GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
        GL14.glBlendEquation(Default.blendEquation);
    }

    private void initBuffers() {
        int currentMaxSprites = 0;
        for (Map.Entry<QuadContext, List<Quad>> entry : buffer.entrySet()) {
            List<Quad> sprites = entry.getValue();

            if (sprites.size() > currentMaxSprites) {
                currentMaxSprites = sprites.size();
            }
        }

        if (currentMaxSprites > maxSprites) {
            maxSprites = currentMaxSprites;

            vertexBuffer = BufferUtils.createFloatBuffer(maxSprites * 4 * 2);
            textureBuffer = BufferUtils.createFloatBuffer(maxSprites * 4 * 2);
            colorBuffer = BufferUtils.createByteBuffer(maxSprites * 4 * 4);
        }

        vertexBuffer.clear();
        textureBuffer.clear();
        colorBuffer.clear();
    }

    public record QuadContext(
            int textureTarget,
            int textureID,
            int blendSfactor,
            int blendDfactor,
            int blendEquation) {
    }

    public record Quad(
            byte[] color,
            float[] texCoord,
            float[] vertexes) {
    }
}
