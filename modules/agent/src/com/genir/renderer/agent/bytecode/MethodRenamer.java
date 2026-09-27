package com.genir.renderer.agent.bytecode;

import org.objectweb.asm.*;

/**
 * Renames a method declaration without updating any calls or references.
 */
public final class MethodRenamer {
    private MethodRenamer() {
    }

    /**
     * Renames the method selected by its current name and JVM descriptor.
     * Input and output contain complete class file bytes.
     * Only the declaration name changes; the descriptor, body, access flags,
     * annotations, and frames are preserved. All calls and references retain
     * their original names, even if they become invalid after the rename.
     * <p>
     * Rejects missing methods, name/descriptor conflicts, constructors, and
     * class initializers. With standard Java instrumentation, rename during
     * initial class loading, not as a schema change to an already loaded class.
     * <p>
     * Requires org.ow2.asm:asm:9.1 only.
     */
    public static byte[] renameMethod(byte[] classBytes, String oldName, String newName,
                                      String descriptor) {
        requireOrdinaryName(oldName);
        requireOrdinaryName(newName);

        ClassReader reader = new ClassReader(classBytes);
        ClassWriter writer = new ClassWriter(reader, 0);
        boolean[] found = {false};

        reader.accept(new ClassVisitor(Opcodes.ASM9, writer) {
            @Override
            public MethodVisitor visitMethod(int access, String name, String desc,
                                             String signature, String[] exceptions) {
                if (desc.equals(descriptor)) {
                    if (name.equals(oldName)) {
                        found[0] = true;
                        name = newName;
                    } else if (name.equals(newName)) {
                        throw new IllegalArgumentException(
                                "Method already exists: " + reader.getClassName()
                                        + "." + newName + descriptor);
                    }
                }

                // Return the writer's visitor directly: do not rewrite the body
                // or any method references, including recursive calls.
                return super.visitMethod(access, name, desc, signature, exceptions);
            }
        }, 0);

        if (!found[0]) {
            throw new IllegalArgumentException(
                    "Method not found: " + reader.getClassName() + "." + oldName + descriptor);
        }
        return oldName.equals(newName) ? classBytes : writer.toByteArray();
    }

    private static void requireOrdinaryName(String name) {
        if (name == null || name.isEmpty() || name.indexOf('.') >= 0
                || name.indexOf(';') >= 0 || name.indexOf('[') >= 0
                || name.indexOf('/') >= 0 || name.indexOf('<') >= 0
                || name.indexOf('>') >= 0) {
            throw new IllegalArgumentException("Expected an ordinary JVM method name: " + name);
        }
    }
}
