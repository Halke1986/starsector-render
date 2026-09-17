package com.genir.renderer.agent.bytecode;

import org.objectweb.asm.ClassReader;
import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.commons.MethodRemapper;
import org.objectweb.asm.commons.Remapper;
import org.objectweb.asm.tree.ClassNode;
import org.objectweb.asm.tree.MethodNode;

/**
 * Copies a compiled donor method body into an existing target method.
 */
public final class MethodReplacer {
    private MethodReplacer() {
    }

    /**
     * Matches both methods by name and JVM descriptor. Descriptors must match
     * after replacing references to the donor class with the target class.
     * Both methods must be concrete and have the same static/instance status.
     * Constructors, class initializers, and interface owners are unsupported.
     * <p>
     * References to the donor class are remapped to the target class, including
     * frames and recursive calls. Referenced members are NOT copied: compatible
     * fields, helpers, constructors, and superclass relationships must already
     * exist in the target. Avoid donor lambdas and anonymous/local classes unless
     * their generated dependencies are explicitly handled elsewhere.
     * <p>
     * Preserves target declaration metadata and access flags, including its
     * synchronized flag. Copies donor debug information (line numbers therefore
     * refer to the donor source). No classes are loaded during transformation.
     * Uses ASM 9.1: asm, asm-tree, and asm-commons are required.
     */
    public static byte[] replaceMethodBody(
            byte[] targetBytes, byte[] donorBytes, String targetName, String donorName, String targetDescriptor, String donorDescriptor) {

        ClassReader targetReader = new ClassReader(targetBytes);
        ClassNode targetClass = new ClassNode(Opcodes.ASM9);
        targetReader.accept(targetClass, ClassReader.EXPAND_FRAMES);

        ClassNode donorClass = new ClassNode(Opcodes.ASM9);
        new ClassReader(donorBytes).accept(donorClass, ClassReader.EXPAND_FRAMES);

        if ((donorClass.version & 0xFFFF) > (targetClass.version & 0xFFFF)
                || (donorClass.version & 0xFFFF0000) != 0) {
            throw new IllegalArgumentException(
                    "Compile the donor without preview features and for the target class version or older");
        }

        MethodNode target = findMethod(targetClass, targetName, targetDescriptor);
        MethodNode donor = findMethod(donorClass, donorName, donorDescriptor);
        requireBody(target);
        requireBody(donor);
        if (((target.access ^ donor.access) & Opcodes.ACC_STATIC) != 0) {
            throw new IllegalArgumentException("Static/instance status must match");
        }

        Remapper remapper = new Remapper() {
            @Override
            public String map(String internalName) {
                return donorClass.name.equals(internalName) ? targetClass.name : internalName;
            }

            @Override
            public String mapMethodName(String owner, String name, String descriptor) {
                return donorClass.name.equals(owner) && donorName.equals(name)
                        && donorDescriptor.equals(descriptor) ? targetName : name;
            }
        };
        if (!targetDescriptor.equals(remapper.mapMethodDesc(donorDescriptor))) {
            throw new IllegalArgumentException("Descriptors do not match after owner remapping");
        }

        // Clone labels, instructions, and frames together, remapping owner types.
        MethodNode body = new MethodNode(Opcodes.ASM9, target.access,
                targetName, targetDescriptor, null, null);
        donor.accept(new MethodRemapper(body, remapper));

        // Copy only body data; retain the target's declaration and annotations.
        target.instructions = body.instructions;
        target.tryCatchBlocks = body.tryCatchBlocks;
        target.localVariables = body.localVariables;
        target.visibleLocalVariableAnnotations = body.visibleLocalVariableAnnotations;
        target.invisibleLocalVariableAnnotations = body.invisibleLocalVariableAnnotations;
        target.maxStack = body.maxStack;
        target.maxLocals = body.maxLocals;
        if (target.attrs != null) {
            target.attrs.removeIf(attribute -> attribute.isCodeAttribute());
        }

        // The complete donor body already has frames and maximum stack/local
        // counts. Preserve them to avoid class loading during frame computation.
        ClassWriter writer = new ClassWriter(targetReader, 0);
        targetClass.accept(writer);
        return writer.toByteArray();
    }

    private static MethodNode findMethod(ClassNode owner, String name, String descriptor) {
        for (MethodNode method : owner.methods) {
            if (method.name.equals(name) && method.desc.equals(descriptor)) {
                return method;
            }
        }
        throw new IllegalArgumentException("Method not found: " + owner.name + "." + name + descriptor);
    }

    private static void requireBody(MethodNode method) {
        if (method.name.startsWith("<")
                || (method.access & (Opcodes.ACC_ABSTRACT | Opcodes.ACC_NATIVE)) != 0
                || method.instructions.size() == 0) {
            throw new IllegalArgumentException("Expected an ordinary concrete method: " + method.name);
        }
    }
}
