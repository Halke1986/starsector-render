package com.genir.renderer.bridge;

import com.fs.starfarer.api.combat.CombatEngineLayers;

import org.lwjgl.BufferUtils;

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

        org.lwjgl.opengl.GL11.glEnableClientState(org.lwjgl.opengl.GL11.GL_VERTEX_ARRAY);
        org.lwjgl.opengl.GL11.glEnableClientState(org.lwjgl.opengl.GL11.GL_TEXTURE_COORD_ARRAY);
        org.lwjgl.opengl.GL11.glEnableClientState(org.lwjgl.opengl.GL11.GL_COLOR_ARRAY);
        org.lwjgl.opengl.GL11.glEnable(org.lwjgl.opengl.GL11.GL_TEXTURE_2D);
        org.lwjgl.opengl.GL11.glEnable(org.lwjgl.opengl.GL11.GL_BLEND);

        initBuffers();

        for (Map.Entry<QuadContext, List<Quad>> entry : buffer.entrySet()) {
            QuadContext key = entry.getKey();
            List<Quad> quads = entry.getValue();

            org.lwjgl.opengl.GL11.glBindTexture(key.textureTarget, key.textureID);
            org.lwjgl.opengl.GL11.glBlendFunc(key.blendSfactor, key.blendDfactor);

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

            org.lwjgl.opengl.GL11.glVertexPointer(2, 0, vertexBuffer);
            org.lwjgl.opengl.GL11.glTexCoordPointer(2, 0, textureBuffer);
            org.lwjgl.opengl.GL11.glColorPointer(4, org.lwjgl.opengl.GL11.GL_UNSIGNED_BYTE, 0, colorBuffer);
            org.lwjgl.opengl.GL11.glDrawArrays(org.lwjgl.opengl.GL11.GL_QUADS, 0, quads.size() * 4);
        }

        org.lwjgl.opengl.GL11.glDisable(org.lwjgl.opengl.GL11.GL_BLEND);
        org.lwjgl.opengl.GL11.glDisable(org.lwjgl.opengl.GL11.GL_TEXTURE_2D);
        org.lwjgl.opengl.GL11.glDisableClientState(org.lwjgl.opengl.GL11.GL_COLOR_ARRAY);
        org.lwjgl.opengl.GL11.glDisableClientState(org.lwjgl.opengl.GL11.GL_TEXTURE_COORD_ARRAY);
        org.lwjgl.opengl.GL11.glDisableClientState(org.lwjgl.opengl.GL11.GL_VERTEX_ARRAY);
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
            int blendDfactor) {
    }

    public record Quad(
            byte[] color,
            float[] texCoord,
            float[] vertexes) {
    }
}
