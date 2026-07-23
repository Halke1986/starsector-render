package com.genir.renderer.overrides;

import org.lwjgl.opengl.GL11;
import org.lwjgl.util.glu.GLU;
import org.lwjgl.util.glu.GLUtessellator;
import org.lwjgl.util.glu.GLUtessellatorCallbackAdapter;
import org.lwjgl.util.vector.Vector2f;
import proxy.com.fs.starfarer.combat.collision.Bounds;

import java.util.*;


public class Tesselation {
//    static void call() {
//        renderAsPolygon(null, 0, 0, 0);
//    }

    private static Map<List<Vector2f>, Float> tesselationCache = new HashMap<>();

    public static void renderAsPolygon(Bounds bounds, float r, float g, float b) {
        GLUtessellator tesselator = GLU.gluNewTess();
        TesselatorCallback callback = new TesselatorCallback();

        tesselator.gluTessCallback(GLU.GLU_TESS_BEGIN, callback);
        tesselator.gluTessCallback(GLU.GLU_TESS_END, callback);
        tesselator.gluTessCallback(GLU.GLU_TESS_COMBINE, callback);
        tesselator.gluTessCallback(GLU.GLU_TESS_VERTEX, callback);
        tesselator.gluTessProperty(GLU.GLU_TESS_WINDING_RULE, GLU.GLU_TESS_WINDING_ODD);

        List<Vector2f> vertices = getBoundVertices(bounds);
        for (Vector2f vertex : vertices) {
            double[] coords = new double[]{vertex.x, vertex.y, 0};
            tesselator.gluTessVertex(coords, 0, coords);
        }

        tesselator.gluTessEndContour();
        tesselator.gluTessEndPolygon();
        tesselator.gluDeleteTess();
    }

    public static List<Vector2f> getBoundVertices(Bounds bounds) {
        List<Bounds.Segment> segments = bounds.origSegments;
        List<Vector2f> vertices = new ArrayList<>(segments.size());

        for (Bounds.Segment segment : segments) {
            vertices.add(segment.p1);
        }

        return vertices;
    }

    private static class TesselatorCallback extends GLUtessellatorCallbackAdapter {
        public void begin(int type) {
            com.genir.renderer.bridge.commands.GL11.glBegin(type);
        }

        public void end() {
            com.genir.renderer.bridge.commands.GL11.glEnd();
        }

        public void combine(double[] coords, Object[] data, float[] weight, Object[] outData) {
            outData[0] = new double[]{coords[0], coords[1], coords[2]};
        }


        public void vertex(Object vertex) {
            double[] coords = (double[]) vertex;

            com.genir.renderer.bridge.commands.GL11.glVertex3d(coords[0], coords[1], coords[2]);
            com.genir.renderer.bridge.commands.GL11.glColor3d(1, 1, 1);
        }
    }
}
