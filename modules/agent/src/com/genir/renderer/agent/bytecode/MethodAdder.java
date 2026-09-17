package com.genir.renderer.agent.bytecode;

import org.objectweb.asm.ClassReader;
import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.commons.MethodRemapper;
import org.objectweb.asm.commons.Remapper;
import org.objectweb.asm.tree.ClassNode;
import org.objectweb.asm.tree.MethodNode;

/**
 * Copies a compiled donor method into a target class as a new method.
 */
public final class MethodAdder {
    private MethodAdder() {
    }

    /**
     * Adds the donor method under its original name.
     */
    public static byte[] addMethod(byte[] targetBytes, byte[] donorBytes,
                                   String donorName, String donorDescriptor) {
        return addMethod(targetBytes, donorBytes, donorName, donorName, donorDescriptor);
    }

    /**
     * Adds one donor method under the supplied target name and returns the
     * complete modified target class bytes. Both input arrays contain complete
     * class files. The donor is selected by name and JVM descriptor.
     * <p>
     * Copies access flags (including static and synchronized), annotations,
     * generic signature, declared exceptions, instructions, exception handlers,
     * frames, and debug information. Line numbers refer to the donor source.
     * The added descriptor is the donor descriptor with owner types remapped.
     * An existing target method with that name and descriptor is rejected.
     * <p>
     * All references to the donor class become references to the target class.
     * Recursive calls to the selected donor method also use the new name.
     * Referenced fields and other methods are NOT copied. Their target members,
     * superclass relationships, accessibility, and frame types must be compatible.
     * Other dependencies must be accessible from the target's loader and module.
     * Lambdas and local/anonymous classes may require additional generated members
     * or classes that this utility does not copy. Class-level generic type
     * variables in the donor signature must also be valid in the target.
     * <p>
     * Constructors, class initializers, abstract/native methods, interface owners,
     * and custom method attributes are unsupported. Compile the donor without
     * preview features, preferably using the same --release as the target.
     * <p>
     * No classes are loaded to compute frames. Use with ASM 9.1 artifacts asm,
     * asm-tree, and asm-commons. With standard Java instrumentation, adding a
     * method is supported during initial class loading, not as a schema change
     * to an already loaded class through redefinition or retransformation.
     */
    public static byte[] addMethod(byte[] targetBytes, byte[] donorBytes,
                                   String targetName, String donorName, String donorDescriptor) {
        requireOrdinaryName(targetName);

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

        MethodNode donor = findMethod(donorClass, donorName, donorDescriptor);
        requireOrdinaryName(donor.name);
        if ((donor.access & (Opcodes.ACC_ABSTRACT | Opcodes.ACC_NATIVE)) != 0
                || donor.instructions.size() == 0) {
            throw new IllegalArgumentException("Expected a concrete donor method: " + donorName);
        }
        if (donor.attrs != null && !donor.attrs.isEmpty()) {
            throw new IllegalArgumentException("Custom donor method attributes are unsupported");
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

        String targetDescriptor = remapper.mapMethodDesc(donor.desc);
        for (MethodNode method : targetClass.methods) {
            if (method.name.equals(targetName) && method.desc.equals(targetDescriptor)) {
                throw new IllegalArgumentException(
                        "Method already exists: " + targetClass.name + "." + targetName + targetDescriptor);
            }
        }

        // MethodNode.accept(MethodVisitor) does not visit the declaration itself.
        // Remap its descriptor, signature, and exception list explicitly.
        String[] exceptions = donor.exceptions == null ? null
                : remapper.mapTypes(donor.exceptions.toArray(new String[0]));
        MethodNode added = new MethodNode(Opcodes.ASM9, donor.access,
                targetName, targetDescriptor,
                remapper.mapSignature(donor.signature, false), exceptions);
        donor.accept(new MethodRemapper(added, remapper));
        targetClass.methods.add(added);

        // Preserve the copied frames and maximum stack/local counts.
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

    private static void requireOrdinaryName(String name) {
        if (name == null || name.isEmpty() || name.indexOf('.') >= 0
                || name.indexOf(';') >= 0 || name.indexOf('[') >= 0
                || name.indexOf('/') >= 0 || name.indexOf('<') >= 0
                || name.indexOf('>') >= 0) {
            throw new IllegalArgumentException("Expected an ordinary JVM method name: " + name);
        }
    }
}
