package com.genir.renderer.agent.bytecode;

public class BytecodeTransformer {
    public byte[] targetBytes;

    public BytecodeTransformer(byte[] targetBytes) {
        this.targetBytes = targetBytes;
    }

    public void renameMethod(String oldName, String newName, String descriptor) {
        targetBytes = MethodRenamer.renameMethod(targetBytes, oldName, newName, descriptor);
    }

    public void removeMethod(String methodName, String descriptor) {
        targetBytes = MethodRemover.removeMethod(targetBytes, methodName, descriptor);
    }

    public void mergeClass(byte[] donorBytes) {
        targetBytes = MethodCopier.copyMethods(targetBytes, donorBytes);
    }
}
