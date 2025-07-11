package com.genir.renderer.bridge.interception;

import com.genir.renderer.bridge.rendering.BufferPool;
import com.genir.renderer.bridge.rendering.Renderer;
import com.genir.renderer.bridge.rendering.VertexBuffer;
import com.genir.renderer.bridge.state.RenderContext;
import org.lwjgl.opengl.GL11;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.genir.renderer.Debug.asert;
import static com.genir.renderer.Debug.logger;

/**
 * Stencil rendering in Starsector proceeds always in three steps:
 * 1) Clear the stencil bit to 0 in the target region.
 * 2) Render the mask geometry, setting stencil=1 where it covers.
 * 3) Draw the content using stencil==1 as a mask.
 * <p>
 * After this block, the mask is never reused.
 * <p>
 * When multiple masks overlap in the same frame, they must use distinct stencil bits.
 * StencilManager handles collisions by assigning each new mask to the next available bit,
 * allowing overlapping masks to be rendered via array drawing.
 */
public class StencilManager {
    private final BufferPool bufferPool;
    private final Renderer renderer;

    private final RenderContext ctx;

    private State state = State.DISABLED;
    private final List<List<BoundingBox>> stencilPlanes = new ArrayList<>();
    private BoundingBox currentMaskBBox;

    private Map<RenderContext, VertexBuffer> maskBuffers = new HashMap<>();

    public StencilManager(BufferPool bufferPool, Renderer renderer, RenderContext ctx) {
        this.bufferPool = bufferPool;
        this.renderer = renderer;
        this.ctx = ctx;
    }

    public void beginLayer() {
        if (!stencilPlanes.isEmpty()) {
            logger().info("bl: " + stencilPlanes.size());
        }

        logger().info("");
        logger().info("beginLayer");

        stencilPlanes.clear();
    }

    public State getState() {
        return state;
    }

    public void addMask(byte[] colors, float[] texCoord, float[] vertices, int verticesToAdd) {
        // We can’t know which stencil bit we’ll use until the mask’s geometry is fully defined.
        // Because the stencil index is part of the render context, defer issuing draw calls:
        // buffer the mask’s vertices now, then commit them once the stencil plane has been assigned.
        VertexBuffer maskBuffer = getMaskVertexBuffer();
        maskBuffer.addVertices(colors, texCoord, vertices, verticesToAdd);

        // Expand the mask bounding box.
        BoundingBox bb = new BoundingBox(vertices, verticesToAdd);
        if (currentMaskBBox == null) {
            currentMaskBBox = bb;
        } else {
            currentMaskBBox.merge(bb);
        }
    }

    private VertexBuffer getMaskVertexBuffer() {
        VertexBuffer buffer = maskBuffers.get(ctx);
        if (buffer != null) {
            return buffer;
        }

        VertexBuffer newBuffer = bufferPool.getBuffer();
        maskBuffers.put(ctx.copy(), newBuffer);

        return newBuffer;
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

        // State transition from stencil disabled to clearing stencil buffer.
        state = State.REPLACE_0;

        // Vanilla bit clearing draw calls are not required by the bridge.
        // Set stencil to no-op.
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
                currentMaskBBox = null;

                // Prepare render context for mask drawing.
                // Bit mask is not yet defined at this stage.
                int undefinedMask = 0;
                ctx.glStencilMask(undefinedMask);
                ctx.glStencilFunc(GL11.GL_NEVER, undefinedMask, 0);
                ctx.glStencilOp(GL11.GL_REPLACE, GL11.GL_REPLACE, GL11.GL_REPLACE);

                state = State.REPLACE_1;
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
                int bitMask = 1 << findPlane();

                // Merge mask primitives to render buffer.
                for (Map.Entry<RenderContext, VertexBuffer> entry : maskBuffers.entrySet()) {
                    RenderContext maskCtx = entry.getKey();
                    VertexBuffer maskBuffer = entry.getValue();

                    // Update context with defined value of stencil bit mask.
                    maskCtx.glStencilMask(bitMask);
                    maskCtx.glStencilFunc(GL11.GL_NEVER, bitMask, 0);

                    VertexBuffer renderBuffer = renderer.getVertexBuffer(maskCtx);
                    renderBuffer.addVertices(maskBuffer);
                }

                // Clean mask buffers.
                bufferPool.returnBuffers(maskBuffers.values());
                maskBuffers = new HashMap<>();

                // Prepare render context for drawing.
                ctx.glStencilFunc(GL11.GL_EQUAL, bitMask, bitMask);
                ctx.glStencilOp(GL11.GL_KEEP, GL11.GL_KEEP, GL11.GL_KEEP);

                state = State.KEEP;
            }
        }
    }

    private int findPlane() {
        if (currentMaskBBox == null) {
            return 0;
        }

        for (int i = 0; i < stencilPlanes.size(); i++) {
            List<BoundingBox> plane = stencilPlanes.get(i);

            // Check if the mask collides with
            // any mask already in the plane.
            boolean collision = false;
            for (BoundingBox other : plane) {
                if (currentMaskBBox.overlaps(other)) {
                    collision = true;
                    break;
                }
            }

            if (!collision) {
                plane.add(currentMaskBBox);
                return i;
            }
        }

        // No place found in any existing plane.
        List<BoundingBox> newPlane = new ArrayList<>();
        newPlane.add(currentMaskBBox);
        stencilPlanes.add(newPlane);

        return stencilPlanes.size() - 1;
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
