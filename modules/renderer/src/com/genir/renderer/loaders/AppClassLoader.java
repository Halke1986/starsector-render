package com.genir.renderer.loaders;

import java.io.InputStream;
import java.net.URL;
import java.security.ProtectionDomain;
import java.util.Arrays;
import java.util.List;

public class AppClassLoader extends ClassLoader implements ClassLoaderBridge {
    private final List<ClassConstantTransformer> noOpTransformers = List.of();

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
                    ClassConstantTransformer.newTransform("java/net/URLClassLoader", "com/genir/renderer/loaders/URLClassLoader")
            )),
            new ClassConstantTransformer(List.of(
                    // Fix org/lwjgl/util/Display -> com/genir/renderer/bridge/DisplayMode transform caused by a false positive match.
                    ClassConstantTransformer.newTransform("com/genir/renderer/bridge/DisplayMode", "org/lwjgl/opengl/DisplayMode")
            ))
    );

    private final ClassTransformer classTransformer = new ClassTransformer(this);

    public AppClassLoader(ClassLoader parent) {
        super(parent);
    }

    @Override
    public Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
        synchronized (getClassLoadingLock(name)) {
            if (selectTransformer(name) == null) {
                return super.getParent().loadClass(name);
            }

            Class<?> loaded = findLoadedClass(name);
            if (loaded != null) {
                return loaded;
            }

            return findClass(name);
        }
    }

    @Override
    public InputStream getResourceAsStream(String name) {
        List<ClassConstantTransformer> transformers = selectTransformer(name);
        return classTransformer.getResourceAsStream(name, transformers);
    }

    @Override
    public Class<?> findClass(String name) throws ClassNotFoundException {
        List<ClassConstantTransformer> transformers = selectTransformer(name);
        return classTransformer.findClass(name, transformers);
    }

    private List<ClassConstantTransformer> selectTransformer(String name) {
        if (name.startsWith("org.lwjgl.util.glu.")) {
            return lwjglTransformers;
        } else if (name.startsWith("com.fs.") || name.startsWith("zzz.com.fs.")) {
            return starfarerTransformers;
        } else if (name.startsWith("com.genir.renderer.")) {
            // Renderer does not need transformation itself,
            // but it does call transformed Starsector classes.
            // Loading renderer through the base app class loader
            // would lead to duplicate Starsector class definition.
            return noOpTransformers;
        }

        // Do not intercept this class.
        return null;
    }

    @Override
    public InputStream superGetResourceAsStream(String name) {
        return super.getResourceAsStream(name);
    }

    @Override
    public URL superFindResource(String name) {
        return super.findResource(name);
    }

    @Override
    public Class<?> superDefineClass(String name, byte[] b, int off, int len, ProtectionDomain protectionDomain) {
        return super.defineClass(name, b, off, len, protectionDomain);
    }
}
