package com.genir.graphics;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import org.apache.log4j.Logger;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class Renderer {
    static Map<SpriteIndex, List<Sprite>> buffer = new HashMap<>();

    public static void beginLayer(int layerOrdinal) {
        logger().info(layerOrdinal + "  " + CombatEngineLayers.values()[layerOrdinal].name());

//        logMatrix(GL11.GL_MODELVIEW_MATRIX);
//        logViewport();

        buffer = new HashMap<>();
    }

    public static void commitLayer() {
//        GL11.glMatrixMode(GL11.GL_PROJECTION);
//        GL11.glPushMatrix();
//        GL11.glLoadIdentity();
//
//        GL11.glMatrixMode(GL11.GL_MODELVIEW);
//        GL11.glPushMatrix();
//        GL11.glLoadIdentity();

//        logMatrix(GL11.GL_MODELVIEW_MATRIX);
//        logViewport();

        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
        GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glEnable(GL11.GL_TEXTURE_2D);
        GL11.glEnable(GL11.GL_BLEND);

        for (Map.Entry<SpriteIndex, List<Sprite>> entry : buffer.entrySet()) {
            SpriteIndex key = entry.getKey();
            List<Sprite> sprites = entry.getValue();

            GL11.glBindTexture(GL11.GL_TEXTURE_2D, key.textureID);
            GL11.glBlendFunc(key.blendSrc, key.blendDst);
            GL11.glColor4f(1, 1, 1, 1);

            FloatBuffer vertexBuffer = BufferUtils.createFloatBuffer(sprites.size() * 4 * 2);
            FloatBuffer textureBuffer = BufferUtils.createFloatBuffer(sprites.size() * 4 * 2);

            for (Sprite s : sprites) {
                float px = s.width / 2;
                float py = s.height / 2;

                float cx = px;
                float cy = py;

                if (s.centerX != -1 && s.centerY != -1) {
                    cx = s.centerX;
                    cy = s.centerY;
                }

                float a = s.angle * (float) (Math.PI / 180);
                float cos = (float) Math.cos(a);
                float sin = (float) Math.sin(a);

                float[] vxs = {0f, 0f, s.width, s.width};
                float[] vys = {0f, s.height, s.height, 0f};

                float[] txs = {0f, 0f, s.texWidth, s.texWidth};
                float[] tys = {0f, s.texHeight, s.texHeight, 0f};

                for (int i = 0; i < 4; i++) {
                    float vx = vxs[i] - cx;
                    float vy = vys[i] - cy;

                    float rx = cos * vx - sin * vy + px + s.offsetX;
                    float ry = sin * vx + cos * vy + py + s.offsetY;

                    //[  0.0012   0.0000  -0.0000  -3.6625 ]
                    //[  0.0000   0.0020  -0.0000   0.0923 ]
                    //[  0.0000   0.0000  -0.0003   0.0000 ]
                    //[  0.0000   0.0000  -0.0000   1.0000 ]

                    float qx = rx * 0.0012f -3.6625f;
                    float qy = rx * 0.0020f +0.0923f;

//                    logger().info(vxs[i] + "  " + vys[i] + " --> " + qx + "  " + qy);
//                    logger().info(vxs[i] + "  " + vys[i] + " --> " + qx + "  " + qy);

                    vertexBuffer.put(rx).put(ry);

                    float tx = txs[i] + s.texX;
                    float ty = tys[i] + s.texY;

                    textureBuffer.put(tx).put(ty);
                }

//                logger().info("    ");

//                vertexBuffer.put( -0.5f ).put( -0.5f );
//                vertexBuffer.put( -0.5f ).put(  0.5f );
//                vertexBuffer.put(  0.5f ).put(  0.5f );
//                vertexBuffer.put(  0.5f ).put( -0.5f );
            }

            vertexBuffer.flip();
            textureBuffer.flip();

            GL11.glVertexPointer(2, 0, vertexBuffer);
            GL11.glTexCoordPointer(2, 0, textureBuffer);
            GL11.glDrawArrays(GL11.GL_QUADS, 0, sprites.size() * 4);
        }

        GL11.glDisable(GL11.GL_BLEND);
        GL11.glDisable(GL11.GL_TEXTURE_2D);
        GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);

//        GL11.glMatrixMode(GL11.GL_MODELVIEW);
//        GL11.glPopMatrix();
//
//        GL11.glMatrixMode(GL11.GL_PROJECTION);
//        GL11.glPopMatrix();
    }

    private static void logMatrix(int pname) {
        // 1) Allocate a direct FloatBuffer for 16 floats (once, e.g. static field)
        FloatBuffer projBuf = BufferUtils.createFloatBuffer(16);

        // 2) Ask OpenGL to write the current projection matrix into it
        GL11.glGetFloat(pname, projBuf);

        // 3) Flip or rewind so you can read from the start
        projBuf.rewind();

        // 4) Copy into a Java array for easy indexing
        float[] m = new float[16];
        projBuf.get(m);

        // 5) Log it row‐by‐row (remember: OpenGL is column-major internally,
        // but we print here as human-readable rows)
        for (int row = 0; row < 4; row++) {
            // elements at indices 0+row, 4+row, 8+row, 12+row
            logger().info(String.format(
                    "[ % .4f  % .4f  % .4f  % .4f ]",
                    m[0 * 4 + row], m[1 * 4 + row], m[2 * 4 + row], m[3 * 4 + row]
            ));
        }

        logger().info("    ");
    }

    private static void logViewport() {
        // Allocate a direct IntBuffer of size 4 (once, e.g. as a static field)
        IntBuffer vp = BufferUtils.createIntBuffer(16);

        // Ask OpenGL to write the current viewport into that buffer
        GL11.glGetInteger(GL11.GL_VIEWPORT, vp);

        // Reset buffer position so you can read from it
        vp.rewind();

        // Read them back out
        int x = vp.get();   // viewport x origin
        int y = vp.get();   // viewport y origin
        int width = vp.get();   // viewport width
        int height = vp.get();   // viewport height

        logger().info("Viewport = " + x + " " + y + " " + width + " " + height);
    }

    public static void render(float x, float y, int ö00000, int ô00000, com.fs.graphics.Sprite sprite) {
        SpriteIndex idx = new SpriteIndex(
                ô00000,
                sprite.blendSrc,
                sprite.blendDest
        );

        Sprite quad = new Sprite();
        quad.r = (byte) sprite.color.getRed();
        quad.g = (byte) sprite.color.getGreen();
        quad.b = (byte) sprite.color.getBlue();
        quad.a = (byte) sprite.color.getAlpha();
        quad.alphaMult = sprite.alphaMult;
        quad.offsetX = sprite.offsetX + x;
        quad.offsetY = sprite.offsetY + y;
        quad.centerX = sprite.centerX;
        quad.centerY = sprite.centerY;
        quad.width = sprite.width;
        quad.height = sprite.height;
        quad.angle = sprite.angle;
        quad.texX = sprite.texX;
        quad.texY = sprite.texY;
        quad.texWidth = sprite.texWidth;
        quad.texHeight = sprite.texHeight;

        List<Sprite> quads = buffer.computeIfAbsent(idx, k -> new LinkedList<>());

        quads.add(quad);

        logMatrix(GL11.GL_MODELVIEW_MATRIX);

//        GL11.glBindTexture(GL11.GL_TEXTURE_2D, ô00000);
//
//        GL11.glPushMatrix();
//
//        GL11.glColor4ub(
//                (byte) sprite.color.getRed(),
//                (byte) sprite.color.getGreen(),
//                (byte) sprite.color.getBlue(),
//                (byte) ((int) ((float) sprite.color.getAlpha() * sprite.alphaMult))
//        );
//
//        GL11.glTranslatef(x + (float) sprite.offsetX, y + (float) sprite.offsetY, 0.0F);
//
//        if (sprite.centerX != -1.0F && sprite.centerY != -1.0F) {
//            GL11.glTranslatef(sprite.width / 2.0F, sprite.height / 2.0F, 0.0F);
//            GL11.glRotatef(sprite.angle, 0.0F, 0.0F, 1.0F);
//            GL11.glTranslatef(-sprite.centerX, -sprite.centerY, 0.0F);
//        } else {
//            GL11.glTranslatef(sprite.width / 2.0F, sprite.height / 2.0F, 0.0F);
//            GL11.glRotatef(sprite.angle, 0.0F, 0.0F, 1.0F);
//            GL11.glTranslatef(-sprite.width / 2.0F, -sprite.height / 2.0F, 0.0F);
//        }
//
//
//        GL11.glEnable(GL11.GL_TEXTURE_2D);
//        GL11.glEnable(GL11.GL_BLEND);
//        GL11.glBlendFunc(sprite.blendSrc, sprite.blendDest);
//
//        GL11.glBegin(GL11.GL_QUADS);
//
//        GL11.glTexCoord2f(sprite.texX, sprite.texY);
//        GL11.glVertex2f(0.0F, 0.0F);
//
//        GL11.glTexCoord2f(sprite.texX, sprite.texY + sprite.texHeight);
//        GL11.glVertex2f(0.0F, sprite.height);
//
//        GL11.glTexCoord2f(sprite.texX + sprite.texWidth, sprite.texY + sprite.texHeight);
//        GL11.glVertex2f(sprite.width, sprite.height);
//
//        GL11.glTexCoord2f(sprite.texX + sprite.texWidth, sprite.texY);
//        GL11.glVertex2f(sprite.width, 0.0F);
//
//        GL11.glEnd();
//        GL11.glDisable(GL11.GL_BLEND);
//        GL11.glPopMatrix();
    }

    private static Logger logger() {
        return Logger.getLogger(com.genir.graphics.Renderer.class);
    }

    record SpriteIndex(
            int textureID,
            int blendSrc,
            int blendDst) {
    }

    private static class Sprite {
        // Color
        byte r;
        byte g;
        byte b;
        byte a;
        float alphaMult;

        // Always zero.
        float offsetX;
        float offsetY;

        // Rotation pivot.
        float centerX;
        float centerY;

        float width;
        float height;

        float angle;

        float texX;
        float texY;
        float texWidth;
        float texHeight;
    }
}
