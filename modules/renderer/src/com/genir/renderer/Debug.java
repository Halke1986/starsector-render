package com.genir.renderer;

import com.genir.renderer.archiv.Renderer;
import org.apache.log4j.Logger;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix3f;

import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class Debug {
    public static void checkStack() {
        StackTraceElement[] stackTraceElements = Thread.currentThread().getStackTrace();

        boolean found = false;

        for (StackTraceElement element : stackTraceElements) {
            if (element.getClassName().contains("DynamicParticleGroup")) {
                found = true;
                break;
            }
        }

        if (found) {
            for (StackTraceElement element : stackTraceElements) {
                logger().info(element.getClassName());
            }
            logger().info(" ");
        }
    }

    public static void logStack() {
        StackTraceElement[] stackTraceElements = Thread.currentThread().getStackTrace();

        for (StackTraceElement element : stackTraceElements) {
            logger().info(element.getClassName());
        }
        logger().info(" ");
    }

    public static Matrix3f loadModelMatrix() {
        // 1) Allocate a direct FloatBuffer for 16 floats (once, e.g. static field)
        FloatBuffer projBuf = BufferUtils.createFloatBuffer(16);

        // 2) Ask OpenGL to write the current projection matrix into it
        GL11.glGetFloat(GL11.GL_MODELVIEW_MATRIX, projBuf);

        // 3) Flip or rewind so you can read from the start
        projBuf.rewind();

        // 4) Copy into a Java array for easy indexing
        float[] g = new float[16];
        projBuf.get(g);

        Matrix3f m = new Matrix3f();

        m.m00 = g[0];
        m.m01 = g[4];
        m.m02 = g[12];
        m.m10 = g[1];
        m.m11 = g[5];
        m.m12 = g[13];
        m.m20 = g[3];
        m.m21 = g[7];
        m.m22 = g[15];

        return m;
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

    public static void asert(boolean val) {
        if (!val) {
            throw new AssertionError("false");
        }
    }

    public static Logger logger() {
        return Logger.getLogger(Renderer.class);
    }
}
