package com.genir.renderer.loaders;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLClassLoader;
import java.security.ProtectionDomain;
import java.util.List;

public class ScriptClassLoader extends URLClassLoader {
    private final List<ClassConstantTransformer> transformers = List.of(
            new ClassConstantTransformer(ScriptTransformations.transformations)
    );

    public ScriptClassLoader(URL[] urls, ClassLoader parent) {
        super(urls, parent);
    }

    public ScriptClassLoader(URL[] urls) {
        super(urls);
    }

    @Override
    public InputStream getResourceAsStream(String internalName) {
        // Do not transform parent classes.
        InputStream stream = getParent().getResourceAsStream(internalName);
        if (stream != null) {
            return stream;
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
        InputStream stream = super.getResourceAsStream(internalName);
        if (stream == null) {
            throw new ClassNotFoundException(ClassName.binary(internalName));
        }

        try {
            byte[] originalBytes = stream.readAllBytes();
            return ClassTransformer.transformBytes(internalName, originalBytes, transformers);
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
}
