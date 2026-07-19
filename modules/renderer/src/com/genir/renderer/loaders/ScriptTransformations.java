package com.genir.renderer.loaders;

import java.util.Arrays;
import java.util.List;

import static com.genir.renderer.loaders.ClassConstantTransformer.newTransform;

public class ScriptTransformations {
    public static List<ClassConstantTransformer.Transform> transformations = Arrays.asList(
            // Replace OpenGL calls.
            newTransform("org/lwjgl/opengl/GL11", "com/genir/renderer/bridge/commands/GL11"),
            newTransform("org/lwjgl/opengl/GL13", "com/genir/renderer/bridge/commands/GL13"),
            newTransform("org/lwjgl/opengl/GL14", "com/genir/renderer/bridge/commands/GL14"),
            newTransform("org/lwjgl/opengl/GL15", "com/genir/renderer/bridge/commands/GL15"),
            newTransform("org/lwjgl/opengl/GL20", "com/genir/renderer/bridge/commands/GL20"),
            newTransform("org/lwjgl/opengl/GL30", "com/genir/renderer/bridge/commands/GL30"),
            newTransform("org/lwjgl/opengl/GL31", "com/genir/renderer/bridge/commands/GL31"),
            newTransform("org/lwjgl/opengl/GL32", "com/genir/renderer/bridge/commands/GL32"),
            newTransform("org/lwjgl/opengl/GL33", "com/genir/renderer/bridge/commands/GL33"),
            newTransform("org/lwjgl/opengl/GL40", "com/genir/renderer/bridge/commands/GL40"),
            newTransform("org/lwjgl/opengl/GL41", "com/genir/renderer/bridge/commands/GL41"),
            newTransform("org/lwjgl/opengl/GL42", "com/genir/renderer/bridge/commands/GL42"),
            newTransform("org/lwjgl/opengl/GL43", "com/genir/renderer/bridge/commands/GL43"),
            newTransform("org/lwjgl/opengl/GL44", "com/genir/renderer/bridge/commands/GL44"),
            newTransform("org/lwjgl/opengl/Display", "com/genir/renderer/bridge/commands/Display"),
            newTransform("org/lwjgl/opengl/GLContext", "com/genir/renderer/bridge/commands/GLContext"),
            newTransform("org/lwjgl/opengl/GLSync", "com/genir/renderer/bridge/commands/GLSync"),
            newTransform("org/lwjgl/opengl/SharedDrawable", "com/genir/renderer/bridge/commands/SharedDrawable"),

            // Replace URLClassLoader with this implementation, to support mods that use custom class loaders to bypass reflection ban.
            newTransform("java/net/URLClassLoader", "com/genir/renderer/loaders/ScriptClassLoader")
    );
}