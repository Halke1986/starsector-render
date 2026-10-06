package com.genir.renderer.agent;

import com.genir.renderer.Version;

import java.lang.instrument.ClassFileTransformer;
import java.security.ProtectionDomain;
import java.util.Arrays;
import java.util.Map;

import static java.util.Map.entry;

public class ConstantFileTransformer implements ClassFileTransformer {
    private static final ConstantTransformer scriptTransformer = new ConstantTransformer(Transformations.opengl);
    private static final ConstantTransformer xstreamTransformer = new ConstantTransformer(Transformations.xstream);
    private static final ConstantTransformer lwjglTransformer = new ConstantTransformer(Transformations.lwjgl);
    public static final ConstantTransformer frTransformer = new ConstantTransformer(
            Transformations.overrides,
            Transformations.overridesDebug,
            Transformations.obfuscation,
            IllegalTransformations.transformations
    );
    public static final ConstantTransformer starfarerTransformer = new ConstantTransformer(
            Transformations.overridesDebug,
            Transformations.opengl,  // Replace OpenGL calls.
            Transformations.scriptLoader,  // Replace class loader for loading scripts.
            Transformations.obfuscation, // Obfuscate assembled overrides.
            IllegalTransformations.transformations  // Sanitize illegal obf symbols.
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

        } else if (name.equals("com.fs.starfarer.Version")) {
            // Append FR version to watermark.
            return new ConstantTransformer(starfarerTransformer.getTransforms(),
                    Map.ofEntries(entry("Starsector 0.98a-RC8", "Starsector 0.98a-RC8 " + Version.getVersion().replace("v0.", "FR"))));

        } else if (name.equals("com.fs.starfarer.BaseGameState") || name.equals("com.fs.starfarer.combat.CombatState")) {
            // Override methods related to frame update.
            return new ConstantTransformer(starfarerTransformer.getTransforms(), Transformations.sync);

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
            return new ConstantTransformer(Transformations.opengl,
                    Map.ofEntries(entry("glGetError", "glDrainErrors")));

        } else {
            // Do Assume classes loaded by loaders other than system loaders are scripts.
            return scriptTransformer;
        }
    }
}
