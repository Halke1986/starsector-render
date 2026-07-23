package proxy.com.fs.starfarer.combat.collision;

import org.lwjgl.util.vector.Vector2f;

import java.util.List;

// $FF: renamed from: com.fs.starfarer.combat.E.o0OO
public class Bounds {
    public List<Segment> origSegments;

    // $FF: renamed from: com.fs.starfarer.combat.E.o0OO.o
    public static class Segment {
        public Vector2f p1;
        public Vector2f p2;
    }
}
