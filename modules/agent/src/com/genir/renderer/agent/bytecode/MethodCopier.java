package com.genir.renderer.agent.bytecode;

import org.objectweb.asm.Attribute;
import org.objectweb.asm.ClassReader;
import org.objectweb.asm.ClassVisitor;
import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.FieldVisitor;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;

import java.util.HashSet;
import java.util.Set;

/**
 * Copies missing donor methods and fields without remapping any references.
 */
public final class MethodCopier {
    private MethodCopier() {
    }

    /**
     * Input and output contain complete class file bytes.
     * Copies ordinary donor methods, including synthetic and bridge methods,
     * but skips constructors (<init>) and static initializers (<clinit>).
     * Also copies missing field declarations and their standard metadata.
     * Copies no donor class-level metadata or initialization code.
     * Fields without a ConstantValue attribute receive JVM default values;
     * any ConstantValue attribute is preserved. Explicit initialization in
     * constructors or static initializers is not transferred.
     * <p>
     * Matches methods by their exact name and JVM descriptor, including return
     * type. An existing target method wins regardless of its access flags or
     * static/instance status. No owner names, descriptors, calls, field accesses,
     * handles, signatures, annotations, or frame types are remapped.
     * Fields likewise match by exact name and descriptor, with target fields
     * taking precedence regardless of access flags or static/instance status.
     * <p>
     * Copies method bodies, access flags, and standard method metadata; preserves
     * stack frames and maximum stack/local counts without loading classes.
     * Existing target method bodies and references remain unchanged.
     * The caller is responsible for any remapping and compatibility checks needed
     * before the output can be loaded. Debug line numbers refer to donor source.
     * <p>
     * Interface owners and custom attributes on copied members are unsupported.
     * An abstract donor method can only be added to an abstract target.
     * Native declarations are copied, but native implementations are not.
     * Compile the donor without preview features and for the target class-file
     * version or older. Use during initial class loading; standard instrumentation
     * does not support adding methods or fields to an already loaded class.
     * <p>
     * Requires only org.ow2.asm:asm:9.1.
     */
    public static byte[] copyMethods(byte[] targetBytes, byte[] donorBytes) {
        ClassReader target = new ClassReader(targetBytes);
        ClassReader donor = new ClassReader(donorBytes);
        if (((target.getAccess() | donor.getAccess()) & Opcodes.ACC_INTERFACE) != 0) {
            throw new IllegalArgumentException("Interface owners are unsupported");
        }

        Set<String> existing = new HashSet<>();
        Set<String> existingFields = new HashSet<>();
        boolean[] added = {false};
        ClassWriter writer = new ClassWriter(target, 0);

        target.accept(new ClassVisitor(Opcodes.ASM9, writer) {
            @Override
            public FieldVisitor visitField(int access, String name, String descriptor,
                                           String signature, Object value) {
                // A field descriptor is self-delimiting, so put it before the name.
                existingFields.add(descriptor + name);
                return super.visitField(access, name, descriptor, signature, value);
            }

            @Override
            public MethodVisitor visitMethod(int access, String name, String descriptor,
                                             String signature, String[] exceptions) {
                existing.add(name + descriptor);
                // Forward target methods directly, without editing their bodies.
                return super.visitMethod(access, name, descriptor, signature, exceptions);
            }

            @Override
            public void visitEnd() {
                // No delegate: discard donor class-level events.
                // Forward only selected fields and methods to the target writer.
                donor.accept(new ClassVisitor(Opcodes.ASM9) {
                    @Override
                    public FieldVisitor visitField(int access, String name, String descriptor,
                                                   String signature, Object value) {
                        if (existingFields.contains(descriptor + name)) {
                            return null;
                        }
                        requireCompatibleVersion(target, donor);
                        added[0] = true;
                        FieldVisitor output = writer.visitField(
                                access, name, descriptor, signature, value);
                        return new FieldVisitor(Opcodes.ASM9, output) {
                            @Override
                            public void visitAttribute(Attribute attribute) {
                                throw new IllegalArgumentException(
                                        "Custom donor field attributes are unsupported: "
                                                + name + " " + descriptor + " (" + attribute.type + ")");
                            }
                        };
                    }

                    @Override
                    public MethodVisitor visitMethod(int access, String name, String descriptor,
                                                     String signature, String[] exceptions) {
                        if (name.equals("<init>") || name.equals("<clinit>")
                                || existing.contains(name + descriptor)) {
                            return null;
                        }
                        if ((access & Opcodes.ACC_ABSTRACT) != 0
                                && (target.getAccess() & Opcodes.ACC_ABSTRACT) == 0) {
                            throw new IllegalArgumentException(
                                    "Cannot add abstract method to concrete target: " + name + descriptor);
                        }
                        requireCompatibleVersion(target, donor);

                        added[0] = true;
                        MethodVisitor output = writer.visitMethod(
                                access, name, descriptor, signature, exceptions);
                        return new MethodVisitor(Opcodes.ASM9, output) {
                            @Override
                            public void visitAttribute(Attribute attribute) {
                                // Opaque donor attributes may contain indices into
                                // its constant pool, which cannot be copied blindly.
                                throw new IllegalArgumentException(
                                        "Custom donor method attributes are unsupported: "
                                                + name + descriptor + " (" + attribute.type + ")");
                            }
                        };
                    }
                }, ClassReader.EXPAND_FRAMES);
                super.visitEnd();
            }
        }, 0);

        return added[0] ? writer.toByteArray() : targetBytes;
    }

    private static void requireCompatibleVersion(ClassReader target, ClassReader donor) {
        // Class-file header: minor version at 4, major at 6.
        if (donor.readUnsignedShort(6) > target.readUnsignedShort(6)
                || donor.readUnsignedShort(4) == 0xFFFF) {
            throw new IllegalArgumentException(
                    "Compile the donor without preview features and for the target class version or older");
        }
    }
}
