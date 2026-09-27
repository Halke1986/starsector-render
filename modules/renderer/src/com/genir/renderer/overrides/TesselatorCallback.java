package com.genir.renderer.overrides;

import org.lwjgl.util.glu.GLUtessellatorCallbackAdapter;
import org.lwjgl.util.vector.Vector2f;

import java.util.ArrayList;
import java.util.List;

public class TesselatorCallback extends GLUtessellatorCallbackAdapter {
    public List<Polygon> polygons = new ArrayList<>();
    public Polygon polygon = null;

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

    public static class Polygon {
        public int type;
        public List<Vector2f> vertices;

        public Polygon(int type, List<Vector2f> vertices) {
            this.type = type;
            this.vertices = vertices;
        }
    }
}