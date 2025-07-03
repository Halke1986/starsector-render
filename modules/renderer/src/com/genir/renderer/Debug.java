package com.genir.renderer;

import com.genir.renderer.bridge.Renderer;
import org.apache.log4j.Logger;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class Debug {
    public static void asert(boolean val) {
        if (!val) {
            throw new AssertionError("false");
        }
    }

    public static void logMatrix(int pname) {
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

    public static void logViewport() {
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

    public static Logger logger() {
        return Logger.getLogger(Renderer.class);
    }
}
