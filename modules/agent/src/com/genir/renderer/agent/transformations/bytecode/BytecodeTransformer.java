package com.genir.renderer.agent.transformations.bytecode;

import com.genir.renderer.agent.ClassName;
import com.genir.renderer.agent.transformations.constants.ConstantReplacer;
import com.genir.renderer.agent.transformations.symbols.CommonTransformers;

import java.io.IOException;
import java.io.InputStream;

public class BytecodeTransformer {
    private final CommonTransformers commonTransformers;
    public byte[] targetBytes;

    public BytecodeTransformer(CommonTransformers common, String targetName) {
        this.commonTransformers = common;
        this.targetBytes = loadStarfarerTransformedBytes(targetName);
    }

    public BytecodeTransformer(CommonTransformers common, byte[] targetBytes) {
        this.commonTransformers = common;
        this.targetBytes = targetBytes;
    }

    public void renameMethod(String oldName, String newName, String descriptor) {
        targetBytes = MethodRenamer.renameMethod(targetBytes, oldName, newName, descriptor);
    }

    public void removeMethod(String methodName, String descriptor) {
        targetBytes = MethodRemover.removeMethod(targetBytes, methodName, descriptor);
    }

    public void mergeClass(String donorClassName) {
        byte[] donorBytes = loadFRTransformedBytes(donorClassName);
        mergeClass(donorClassName, donorBytes);
    }

    public void mergeClass(String donorClassName, byte[] donorBytes) {
        String donorJavaName = ClassName.simple(donorClassName) + ".java";

        targetBytes = MethodCopier.copyMethods(targetBytes, donorBytes, donorJavaName);
    }

    private byte[] loadStarfarerTransformedBytes(String className) {
        return loadTransformedBytes(className, commonTransformers.starfarerTransformer);
    }

    private byte[] loadFRTransformedBytes(String className) {
        return loadTransformedBytes(className, commonTransformers.frTransformer);
    }

    private byte[] loadTransformedBytes(String className, ConstantReplacer transformer) {
        try {
            ClassLoader loader = this.getClass().getClassLoader();
            InputStream stream = loader.getResourceAsStream(ClassName.resource(className));
            return transformer.apply(stream.readAllBytes());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
