package com.genir.renderer.loaders;

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

        return getResourceLocal(internalName);
    }

    private InputStream getResourceLocal(String internalName) {
        return ClassTransformer.transformStream(
                internalName,
                super.getResourceAsStream(internalName),
                transformers
        );
    }

    @Override
    public Class<?> findClass(String name) throws ClassNotFoundException {
        String internalName = name.replace('.', '/') + ".class";
        byte[] bytecode = ClassTransformer.getBytecode(name, getResourceLocal(internalName));
        ProtectionDomain pd = ClassTransformer.getResourceProtectionDomain(internalName, super.findResource(internalName), this);
        return super.defineClass(name, bytecode, 0, bytecode.length, pd);
    }
}
