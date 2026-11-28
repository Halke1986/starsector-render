package com.genir.renderer.agent.transformations.symbols;

import org.objectweb.asm.Type;
import org.objectweb.asm.tree.*;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

public class FieldList {
    private final ClassNode classNode;
    private List<FieldNode> fields;

    public FieldList(ClassNode classNode) {
        this.classNode = classNode;
        this.fields = classNode.fields;
    }

    public FieldList byName(String name) {
        return by((field) -> field.name.equals(name));
    }

    public FieldList byDesc(String descPrefix) {
        return by((field) -> field.desc.startsWith(descPrefix));
    }

    public FieldList byAccess(int access) {
        return by((field) -> field.access == access);
    }

    public FieldList bySignature(String signaturePrefix) {
        return by((field) -> field.signature != null && field.signature.startsWith(signaturePrefix));
    }

    public FieldList byIsCalled(MethodNode caller) {
        return by((field) -> isCalledBy(field, caller));
    }

    public FieldList byIsCalled(MethodNode... callers) {
        return by((field) -> {
            for (MethodNode caller : callers) {
                if (!isCalledBy(field, caller)) {
                    return false;
                }
            }
            return true;
        });
    }

    public FieldList byIndex(int index, int assertSize) {
        if (fields.size() != assertSize) {
            throw new AssertionError("Unexpected field list size: size=[" + assertSize + "] " + makeAssertionErrorDetails());
        }

        if (fields.size() == 1) {
            throw new AssertionError("Unnecessary byIndex selector: " + makeAssertionErrorDetails());
        }

        fields = List.of(fields.get(index));
        return this;
    }

    private FieldList by(Predicate<FieldNode> predicate) {
        fields = fields.stream().filter(predicate).toList();
        return this;
    }

    public FieldNode get() {
        if (fields.isEmpty()) {
            throw new AssertionError("Field not found: " + makeAssertionErrorDetails());
        }

        if (fields.size() != 1) {
            throw new AssertionError("Ambiguous fields: " + makeAssertionErrorDetails());
        }

        return fields.get(0);
    }

    public ClassNode getTypeClass() {
        return Symbols.readClassNode(Type.getType(get().desc).getInternalName());
    }

    public ClassNode getGenericParametersClass(int index) {
        return Symbols.readClassNode(Symbols.getGenericParameters(get().signature)[index].getInternalName());
    }

    private boolean isCalledBy(FieldNode field, MethodNode caller) {
        List<FieldInsnNode> instructions = getFieldInstructions(caller);
        for (FieldInsnNode instruction : instructions) {
            if (instruction.owner.equals(classNode.name) && instruction.desc.equals(field.desc) && instruction.name.equals(field.name)) {
                return true;
            }
        }
        return false;
    }

    private List<FieldInsnNode> getFieldInstructions(MethodNode method) {
        List<FieldInsnNode> instructions = new ArrayList<>();
        for (AbstractInsnNode instruction : method.instructions) {
            if (instruction instanceof FieldInsnNode fieldIns) {
                instructions.add(fieldIns);
            }
        }

        return instructions;
    }

    private String makeAssertionErrorDetails() {
        StringBuilder builder = new StringBuilder();

        builder.append("class=[").append(classNode.name).append("]");

        builder.append(", fields=[");
        for (int i = 0; i < fields.size(); i++) {
            builder.append(fields.get(i).name).append("(").append(fields.get(i).desc).append(")");
            if (i < fields.size() - 1) {
                builder.append(", ");
            }
        }
        builder.append("]");

        return builder.toString();
    }
}