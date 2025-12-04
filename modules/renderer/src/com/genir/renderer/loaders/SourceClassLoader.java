package com.genir.renderer.loaders;

import java.io.InputStream;
import java.security.ProtectionDomain;
import java.util.List;

public class SourceClassLoader extends MultiThreadedJaninoClassLoader {
    static {
        // Marks this class loader type as parallel-capable
        registerAsParallelCapable();
    }

    private final List<ClassConstantTransformer> transformers = List.of(
            new ClassConstantTransformer(ScriptTransformations.transformations)
    );

    public SourceClassLoader(ClassLoader parent) {
        super(parent);
    }

    @Override
    public InputStream getResourceAsStream(String internalName) {
        // Do not transform parent classes.
        InputStream stream = getParent().getResourceAsStream(internalName);
        if (stream != null) {
            return stream;
        }

        return ClassTransformer.transformStream(
                internalName,
                super.getResourceAsStream(internalName),
                transformers
        );
    }

    @Override
    public Class<?> findClass(String name) throws ClassNotFoundException {
        String internalName = name.replace('.', '/') + ".class";
        byte[] bytecode = ClassTransformer.getBytecode(name, getResourceAsStream(internalName));
        ProtectionDomain pd = ClassTransformer.getResourceProtectionDomain(internalName, super.findResource(internalName), this);
        return super.defineClass(name, bytecode, 0, bytecode.length, pd);
    }
}
