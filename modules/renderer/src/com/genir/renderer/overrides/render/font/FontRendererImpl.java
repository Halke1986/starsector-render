package com.genir.renderer.overrides.render.font;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.context.Matrix;
import com.genir.renderer.bridge.context.VertexInterceptor;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.overrides.render.core.Clip;
import org.lwjgl.opengl.GL11;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ThreadLocalRandom;

public class FontRendererImpl {
    public static final FontRendererImpl fontRendererImpl = new FontRendererImpl();

    private final GeometryBuilder builder = new GeometryBuilder();
    private final Map<TextParams, TextGeometry> textCache = new HashMap<>();

    public void renderGlyphs(TextParams params) {
        if (params.text.isEmpty()) {
            return;
        }

        final Context context = ContextManager.getThreadContext();
        TextGeometry geometry = getVertices(params);

        Matrix model = context.sharedMatrix;
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

        textCache.put(params, geometry);
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
