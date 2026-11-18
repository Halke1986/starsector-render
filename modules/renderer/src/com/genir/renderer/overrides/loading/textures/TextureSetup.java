package com.genir.renderer.overrides.loading.textures;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;

public class TextureSetup {
    public static void configureOnServer() {
        // Vanilla does not generate mipmaps if either texture dimension exceeds 1024 pixels.
        // The rationale is undocumented, and Fast Rendering does not apply this restriction.
        org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MIN_FILTER, GL11.GL_LINEAR_MIPMAP_LINEAR);
        org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MAG_FILTER, GL11.GL_LINEAR);
        org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL14.GL_GENERATE_MIPMAP, 1);
    }

    public static void configureOnClient() {
        record TextureSetup$configure() implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                configureOnServer();
            }
        }

        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new TextureSetup$configure());
    }
}
