package com.genir.renderer.agent.bytecode;

import com.genir.renderer.agent.ClassName;

import java.io.IOException;
import java.util.Objects;

public class BytecodeTransformer {
    public byte[] targetBytes;
    private final byte[] donorBytes;

    public BytecodeTransformer(byte[] targetBytes, String donorName) {
        this.targetBytes = targetBytes;

        if (donorName != null) {
            donorBytes = readClassBytes(ClassName.internal(donorName));
        } else {
            donorBytes = null;
        }
    }

    public void replaceMethod(String targetName, String donorName, String targetDescriptor, String donorDescriptor) {
        targetBytes = MethodReplacer.replaceMethodBody(targetBytes, donorBytes, targetName, donorName, targetDescriptor, donorDescriptor);
    }


    public void addMethod(String donorName, String descriptor) {
        targetBytes = MethodAdder.addMethod(targetBytes, donorBytes, donorName, descriptor);
    }

    public void renameMethod(String oldName, String newName, String descriptor) {
        targetBytes = MethodRenamer.renameMethod(targetBytes, oldName, newName, descriptor);
    }

    private byte[] readClassBytes(String className) {
        try {
            ClassLoader loader = this.getClass().getClassLoader();
            return Objects.requireNonNull(loader.getResourceAsStream(className)).readAllBytes();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
