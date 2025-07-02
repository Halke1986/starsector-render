package com.genir.graphics;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.fs.starfarer.api.combat.CombatLayeredRenderingPlugin;
import com.fs.starfarer.api.impl.combat.threat.RoilingSwarmEffect;
import com.fs.starfarer.combat.entities.CustomCombatEntity;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class Renderer {
    private static Map<QuadContext, List<Quad>> buffer = new HashMap<>();

    private static int maxSprites = 0;
    private static FloatBuffer vertexBuffer = BufferUtils.createFloatBuffer(0);
    private static FloatBuffer textureBuffer = BufferUtils.createFloatBuffer(0);
    private static ByteBuffer colorBuffer = BufferUtils.createByteBuffer(0);

    private static String currentLayer = "";

    public static void beginLayer(CombatEngineLayers layer) {
        beginLayer(layer.name());
    }

    public static void beginLayer(String layer) {
        currentLayer = layer;
        buffer = new HashMap<>();
    }

    public static void commitLayer() {
        currentLayer = "";
        renderLayer();
    }

    public static void beginEntity(Object entity) {
        if (entity instanceof CustomCombatEntity) {
            CombatLayeredRenderingPlugin plugin = ((CustomCombatEntity) entity).getPlugin();

            if (plugin instanceof RoilingSwarmEffect) {
                GLBridge.startIntercept();
            }
        }
    }

    public static void commitEntity() {
        GLBridge.endIntercept();
    }

    public static void addQuad(QuadContext ctx, Quad q) {
        List<Quad> quads = buffer.computeIfAbsent(ctx, k -> new LinkedList<>());

        quads.add(q);
    }

    private static void renderLayer() {
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
    }

    private static void initBuffers() {
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

    public static class Quad {
        byte[] color;

        FloatBuffer texCoord;
        FloatBuffer vertexes;
    }
}
