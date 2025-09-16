package com.genir.renderer.loaders;

import java.io.InputStream;
import java.net.URL;
import java.security.ProtectionDomain;
import java.util.Arrays;
import java.util.List;

public class AppClassLoader extends ClassLoader implements ClassLoaderBridge {
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
                    // Replace OpenGL calls.
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
            if (doNotIntercept(name)) {
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

    private boolean doNotIntercept(String name) {
        return !name.startsWith("com.fs.") && !name.startsWith("org.lwjgl.util.") && !name.startsWith("com.genir.renderer.");
    }

    private List<ClassConstantTransformer> selectTransformer(String name) {
        if (name.startsWith("org.lwjgl.util.")) {
            return lwjglTransformers;
        } else if (name.startsWith("com.fs.")) {
            return starfarerTransformers;
        }

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
