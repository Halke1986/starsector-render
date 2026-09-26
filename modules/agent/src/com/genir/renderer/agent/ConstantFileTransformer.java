package com.genir.renderer.agent;

import java.lang.instrument.ClassFileTransformer;
import java.security.ProtectionDomain;
import java.util.Arrays;

public class ConstantFileTransformer implements ClassFileTransformer {
    private final ConstantTransformer frTransformer = new ConstantTransformer(Rules.obfuscation, Rules.overrides);
    private final ConstantTransformer scriptTransformer = new ConstantTransformer(Rules.opengl);
    private final ConstantTransformer xstreamTransformer = new ConstantTransformer(Rules.xstream);
    private final ConstantTransformer lwjglTransformer = new ConstantTransformer(Rules.lwjgl);
    private final ConstantTransformer starfarerTransformer = new ConstantTransformer(
            Rules.opengl,  // Replace OpenGL calls.
            Rules.scriptLoader,  // Replace class loader for loading scripts.
            Rules.obfuscation, // Obfuscate assembled overrides.
            IllegalRules.transformations  // Sanitize illegal obf symbols.
    );

    @Override
    public byte[] transform(
            ClassLoader loader,
            String className,
            Class<?> classBeingRedefined,
            ProtectionDomain protectionDomain,
            byte[] classfileBuffer
    ) {
        ConstantTransformer transformer = selectTransformers(loader, className);
        if (transformer == null) {
            return null;
        }

        byte[] transformedClass = transformer.apply(classfileBuffer);
        if (Arrays.equals(transformedClass, classfileBuffer)) {
            return null;
        }

        return transformedClass;
    }

    private ConstantTransformer selectTransformers(ClassLoader loader, String binaryOrInternalName) {
        // No class to transform.
        if (binaryOrInternalName == null) {
            return null;
        }

        // Do not transform bootstrap and platform classes.
        if (loader == null || loader == ClassLoader.getPlatformClassLoader()) {
            return null;
        }

        // Transform selected core game classes.
        String name = ClassName.binary(binaryOrInternalName);
        if (name.startsWith("org.lwjgl.util.glu.")) {
            return lwjglTransformer;
        } else if (name.startsWith("com.thoughtworks.xstream.")) {
            return xstreamTransformer;
        } else if (name.startsWith("com.fs.") || name.startsWith("sound.") || name.startsWith("zzz.com.fs.")) {
            return starfarerTransformer;
        } else if (name.startsWith("com.genir.renderer.agent.")) {
            return null;
        } else if (name.startsWith("com.genir.renderer.")) {
            return frTransformer;
        } else if (loader == ClassLoader.getSystemClassLoader() || loader == this.getClass().getClassLoader()) {
            // Other core game classes.
            return null;
        } else if (name.startsWith("DeCell.VOpt.Commons.Rendering.")) {
            // Do not replace OpenGL calls in VOpt, as it does run directly on rendering thread.
            return null;
        } else if (name.contains("FSD_PlatingHitRenderer") || name.contains("FSD_CocxisDrivePlatingRenderer")) {
            // Workaround for FarsightDrive async stall on repeated glGetError calls.
            return new ConstantTransformer(Rules.opengl, Rules.glDrainErrors);
        } else {
            // Do Assume classes loaded by loaders other than system loaders are scripts.
            return scriptTransformer;
        }
    }
}
