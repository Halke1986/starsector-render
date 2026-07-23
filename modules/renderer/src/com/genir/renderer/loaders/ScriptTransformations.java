package com.genir.renderer.loaders;

import java.util.Map;

import static java.util.Map.entry;

public class ScriptTransformations {
    public static Map<String, String> transformations = Map.<String, String>ofEntries(
            // Replace OpenGL calls.
            entry("org/lwjgl/opengl/GL11", "com/genir/renderer/bridge/commands/GL11"),
            entry("org/lwjgl/opengl/GL13", "com/genir/renderer/bridge/commands/GL13"),
            entry("org/lwjgl/opengl/GL14", "com/genir/renderer/bridge/commands/GL14"),
            entry("org/lwjgl/opengl/GL15", "com/genir/renderer/bridge/commands/GL15"),
            entry("org/lwjgl/opengl/GL20", "com/genir/renderer/bridge/commands/GL20"),
            entry("org/lwjgl/opengl/GL30", "com/genir/renderer/bridge/commands/GL30"),
            entry("org/lwjgl/opengl/GL31", "com/genir/renderer/bridge/commands/GL31"),
            entry("org/lwjgl/opengl/GL32", "com/genir/renderer/bridge/commands/GL32"),
            entry("org/lwjgl/opengl/GL33", "com/genir/renderer/bridge/commands/GL33"),
            entry("org/lwjgl/opengl/GL40", "com/genir/renderer/bridge/commands/GL40"),
            entry("org/lwjgl/opengl/GL41", "com/genir/renderer/bridge/commands/GL41"),
            entry("org/lwjgl/opengl/GL42", "com/genir/renderer/bridge/commands/GL42"),
            entry("org/lwjgl/opengl/GL43", "com/genir/renderer/bridge/commands/GL43"),
            entry("org/lwjgl/opengl/GL44", "com/genir/renderer/bridge/commands/GL44"),
            entry("org/lwjgl/opengl/Display", "com/genir/renderer/bridge/commands/Display"),
            entry("org/lwjgl/opengl/GLContext", "com/genir/renderer/bridge/commands/GLContext"),
            entry("org/lwjgl/opengl/GLSync", "com/genir/renderer/bridge/commands/GLSync"),
            entry("org/lwjgl/opengl/SharedDrawable", "com/genir/renderer/bridge/commands/SharedDrawable"),

            // Replace URLClassLoader with this implementation, to support mods that use custom class loaders to bypass reflection ban.
            entry("java/net/URLClassLoader", "com/genir/renderer/loaders/ScriptClassLoader")
    );
}