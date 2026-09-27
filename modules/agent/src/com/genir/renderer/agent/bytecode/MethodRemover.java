package com.genir.renderer.agent.bytecode;

import org.objectweb.asm.ClassReader;
import org.objectweb.asm.ClassVisitor;
import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;

/**
 * Removes a declared method without updating any calls or references.
 */
public final class MethodRemover {
    private MethodRemover() {
    }

    /**
     * Removes the method selected by its name and JVM descriptor.
     * Input and output contain complete class file bytes.
     * All other methods, calls, and references remain unchanged, even if
     * references to the removed method become invalid.
     * <p>
     * Throws IllegalArgumentException if the method is not declared in the
     * target class. Constructors and class initializers can also be selected
     * using their JVM names (<init> and <clinit>) and descriptors.
     * <p>
     * With standard Java instrumentation, remove methods during initial class
     * loading, not as a schema change to an already loaded class.
     * Requires org.ow2.asm:asm:9.1 only.
     */
    public static byte[] removeMethod(byte[] targetBytes, String methodName,
                                      String descriptor) {
        ClassReader reader = new ClassReader(targetBytes);
        ClassWriter writer = new ClassWriter(reader, 0);
        boolean[] found = {false};

        reader.accept(new ClassVisitor(Opcodes.ASM9, writer) {
            @Override
            public MethodVisitor visitMethod(int access, String name, String desc,
                                             String signature, String[] exceptions) {
                if (name.equals(methodName) && desc.equals(descriptor)) {
                    found[0] = true;
                    // Omit the declaration and its body from the output.
                    return null;
                }

                // Forward all other methods without rewriting their contents.
                return super.visitMethod(access, name, desc, signature, exceptions);
            }
        }, 0);

        if (!found[0]) {
            throw new IllegalArgumentException(
                    "Method not found: " + reader.getClassName() + "." + methodName + descriptor);
        }
        return writer.toByteArray();
    }
}
