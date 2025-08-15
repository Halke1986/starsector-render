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
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL13", "com/genir/renderer/bridge/GL13"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL14", "com/genir/renderer/bridge/GL14"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL15", "com/genir/renderer/bridge/GL15"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL20", "com/genir/renderer/bridge/GL20"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL30", "com/genir/renderer/bridge/GL30"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL31", "com/genir/renderer/bridge/GL31"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL33", "com/genir/renderer/bridge/GL33"),
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
            byte[] originalBytes = classStream.readAllBytes();
            byte[] transformedBytes = transformer.apply(originalBytes);

            Class<?> c;

            if (Arrays.equals(originalBytes, transformedBytes)) {
                // Use the original class if no transformation was required.
                // This helps to prevent errors with mods that use custom
                // class loaders.
                c = super.loadClass(name, resolve);
            } else {
                // Define the transformed class.
                c = super.defineClass(name, transformedBytes, 0, transformedBytes.length);
            }

            cache.put(name, c);
            return c;
        } catch (Throwable e) {
            return super.loadClass(name, resolve);
        }
    }
}
