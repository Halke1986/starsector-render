package com.genir.renderer.agent;

import java.lang.instrument.ClassFileTransformer;
import java.security.ProtectionDomain;
import java.util.Arrays;
import java.util.List;

import static com.genir.renderer.agent.ConstantTransformer.newTransform;

public class ClassTransformer implements ClassFileTransformer {
    private final List<ConstantTransformer> obfTransformers = List.of(
            new ConstantTransformer(ObfTransformations.transformations)
    );

    private final List<ConstantTransformer> lwjglTransformers = List.of(
            new ConstantTransformer(Arrays.asList(
                    // Replace OpenGL calls.
                    newTransform("org/lwjgl/opengl/GL11", "com/genir/renderer/bridge/commands/GL11"),
                    newTransform("org/lwjgl/opengl/GL14", "com/genir/renderer/bridge/commands/GL14")
            ))
    );

    private final List<ConstantTransformer> xstreamTransformers = List.of(
            new ConstantTransformer(List.of(
                    // Use memory-optimized Path implementation
                    newTransform("com/thoughtworks/xstream/io/path/Path", "com/genir/renderer/overrides/xstream/Path")
            )),
            new ConstantTransformer(Arrays.asList(
                    // Fix transforms caused by a false positive match.
                    newTransform("com/genir/renderer/overrides/xstream/PathTracker", "com/thoughtworks/xstream/io/path/PathTracker"),
                    newTransform("com/genir/renderer/overrides/xstream/PathTrackingReader", "com/thoughtworks/xstream/io/path/PathTrackingReader"),
                    newTransform("com/genir/renderer/overrides/xstream/PathTrackingWriter", "com/thoughtworks/xstream/io/path/PathTrackingWriter")
            ))
    );

    private final List<ConstantTransformer> starfarerTransformers = List.of(
            new ConstantTransformer(IllegalTransformations.transformations),

            new ConstantTransformer(Arrays.asList(
                    // Replace OpenGL calls.
                    newTransform("org/lwjgl/opengl/GL11", "com/genir/renderer/bridge/commands/GL11"),
                    newTransform("org/lwjgl/opengl/GL14", "com/genir/renderer/bridge/commands/GL14"),
                    newTransform("org/lwjgl/opengl/Display", "com/genir/renderer/bridge/commands/Display"),
                    newTransform("org/lwjgl/opengl/GLContext", "com/genir/renderer/bridge/commands/GLContext"),
                    newTransform("org/lwjgl/util/Display", "com/genir/renderer/bridge/commands/DisplayUtil"),

                    // Replace class loader for loading scripts.
                    newTransform("org/codehaus/janino/JavaSourceClassLoader", "java/lang/ClassLoader")
            )),
            new ConstantTransformer(List.of(
                    // Fix org/lwjgl/util/Display -> com/genir/renderer/bridge/commands/DisplayMode transform caused by a false positive match.
                    newTransform("com/genir/renderer/bridge/commands/DisplayMode", "org/lwjgl/opengl/DisplayMode")
            )),
            // Obfuscate assembled overrides.
            new ConstantTransformer(ObfTransformations.transformations)
    );

    private final List<ConstantTransformer> scriptTransformers = List.of(
            new ConstantTransformer(Arrays.asList(
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
                    newTransform("org/lwjgl/opengl/SharedDrawable", "com/genir/renderer/bridge/commands/SharedDrawable")
            ))
    );

    @Override
    public byte[] transform(
            ClassLoader loader,
            String className,
            Class<?> classBeingRedefined,
            ProtectionDomain protectionDomain,
            byte[] classfileBuffer
    ) {
        List<ConstantTransformer> transformers = selectTransformers(loader, className);
        if (transformers == null) {
            return null;
        }

        byte[] outputBytes = classfileBuffer;
        for (ConstantTransformer t : transformers) {
            outputBytes = t.apply(t.apply(t.apply(outputBytes)));
        }

        return outputBytes;
    }

    private List<ConstantTransformer> selectTransformers(ClassLoader loader, String binaryOrInternalName) {
        // No class to transform.
        if (binaryOrInternalName == null) {
            return null;
        }

        // Do not transform bootstrap and platform classes.
        if (loader == null || loader == ClassLoader.getPlatformClassLoader()) {
            return null;
        }

        // Transform selected core game classes.
        if (loader == ClassLoader.getSystemClassLoader() || loader == this.getClass().getClassLoader()) {
            String name = ClassName.binary(binaryOrInternalName);

            if (name.startsWith("org.lwjgl.util.glu.")) {
                return lwjglTransformers;
            } else if (name.startsWith("com.thoughtworks.xstream.")) {
                return xstreamTransformers;
            } else if (name.startsWith("com.fs.") || name.startsWith("sound.") || name.startsWith("zzz.com.fs.")) {
                return starfarerTransformers;
            } else if (name.startsWith("com.genir.renderer.agent.")) {
                return null;
            } else if (name.startsWith("com.genir.renderer.")) {
                return obfTransformers;
            } else {
                return null;
            }
        }

        // Assume classes loaded by loaders other than system loaders are scripts.
        return scriptTransformers;
    }
}
