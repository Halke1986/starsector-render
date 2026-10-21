package com.genir.renderer.overrides.render.font;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.context.Matrix;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.overrides.render.core.Clip;
import org.apache.log4j.Logger;
import org.lwjgl.opengl.GL11;

import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ThreadLocalRandom;

public class FontRendererImpl {
    public static final FontRendererImpl fontRendererImpl = new FontRendererImpl();

    private final GeometryBuilder builder = new GeometryBuilder();
    private final Map<TextParams, TextGeometry> textCache = new HashMap<>();

    private int hit = 0;
    private int miss = 0;

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
            miss++;
            return;
        }

        hit++;
        context.exec.execute(new renderText(geometry));
    }

    private TextGeometry getVertices(TextParams params) {
        TextGeometry geometry = textCache.get(params);
        if (geometry != null) {
//            hit++;
            return geometry;
        }

        geometry = builder.buildText(params);

        textCache.put(params, geometry);
//        miss++;
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

        Logger.getLogger(FontRendererImpl.class).info(hit + " / " + (hit + miss));
//        Logger.getLogger(FontRendererImpl.class).info(hit + " / " + (hit + miss) + "   " + textCache.size());

//        Logger.getLogger(FontRendererImpl.class).info(miss == 0 ? "" : miss);
        hit = 0;
        miss = 0;
    }

    private record renderText(TextGeometry geometry) implements GLCommand {
        @Override
        public void run(Context context, float[] args, int argsOffset) {
            FloatBuffer vertexPointer = geometry.vertexPointer().duplicate();

            final int STRIDE = 8;

            GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
            GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
            GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

            GL11.glVertexPointer(2, STRIDE * Float.BYTES, vertexPointer.position(0));
            GL11.glColorPointer(4, STRIDE * Float.BYTES, vertexPointer.position(2));
            GL11.glTexCoordPointer(2, STRIDE * Float.BYTES, vertexPointer.position(6));

            context.matrixManager.setGPUMode();
            context.attribManager.applyDrawAttribs();

            GL11.glDrawArrays(GL11.GL_QUADS, 0, geometry.glyphsNum() * 4);

            context.matrixManager.setCPUMode();

            GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
            GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
            GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

            // Cleanup.
            context.vertexInterceptor.arraysTouched();
        }
    }
}
