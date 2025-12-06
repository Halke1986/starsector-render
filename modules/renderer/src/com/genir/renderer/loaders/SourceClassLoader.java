package com.genir.renderer.loaders;

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
    public byte[] findBytecode(String internalName) throws ClassNotFoundException {
        byte[] originalBytes = super.findBytecode(internalName);
        return ClassTransformer.transformBytes(internalName, originalBytes, transformers);
    }
}
