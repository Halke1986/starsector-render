package com.genir.renderer.overrides.loading.textures;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL12;
import org.lwjgl.opengl.GL14;

import java.util.Locale;

public class TextureSetup {
    public static void configureOnServer(String vanillaPath) {
        // Vanilla does not generate mipmaps if either texture dimension exceeds 1024 pixels.
        // The rationale is undocumented, and Fast Rendering does not apply this restriction.
        org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MIN_FILTER, GL11.GL_LINEAR_MIPMAP_LINEAR);
        org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MAG_FILTER, GL11.GL_LINEAR);
        org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL14.GL_GENERATE_MIPMAP, 1);

        // Override the default GL_REPEAT wrap mode for selected textures to prevent edge artifacts,
        // such as the bottom row of pixels appearing at the top of a portrait.
        if (clampToEdge(vanillaPath)) {
            org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_S, GL12.GL_CLAMP_TO_EDGE);
            org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_WRAP_T, GL12.GL_CLAMP_TO_EDGE);
        }
    }

    public static void configureOnClient(String vanillaPath) {
        record TextureSetup$configure(String vanillaPath) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                configureOnServer(vanillaPath);
            }
        }

        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new TextureSetup$configure(vanillaPath));
    }

    private static boolean clampToEdge(String vanillaPath) {
        String p = normalize(vanillaPath);

        return p.contains("graphics/asteroids/")
                || p.contains("graphics/backgrounds/")
                || p.contains("graphics/cursors/")
                // || p.contains("graphics/damage/")
                // || p.contains("graphics/debris/")
                || p.contains("graphics/factions/")
                || p.contains("graphics/fonts/")
                // || p.contains("graphics/fx/")
                || p.contains("graphics/hud/")
                || p.contains("graphics/hullmods/")
                || p.contains("graphics/icons/")
                || p.contains("graphics/illustrations/")
                // || p.contains("graphics/misc/")
                || p.contains("graphics/missiles/")
                // || p.contains("graphics/mock/")
                // || p.contains("graphics/planets/")
                || p.contains("graphics/portraits/")
                || p.contains("graphics/ship/")
                // || p.contains("graphics/starscape/")
                || p.contains("graphics/stations/")
                // || p.contains("graphics/terrain/")
                || p.contains("graphics/ui/")
                || p.contains("graphics/warroom/")
                || p.contains("graphics/weapons/");
    }

    private static String normalize(String path) {
        return path.replace("\\", "/").toLowerCase(Locale.ROOT);
    }
}
