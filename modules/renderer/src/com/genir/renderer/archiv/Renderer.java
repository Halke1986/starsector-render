package com.genir.renderer.archiv;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class Renderer {
    private final ByteBuffer colors = BufferUtils.createByteBuffer(1 << 16);
    private final FloatBuffer texCoords = BufferUtils.createFloatBuffer(1 << 15);
    private final FloatBuffer vertices = BufferUtils.createFloatBuffer(1 << 15);

    public void beginLayer() {
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
    }

    public void commitLayer() {
        // Cleanup.
        GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);

        GL11.glPopMatrix();
    }

    public void drawPrimitives(int mode, byte[] colors, float[] texCoords, float[] vertices, int numVertices) {
        if (numVertices == 0) {
            return;
        }

        this.colors.clear();
        this.texCoords.clear();
        this.vertices.clear();

        this.colors.put(colors, 0, numVertices * 4);
        this.texCoords.put(texCoords, 0, numVertices * 2);
        this.vertices.put(vertices, 0, numVertices * 2);

        this.colors.flip();
        this.texCoords.flip();
        this.vertices.flip();

        GL11.glDrawArrays(mode, 0, numVertices);
    }
}
