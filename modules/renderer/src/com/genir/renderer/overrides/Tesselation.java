package com.genir.renderer.overrides;

import org.lwjgl.util.glu.GLU;
import org.lwjgl.util.glu.GLUtessellator;
import org.lwjgl.util.glu.GLUtessellatorCallbackAdapter;
import org.lwjgl.util.vector.Vector2f;
import proxy.com.fs.starfarer.combat.collision.Bounds;

import java.util.ArrayList;
import java.util.List;

public class Tesselation {
    public static void renderAsPolygon(Bounds bounds, float r, float g, float b) {
        if (bounds.cachedPolygons == null) {
            List<Vector2f> vertices = getBoundVertices(bounds);
            bounds.cachedPolygons = tesselateBounds(vertices);
        }

        renderPolygons((List<Polygon>) bounds.cachedPolygons);
    }

    public static List<Vector2f> getBoundVertices(Bounds bounds) {
        List<Bounds.Segment> segments = bounds.origSegments;
        List<Vector2f> vertices = new ArrayList<>(segments.size());

        for (Bounds.Segment segment : segments) {
            vertices.add(segment.p1);
        }

        return vertices;
    }

    private static List<Polygon> tesselateBounds(List<Vector2f> vertices) {
        GLUtessellator tesselator = GLU.gluNewTess();
        TesselatorCallback callback = new TesselatorCallback();

        tesselator.gluTessCallback(GLU.GLU_TESS_BEGIN, callback);
        tesselator.gluTessCallback(GLU.GLU_TESS_END, callback);
        tesselator.gluTessCallback(GLU.GLU_TESS_COMBINE, callback);
        tesselator.gluTessCallback(GLU.GLU_TESS_VERTEX, callback);
        tesselator.gluTessProperty(GLU.GLU_TESS_WINDING_RULE, GLU.GLU_TESS_WINDING_ODD);

        for (Vector2f vertex : vertices) {
            double[] coords = new double[]{vertex.x, vertex.y, 0};
            tesselator.gluTessVertex(coords, 0, coords);
        }

        tesselator.gluTessEndContour();
        tesselator.gluTessEndPolygon();
        tesselator.gluDeleteTess();

        return callback.polygons;
    }

    private static void renderPolygons(List<Polygon> polygons) {
        for (Polygon polygon : polygons) {
            com.genir.renderer.bridge.commands.GL11.glBegin(polygon.type);

            for (Vector2f vertex : polygon.vertices) {
                com.genir.renderer.bridge.commands.GL11.glVertex2f(vertex.x, vertex.y);
                com.genir.renderer.bridge.commands.GL11.glColor3f(1, 1, 1);
            }

            com.genir.renderer.bridge.commands.GL11.glEnd();
        }
    }

    private static class TesselatorCallback extends GLUtessellatorCallbackAdapter {
        List<Polygon> polygons = new ArrayList<>();
        private Polygon polygon = null;

        public void begin(int type) {
            polygon = new Polygon(type, new ArrayList<>());
        }

        public void end() {
            polygons.add(polygon);
        }

        public void combine(double[] coords, Object[] data, float[] weight, Object[] outData) {
            outData[0] = new double[]{coords[0], coords[1], coords[2]};
        }

        public void vertex(Object vertex) {
            double[] coords = (double[]) vertex;
            polygon.vertices.add(new Vector2f((float) coords[0], (float) coords[1]));
        }
    }

    private record Polygon(int type, List<Vector2f> vertices) {
    }
}
