package com.genir.renderer.agent.bytecode;

import com.genir.renderer.agent.ClassName;
import com.genir.renderer.agent.ConstantTransformer;
import com.genir.renderer.agent.IllegalRules;
import com.genir.renderer.agent.Rules;

import java.io.IOException;
import java.io.InputStream;

public class BytecodeTransformer {
    private static final ConstantTransformer overrideTransformer = new ConstantTransformer(
            Rules.obfuscation, Rules.overrides, IllegalRules.transformations);

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

    public void mergeClass(String donorClassName) {
        try {
            ClassLoader loader = this.getClass().getClassLoader();
            InputStream stream = loader.getResourceAsStream(ClassName.internal(donorClassName));
            byte[] donorBytes = overrideTransformer.apply(stream.readAllBytes());
            String donorJavaName = ClassName.simple(donorClassName) + ".java";

            transformApplied = true;
            targetBytes = MethodCopier.copyMethods(targetBytes, donorBytes, donorJavaName);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
