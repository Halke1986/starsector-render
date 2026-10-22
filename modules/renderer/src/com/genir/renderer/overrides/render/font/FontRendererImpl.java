package com.genir.renderer.overrides.render.font;

import com.fs.graphics.font.Font;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.context.Matrix;
import com.genir.renderer.bridge.context.VertexInterceptor;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.overrides.render.core.Clip;
import org.lwjgl.opengl.GL11;

import java.awt.*;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ThreadLocalRandom;

public class FontRendererImpl {
    private final GeometryBuilder builder = new GeometryBuilder();
    private final Map<TextParams, TextGeometry> textCache = new HashMap<>();

    // Allocation avoidance.
    private final TextParams key = new TextParams();
    private final Matrix model = new Matrix();

    public void renderFont(
            Font font,
            String text,
            float textSize,
            Color color,
            float colorAlpha,
            boolean applyHighlight,
            int highlightStart,
            int highlightEnd,
            Color highlightColor,
            float highlightColorAlpha,
            int outlineSize,
            float outlineExpansion,
            int renderPassCount
    ) {
        final Context context = ContextManager.getThreadContext();

        key.font = font;
        key.text = text;
        key.textSize = textSize;
        key.outlineSize = outlineSize;
        key.outlineExpansion = outlineExpansion;

        if (applyHighlight) {
            key.red = color.getRed() / 255f;
            key.green = color.getGreen() / 255f;
            key.blue = color.getBlue() / 255f;
            key.alpha = colorAlpha;

            key.applyHighlight = true;
            key.highlightStart = highlightStart;
            key.highlightEnd = highlightEnd;

            key.highlightRed = highlightColor.getRed() / 255f;
            key.highlightGreen = highlightColor.getGreen() / 255f;
            key.highlightBlue = highlightColor.getBlue() / 255f;
            key.highlightAlpha = highlightColorAlpha;
        } else {
            key.red = context.colorTracker.r;
            key.green = context.colorTracker.g;
            key.blue = context.colorTracker.b;
            key.alpha = context.colorTracker.a;

            key.applyHighlight = false;
            key.highlightStart = 0;
            key.highlightRed = 0;

            key.highlightEnd = 0;
            key.highlightGreen = 0;
            key.highlightBlue = 0;
            key.highlightAlpha = 0;
        }

        // TODO all passes are the same?
        for (int renderPassIndex = 0; renderPassIndex < renderPassCount; renderPassIndex++) {
            renderGlyphs(key);
        }
    }

    private void renderGlyphs(TextParams params) {
        final Context context = ContextManager.getThreadContext();
        TextGeometry geometry = getVertices(params);

        model.set(context.matrixTracker.getModelView());
        model.glTranslatef(geometry.quadX(), geometry.quadY(), 0);
        model.glScalef(geometry.quadWidth(), geometry.quadHeight(), 0);

        if (!Clip.rectangleTest(model, context.matrixTracker.getProjection())) {
            return;
        }

        context.exec.execute(new renderText(geometry));
    }

    private TextGeometry getVertices(TextParams params) {
        TextGeometry geometry = textCache.get(params);
        if (geometry != null) {
            return geometry;
        }

        geometry = builder.buildText(params);

        textCache.put(params.clone(), geometry);
        return geometry;
    }

    public void update() {
        if (!textCache.isEmpty()) {
            int index = ThreadLocalRandom.current().nextInt(textCache.size());
            Iterator<?> iterator = textCache.values().iterator();

            while (index-- > 0) {
                iterator.next();
            }

            iterator.next();
            iterator.remove();
        }
    }

    private record renderText(TextGeometry geometry) implements GLCommand {
        @Override
        public void run(Context context, float[] args, int argsOffset) {
            context.matrixManager.setGPUMode();

            int flags = VertexInterceptor.VERTEX_FLAG | VertexInterceptor.COLOR_FLAG | VertexInterceptor.TEX_FLAG;
            context.vertexInterceptor.drawExternalArray(GL11.GL_QUADS, geometry.vertexScratchpad(), geometry.glyphsNum() * 4, flags);

            context.matrixManager.setCPUMode();
        }
    }
}
