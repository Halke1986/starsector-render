package com.genir.renderer.overrides;

import java.io.InputStream;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class ModLoader extends URLClassLoader {
    private final Map<String, Class<?>> cache = new HashMap<>();

    private static final ClassConstantTransformer transformer = new ClassConstantTransformer(Arrays.asList(
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL11", "com/genir/renderer/bridge/GL11"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL15", "com/genir/renderer/bridge/GL15"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/Display", "com/genir/renderer/bridge/Display"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GLContext", "com/genir/renderer/bridge/GLContext")
    ));

    public ModLoader(URL[] urls, ClassLoader parent) {
        super(urls, parent);
    }

    @Override
    public Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
        // Do not try to transform Starsector core and libraries.
        try {
            return ClassLoader.getSystemClassLoader().loadClass(name);
        } catch (ClassNotFoundException ignored) {
        }

        Class<?> cached = cache.get(name);
        if (cached != null) {
            return cached;
        }

        InputStream classStream = super.getResourceAsStream(name.replace('.', '/') + ".class");
        if (classStream == null) {
            return super.loadClass(name, resolve);
        }

        try {
            byte[] classBytes = transformer.apply(classStream.readAllBytes());
            Class<?> c = super.defineClass(name, classBytes, 0, classBytes.length);

            cache.put(name, c);
            return c;
        } catch (Throwable e) {
            return super.loadClass(name, resolve);
        }
    }
}
