package com.genir.renderer.overrides;

import org.lwjgl.util.glu.GLU;
import org.lwjgl.util.glu.GLUtessellator;
import org.lwjgl.util.vector.Vector2f;

import java.util.ArrayList;
import java.util.List;

/**
 * OVERRIDES com.fs.starfarer.util.Tesselator
 */
public class Tesselator {
    /**
     * REPLACED METHOD
     */
    public static void Tesselator_renderAsPolygon(Bounds bounds, float r, float g, float b) {
        if (bounds.cachedPolygons == null) {
            List<Vector2f> vertices = getBoundVertices(bounds);
            bounds.cachedPolygons = tesselateBounds(vertices);
        }

        renderPolygons((List<TesselatorCallback.Polygon>) bounds.cachedPolygons);
    }

    /**
     * ADDED METHOD
     */
    private static List<Vector2f> getBoundVertices(Bounds bounds) {
        List<Bounds.Segment> segments = bounds.origSegments;
        List<Vector2f> vertices = new ArrayList<>(segments.size());

        for (Bounds.Segment segment : segments) {
            vertices.add(segment.p1);
        }

        return vertices;
    }

    /**
     * ADDED METHOD
     */
    private static List<TesselatorCallback.Polygon> tesselateBounds(List<Vector2f> vertices) {
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

    /**
     * ADDED METHOD
     */
    private static void renderPolygons(List<TesselatorCallback.Polygon> polygons) {
        for (TesselatorCallback.Polygon polygon : polygons) {
            com.genir.renderer.bridge.opengl.GL11.glBegin(polygon.type);

            for (Vector2f vertex : polygon.vertices) {
                com.genir.renderer.bridge.opengl.GL11.glVertex2f(vertex.x, vertex.y);
                com.genir.renderer.bridge.opengl.GL11.glColor3f(1, 1, 1);
            }

            com.genir.renderer.bridge.opengl.GL11.glEnd();
        }
    }
}
