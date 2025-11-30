package com.genir.renderer.loaders;

import java.io.InputStream;
import java.security.ProtectionDomain;
import java.util.Arrays;
import java.util.List;

public class AppClassLoader extends ClassLoader {
    private final List<ClassConstantTransformer> obfTransformers = List.of(
            new ClassConstantTransformer(ObfTransformations.transformations)
    );

    private final List<ClassConstantTransformer> lwjglTransformers = List.of(
            new ClassConstantTransformer(Arrays.asList(
                    // Replace OpenGL calls.
                    ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL11", "com/genir/renderer/bridge/GL11"),
                    ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL14", "com/genir/renderer/bridge/GL14")
            ))
    );

    private final List<ClassConstantTransformer> starfarerTransformers = List.of(
            new ClassConstantTransformer(Arrays.asList(
                    // Replace OpenGL calls.
                    ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL11", "com/genir/renderer/bridge/GL11"),
                    ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL14", "com/genir/renderer/bridge/GL14"),
                    ClassConstantTransformer.newTransform("org/lwjgl/opengl/Display", "com/genir/renderer/bridge/Display"),
                    ClassConstantTransformer.newTransform("org/lwjgl/opengl/GLContext", "com/genir/renderer/bridge/GLContext"),
                    ClassConstantTransformer.newTransform("org/lwjgl/util/Display", "com/genir/renderer/bridge/DisplayUtil"),

                    // Replace class loader for loading scripts.
                    ClassConstantTransformer.newTransform("org/codehaus/janino/JavaSourceClassLoader", "java/lang/ClassLoader")
            )),
            new ClassConstantTransformer(List.of(
                    // Fix org/lwjgl/util/Display -> com/genir/renderer/bridge/DisplayMode transform caused by a false positive match.
                    ClassConstantTransformer.newTransform("com/genir/renderer/bridge/DisplayMode", "org/lwjgl/opengl/DisplayMode")
            )),
            // Obfuscate assembled overrides.
            new ClassConstantTransformer(ObfTransformations.transformations)
    );

    public AppClassLoader(ClassLoader parent) {
        super(parent);
    }

    @Override
    public Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
        synchronized (getClassLoadingLock(name)) {
            if (selectTransformer(name) == null) {
                return getParent().loadClass(name);
            }

            Class<?> loaded = findLoadedClass(name);
            if (loaded != null) {
                return loaded;
            }

            return findClass(name);
        }
    }

    @Override
    public InputStream getResourceAsStream(String internalName) {
        return ClassTransformer.transformStream(
                internalName,
                super.getResourceAsStream(internalName),
                selectTransformer(internalName)
        );
    }

    @Override
    public Class<?> findClass(String name) throws ClassNotFoundException {
        String internalName = name.replace('.', '/') + ".class";
        byte[] bytecode = ClassTransformer.getBytecode(name, getResourceAsStream(internalName));
        ProtectionDomain pd = ClassTransformer.getResourceProtectionDomain(internalName, super.findResource(internalName), this);
        return super.defineClass(name, bytecode, 0, bytecode.length, pd);
    }

    private List<ClassConstantTransformer> selectTransformer(String name) {
        name = name.replace('/', '.');
        if (name.startsWith("org.lwjgl.util.glu.")) {
            return lwjglTransformers;
        } else if (name.startsWith("com.fs.") || name.startsWith("zzz.com.fs.")) {
            return starfarerTransformers;
        } else if (name.startsWith("com.genir.renderer.")) {
            return obfTransformers;
        }

        // Do not intercept this class.
        return null;
    }
}
