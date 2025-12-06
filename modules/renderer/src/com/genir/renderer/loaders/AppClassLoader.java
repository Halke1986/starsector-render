package com.genir.renderer.loaders;

import java.io.ByteArrayInputStream;
import java.io.IOException;
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
            // Class does not require transformation
            // and should be loaded by the parent.
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
        // Class does not require transformation
        // and should be loaded by the parent.
        if (selectTransformer(internalName) == null) {
            return getParent().getResourceAsStream(internalName);
        }

        // Return local transformed class.
        try {
            return new ByteArrayInputStream(findBytecode(internalName));
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    // Return local transformed class bytecode.
    public byte[] findBytecode(String internalName) throws ClassNotFoundException {
        // Requested class is non-local and should have been loaded by the parent.
        if (selectTransformer(internalName) == null) {
            throw new ClassNotFoundException(ClassName.binary(internalName));
        }

        InputStream stream = super.getResourceAsStream(internalName);
        if (stream == null) {
            throw new ClassNotFoundException(ClassName.binary(internalName));
        }

        try {
            byte[] originalBytes = stream.readAllBytes();
            return ClassTransformer.transformBytes(internalName, originalBytes, selectTransformer(internalName));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Class<?> findClass(String name) throws ClassNotFoundException {
        String internalName = ClassName.internal(name);
        byte[] bytecode = findBytecode(internalName);
        ProtectionDomain pd = ClassTransformer.getResourceProtectionDomain(internalName, super.findResource(internalName), this);
        return super.defineClass(name, bytecode, 0, bytecode.length, pd);
    }

    private List<ClassConstantTransformer> selectTransformer(String binaryOrInternalName) {
        String name = ClassName.binary(binaryOrInternalName);
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
