package com.genir.renderer.agent;

import java.lang.instrument.ClassFileTransformer;
import java.security.ProtectionDomain;
import java.util.Arrays;
import java.util.List;

public class ClassTransformer implements ClassFileTransformer {
    private final List<ConstantTransformer> obfTransformers = List.of(
            new ConstantTransformer(ObfTransformations.transformations)
    );

    private final List<ConstantTransformer> lwjglTransformers = List.of(
            new ConstantTransformer(Arrays.asList(
                    // Replace OpenGL calls.
                    ConstantTransformer.newTransform("org/lwjgl/opengl/GL11", "com/genir/renderer/bridge/commands/GL11"),
                    ConstantTransformer.newTransform("org/lwjgl/opengl/GL14", "com/genir/renderer/bridge/commands/GL14")
            ))
    );

    private final List<ConstantTransformer> xstreamTransformers = List.of(
            new ConstantTransformer(List.of(
                    // Use memory-optimized Path implementation
                    ConstantTransformer.newTransform("com/thoughtworks/xstream/io/path/Path", "com/genir/renderer/overrides/xstream/Path")
            )),
            new ConstantTransformer(Arrays.asList(
                    // Fix transforms caused by a false positive match.
                    ConstantTransformer.newTransform("com/genir/renderer/overrides/xstream/PathTracker", "com/thoughtworks/xstream/io/path/PathTracker"),
                    ConstantTransformer.newTransform("com/genir/renderer/overrides/xstream/PathTrackingReader", "com/thoughtworks/xstream/io/path/PathTrackingReader"),
                    ConstantTransformer.newTransform("com/genir/renderer/overrides/xstream/PathTrackingWriter", "com/thoughtworks/xstream/io/path/PathTrackingWriter")
            ))
    );

    private final List<ConstantTransformer> starfarerTransformers = List.of(
            new ConstantTransformer(Arrays.asList(
                    // Replace OpenGL calls.
                    ConstantTransformer.newTransform("org/lwjgl/opengl/GL11", "com/genir/renderer/bridge/commands/GL11"),
                    ConstantTransformer.newTransform("org/lwjgl/opengl/GL14", "com/genir/renderer/bridge/commands/GL14"),
                    ConstantTransformer.newTransform("org/lwjgl/opengl/Display", "com/genir/renderer/bridge/commands/Display"),
                    ConstantTransformer.newTransform("org/lwjgl/opengl/GLContext", "com/genir/renderer/bridge/commands/GLContext"),
                    ConstantTransformer.newTransform("org/lwjgl/util/Display", "com/genir/renderer/bridge/commands/DisplayUtil"),

                    // Replace class loader for loading scripts.
                    ConstantTransformer.newTransform("org/codehaus/janino/JavaSourceClassLoader", "java/lang/ClassLoader")
            )),
            new ConstantTransformer(List.of(
                    // Fix org/lwjgl/util/Display -> com/genir/renderer/bridge/commands/DisplayMode transform caused by a false positive match.
                    ConstantTransformer.newTransform("com/genir/renderer/bridge/commands/DisplayMode", "org/lwjgl/opengl/DisplayMode")
            )),
            // Obfuscate assembled overrides.
            new ConstantTransformer(ObfTransformations.transformations)
    );

    @Override
    public byte[] transform(
            ClassLoader loader,
            String className,
            Class<?> classBeingRedefined,
            ProtectionDomain protectionDomain,
            byte[] classfileBuffer
    ) {
        if (className == null) {
            return null;
        }

        List<ConstantTransformer> transformers = selectTransformers(className);
        if (transformers == null) {
            return null;
        }

        byte[] outputBytes = classfileBuffer;
        for (ConstantTransformer t : transformers) {
            outputBytes = t.apply(t.apply(t.apply(outputBytes)));
        }

        return outputBytes;
    }

    private List<ConstantTransformer> selectTransformers(String binaryOrInternalName) {
        String name = ClassName.binary(binaryOrInternalName);

        if (name.startsWith("org.lwjgl.util.glu.")) {
            return lwjglTransformers;
        } else if (name.startsWith("com.thoughtworks.xstream.")) {
            return xstreamTransformers;
        } else if (name.startsWith("com.fs.") || name.startsWith("zzz.com.fs.")) {
            return starfarerTransformers;
        } else if (name.startsWith("com.genir.renderer.agent.")) {
            return null;
        } else if (name.startsWith("com.genir.renderer.")) {
            return obfTransformers;
        }

        // Do not transform this class.
        return null;
    }
}
