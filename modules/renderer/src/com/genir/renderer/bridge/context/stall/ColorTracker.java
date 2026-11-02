package com.genir.renderer.bridge.context.stall;

public class ColorTracker {
    public float r;
    public float g;
    public float b;
    public float a;

    public void glColor4f(float red, float green, float blue, float alpha) {
        r = red;
        g = green;
        b = blue;
        a = alpha;
    }
}
