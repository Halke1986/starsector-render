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

public class FontRendererImpl {
    private final GeometryBuilder builder = new GeometryBuilder();
    private final Cache cache = new Cache();

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

        if (renderPassCount != 1){
            int x = 0;
        }

        // TODO all passes are the same?
//        for (int renderPassIndex = 0; renderPassIndex < renderPassCount; renderPassIndex++) {
            renderGlyphs(key);
//        }
    }

    private void renderGlyphs(TextParams params) {
        final Context context = ContextManager.getThreadContext();
        Cache.Entry entry = cache.findEntry(params);
        if (entry.geometry == null) {
            entry.geometry = builder.buildText(params);
        }

        TextGeometry geometry = entry.geometry;

        model.set(context.matrixTracker.getModelView());
        model.glTranslatef(geometry.quadX(), geometry.quadY(), 0);
        model.glScalef(geometry.quadWidth(), geometry.quadHeight(), 0);

        if (!Clip.rectangleTest(model, context.matrixTracker.getProjection())) {
            return;
        }

        context.exec.execute(new renderText(geometry));
    }

    public void update() {
        cache.update();
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
