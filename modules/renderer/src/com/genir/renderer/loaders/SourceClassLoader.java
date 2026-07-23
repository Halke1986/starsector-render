package com.genir.renderer.loaders;

public class SourceClassLoader extends MultiThreadedJaninoClassLoader {
    static {
        // Marks this class loader type as parallel-capable
        registerAsParallelCapable();
    }

    private final ConstantTransformer scriptTransformer = new ConstantTransformer(ScriptTransformations.transformations);

    public SourceClassLoader(ClassLoader parent) {
        super(parent);
    }

    @Override
    public byte[] findBytecode(String internalName) throws ClassNotFoundException {
        byte[] originalBytes = super.findBytecode(internalName);
        return ClassTransformer.transformBytes(internalName, originalBytes, scriptTransformer);
    }
}
