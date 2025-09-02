package com.genir.renderer.loaders;

import java.io.InputStream;
import java.net.URL;
import java.security.ProtectionDomain;
import java.util.Arrays;

public class URLClassLoader extends java.net.URLClassLoader implements ClassLoaderBridge {
    private final ClassConstantTransformer transformer = new ClassConstantTransformer(Arrays.asList(
            // Replace OpenGL calls.
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL11", "com/genir/renderer/bridge/GL11"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL13", "com/genir/renderer/bridge/GL13"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL14", "com/genir/renderer/bridge/GL14"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL15", "com/genir/renderer/bridge/GL15"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL20", "com/genir/renderer/bridge/GL20"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL30", "com/genir/renderer/bridge/GL30"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL31", "com/genir/renderer/bridge/GL31"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL33", "com/genir/renderer/bridge/GL33"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL43", "com/genir/renderer/bridge/GL43"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/Display", "com/genir/renderer/bridge/Display"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GLContext", "com/genir/renderer/bridge/GLContext"),

            // Replace URLClassLoader with this implementation, to support mods that use custom class loaders to bypass reflection ban.
            ClassConstantTransformer.newTransform("java/net/URLClassLoader", "com/genir/renderer/loaders/URLClassLoader")
    ));

    private final ClassTransformer classTransformer = new ClassTransformer(this);

    public URLClassLoader(URL[] urls, ClassLoader parent) {
        super(urls, parent);
    }

    public URLClassLoader(URL[] urls) {
        super(urls);
    }

    @Override
    public InputStream getResourceAsStream(String name) {
        return classTransformer.getResourceAsStream(name, transformer);
    }

    @Override
    public Class<?> findClass(String name) throws ClassNotFoundException {
        return classTransformer.findClass(name, transformer);
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
