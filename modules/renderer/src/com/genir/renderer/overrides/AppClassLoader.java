package com.genir.renderer.overrides;

import com.genir.renderer.overrides.loaders.ClassLoaderBridge;
import com.genir.renderer.overrides.loaders.ClassTransformer;

import java.io.InputStream;
import java.net.URL;
import java.security.ProtectionDomain;
import java.util.Arrays;

public class AppClassLoader extends ClassLoader implements ClassLoaderBridge {
    private final ClassConstantTransformer transformer = new ClassConstantTransformer(Arrays.asList(
            // Replace OpenGL calls.
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL11", "com/genir/renderer/bridge/GL11"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL14", "com/genir/renderer/bridge/GL14")
    ));

    private final ClassTransformer classTransformer = new ClassTransformer(this);

    public AppClassLoader(ClassLoader parent) {
        super(parent);
    }

    @Override
    public Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
        if (doNotIntercept(name)) {
            return super.getParent().loadClass(name);
        }

        Class<?> loaded = findLoadedClass(name);
        if (loaded != null) {
            return loaded;
        }

        return findClass(name);
    }

    private boolean doNotIntercept(String name) {
        return !name.startsWith("com.fs.") && !name.startsWith("org.lwjgl.util.") && !name.startsWith("com.genir.renderer.");
    }

    @Override
    public InputStream getResourceAsStream(String name) {
        if (name.startsWith("org.lwjgl.util")) {
            return classTransformer.getResourceAsStream(name, transformer);
        }

        return classTransformer.getResourceAsStream(name, null);
    }

    @Override
    public Class<?> findClass(String name) throws ClassNotFoundException {
        if (name.startsWith("org.lwjgl.util")) {
            return classTransformer.findClass(name, transformer);
        }

        return classTransformer.findClass(name, null);
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
