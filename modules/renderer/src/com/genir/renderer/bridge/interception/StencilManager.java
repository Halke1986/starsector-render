package com.genir.renderer.bridge.interception;

import com.genir.renderer.bridge.state.RenderContext;
import org.lwjgl.opengl.GL11;

import java.util.ArrayList;
import java.util.List;

import static com.genir.renderer.Debug.asert;
import static com.genir.renderer.Debug.logger;

public class StencilManager {
    private final RenderContext ctx;

    private State state = State.DISABLED;

    private final List<List<BoundingBox>> bitLayers = new ArrayList<>();

    public StencilManager(RenderContext ctx) {
        this.ctx = ctx;
    }

    public void beginLayer() {
        if (!bitLayers.isEmpty()) {
            logger().info("bl: " + bitLayers.size());
        }

        bitLayers.clear();
    }

    public State getState() {
        return state;
    }

    public void addMask(float[] vertices, int verticesNum) {
        BoundingBox bb = new BoundingBox(vertices, verticesNum);

        for (List<BoundingBox> bitLayer : bitLayers) {
            boolean collision = false;

            for (BoundingBox other : bitLayer) {
                if (bb.overlaps(other)) {
                    collision = true;
                    break;
                }
            }

            if (!collision) {
                bitLayer.add(bb);
                return;
            }
        }

        // No place found in any existing layer.
        List<BoundingBox> newLayer = new ArrayList<>();
        newLayer.add(bb);
        bitLayers.add(newLayer);
    }

    public void glEnable(int cap) {
        if (cap != GL11.GL_STENCIL_TEST) {
            return;
        }

        // Due to a Starsector bug, glEnable(GL_STENCIL_TEST) might be called
        // before the previous stencil sequence is properly ended.
        // We therefore implicitly call glDisable(GL_STENCIL_TEST) to close out
        // the old sequence before re-enabling it.
        if (state != State.DISABLED) {
            glDisable(GL11.GL_STENCIL_TEST);
        }

        state = State.REPLACE_0;

        // Vanilla bit clearing draw calls are not required by the bridge.
        // Set stencil to no op.
        ctx.glStencilFunc(GL11.GL_NEVER, 0, 0);
        ctx.glStencilOp(GL11.GL_KEEP, GL11.GL_KEEP, GL11.GL_KEEP);
    }

    public void glDisable(int cap) {
        if (cap != GL11.GL_STENCIL_TEST) {
            return;
        }

        if (state != State.DISABLED) {
            state = State.DISABLED;
        }
    }

    public void glStencilFunc(int func, int ref, int mask) {
        asert(func == GL11.GL_NEVER || func == GL11.GL_EQUAL || func == GL11.GL_ALWAYS);
        asert(ref == 0 || ref == 1 || ref == 3);

        if (ref == 0) {
            asert(state == State.REPLACE_0);
        } else {
            asert(state == State.REPLACE_0 || state == State.REPLACE_1);

            // State transition from cleaning stencil buffer to building mask.
            if (state == State.REPLACE_0) {
                state = State.REPLACE_1;

                int bitMask = getLayerIdx();
                ctx.glStencilMask(bitMask);
                ctx.glStencilFunc(GL11.GL_NEVER, bitMask, 0);
                ctx.glStencilOp(GL11.GL_REPLACE, GL11.GL_REPLACE, GL11.GL_REPLACE);
            }
        }
    }

    public void glStencilOp(int fail, int zfail, int zpass) {
        // Starsector uses only two stencil operations:
        // GL_REPLACE when building a mask and GL_KEEP when drawing.
        asert(zpass == GL11.GL_REPLACE || zpass == GL11.GL_KEEP);

        if (zpass == GL11.GL_REPLACE) {
            asert(state == State.REPLACE_0 || state == State.REPLACE_1);
        } else {
            asert(state == State.REPLACE_1 || state == State.KEEP);

            // State transition from building mask to drawing.
            if (state == State.REPLACE_1) {
                state = State.KEEP;

                int bitMask = getLayerIdx();
                ctx.glStencilFunc(GL11.GL_EQUAL, bitMask, bitMask);
                ctx.glStencilOp(GL11.GL_KEEP, GL11.GL_KEEP, GL11.GL_KEEP);
            }
        }
    }

    private int getLayerIdx() {
        return 1 << Math.max(0, bitLayers.size() - 1);
    }

    public enum State {
        DISABLED,
        REPLACE_0,
        REPLACE_1,
        KEEP
    }

    private static class BoundingBox {
        float x1;
        float x2;
        float y1;
        float y2;

        BoundingBox(float[] points, int num) {
            asert(num >= 1);

            float x = points[0];
            float y = points[1];
            x1 = x2 = x;
            y1 = y2 = y;

            for (int i = 1; i < num; i++) {
                float xi = points[2 * i];
                float yi = points[2 * i + 1];

                x1 = Math.min(x1, xi);
                x2 = Math.max(x2, xi);
                y1 = Math.min(y1, yi);
                y2 = Math.max(y2, yi);
            }
        }

        public boolean overlaps(BoundingBox o) {
            // Two boxes overlap if their projections on both axes intersect.
            return o.x2 > x1
                    && o.x1 < x2
                    && o.y2 > y1
                    && o.y1 < y2;
        }

        public void merge(BoundingBox o) {
            // Expand this box to cover both.
            x1 = Math.min(x1, o.x1);
            x2 = Math.max(x2, o.x2);
            y1 = Math.min(y1, o.y1);
            y2 = Math.max(y2, o.y2);
        }
    }
}
