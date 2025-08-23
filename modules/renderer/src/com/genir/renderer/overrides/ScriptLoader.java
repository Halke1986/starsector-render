package com.genir.renderer.overrides;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.security.CodeSigner;
import java.security.CodeSource;
import java.security.ProtectionDomain;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class ScriptLoader extends URLClassLoader {
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
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GL43", "com/genir/renderer/bridge/GL43"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/Display", "com/genir/renderer/bridge/Display"),
            ClassConstantTransformer.newTransform("org/lwjgl/opengl/GLContext", "com/genir/renderer/bridge/GLContext"),
            ClassConstantTransformer.newTransform("java/net/URLClassLoader", "com/genir/renderer/overrides/ScriptLoader")
    ));

    public ScriptLoader(URL[] urls, ClassLoader parent) {
        super(urls, parent);
    }

    public ScriptLoader(URL[] urls) {
        super(urls);
    }

    @Override
    public Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
        Class<?> cached = findLoadedClass(name);
        if (cached != null) {
            return cached;
        }

        // Do not try to transform Starsector core and libraries.
        try {
//            return ClassLoader.getSystemClassLoader().loadClass(name);
            return super.loadClass(name, resolve);
        } catch (ClassNotFoundException ignored) {
        }

        return findClass(name);
    }

    @Override
    public Class<?> findClass(String name) throws ClassNotFoundException {
        String binaryName = name.replace('.', '/') + ".class";

        if (name.contains("RefitTabListenerAndScript")) {
//            logStack();
        }

        // Get class resource stream.
        InputStream classStream = super.getResourceAsStream(binaryName);
        if (classStream == null) {
            throw new ClassNotFoundException(name);
        }

        // Read class bytes.
        byte[] originalBytes;
        try {
            originalBytes = classStream.readAllBytes();
        } catch (IOException e) {
            throw new ClassNotFoundException(name, e);
        }

        // Read class code source.
        URL url = super.findResource(binaryName);
        if (url != null) {
            String urlStr = url.toString();
            int i = urlStr.lastIndexOf(binaryName);
            if (i > 0) {
                try {
                    url = new URL(urlStr.substring(0, i));
                } catch (MalformedURLException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        CodeSource source = new CodeSource(url, (CodeSigner[]) null);
        ProtectionDomain pd = new ProtectionDomain(source, null, this, null);

        // Define transformed class.
        byte[] transformedBytes = transformer.apply(originalBytes);
        return super.defineClass(name, transformedBytes, 0, transformedBytes.length, pd);
    }
}
