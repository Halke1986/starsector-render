package com.genir.renderer.loaders;

import java.io.InputStream;
import java.net.URL;
import java.net.URLClassLoader;
import java.security.ProtectionDomain;
import java.util.List;

public class ScriptClassLoader extends URLClassLoader implements ClassTransformerClient {
    private final List<ClassConstantTransformer> transformers = List.of(
            new ClassConstantTransformer(ScriptTransformers.transforms)
    );

    private final ClassTransformer classTransformer = new ClassTransformer(this);

    public ScriptClassLoader(URL[] urls, ClassLoader parent) {
        super(urls, parent);
    }

    public ScriptClassLoader(URL[] urls) {
        super(urls);
    }

    @Override
    public InputStream getResourceAsStream(String name) {
        return classTransformer.getResourceAsStream(name, transformers);
    }

    @Override
    public Class<?> findClass(String name) throws ClassNotFoundException {
        return classTransformer.findClass(name, transformers);
    }

    @Override
    public InputStream superGetResourceAsStream(String internalName) {
        return super.getResourceAsStream(internalName);
    }

    @Override
    public URL superFindResource(String internalName) {
        return super.findResource(internalName);
    }

    @Override
    public Class<?> superDefineClass(String name, byte[] b, int off, int len, ProtectionDomain protectionDomain) {
        return super.defineClass(name, b, off, len, protectionDomain);
    }
}
