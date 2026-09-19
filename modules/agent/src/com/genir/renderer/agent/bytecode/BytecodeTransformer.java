package com.genir.renderer.agent.bytecode;

public class BytecodeTransformer {
    public boolean transformApplied = false;

    public byte[] targetBytes;

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

    public void mergeClass(byte[] donorBytes) {
        transformApplied = true;
        targetBytes = MethodCopier.copyMethods(targetBytes, donorBytes);
    }
}
