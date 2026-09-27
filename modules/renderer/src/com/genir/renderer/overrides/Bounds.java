package com.genir.renderer.overrides;

import org.lwjgl.util.vector.Vector2f;

import java.util.List;

/**
 * OVERRIDES com.fs.starfarer.combat.collision.Bounds
 */
public class Bounds {
    /**
     * STUB
     */
    public List<Segment> origSegments;

    /**
     * ADDED FIELD
     */
    public Object cachedPolygons;

    /**
     * STUB
     */
    public static class Segment {
        public Vector2f p1;
        public Vector2f p2;
    }
}
