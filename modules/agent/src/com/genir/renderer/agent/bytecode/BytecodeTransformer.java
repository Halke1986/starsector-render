package com.genir.renderer.agent.bytecode;

import com.genir.renderer.agent.ClassName;
import com.genir.renderer.agent.ConstantFileTransformer;
import com.genir.renderer.agent.ConstantTransformer;

import java.io.IOException;
import java.io.InputStream;

public class BytecodeTransformer {
    public boolean transformApplied = false;

    public byte[] targetBytes;

    public BytecodeTransformer(String targetName) {
        this.targetBytes = loadStarfarerTransformedBytes(targetName);
    }

    public BytecodeTransformer(byte[] targetBytes) {
        this.targetBytes = targetBytes;
    }

    public void renameMethod(String oldName, String newName, String descriptor) {
        transformApplied = true;
        targetBytes = MethodRenamer.renameMethod(targetBytes, oldName, newName, descriptor);
    }

    public void removeMethod(String methodName, String descriptor) {
        transformApplied = true;
        targetBytes = MethodRemover.removeMethod(targetBytes, methodName, descriptor);
    }

    public void mergeClass(String donorClassName) {
        byte[] donorBytes = loadFRTransformedBytes(donorClassName);
        mergeClass(donorClassName, donorBytes);
    }

    public void mergeClass(String donorClassName, byte[] donorBytes) {
        String donorJavaName = ClassName.simple(donorClassName) + ".java";

        transformApplied = true;
        targetBytes = MethodCopier.copyMethods(targetBytes, donorBytes, donorJavaName);
    }

    private byte[] loadStarfarerTransformedBytes(String className) {
        return loadTransformedBytes(className, ConstantFileTransformer.starfarerTransformer);
    }

    private byte[] loadFRTransformedBytes(String className) {
        return loadTransformedBytes(className, ConstantFileTransformer.frTransformer);
    }

    private byte[] loadTransformedBytes(String className, ConstantTransformer transformer) {
        try {
            ClassLoader loader = this.getClass().getClassLoader();
            InputStream stream = loader.getResourceAsStream(ClassName.internal(className));
            return transformer.apply(stream.readAllBytes());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
