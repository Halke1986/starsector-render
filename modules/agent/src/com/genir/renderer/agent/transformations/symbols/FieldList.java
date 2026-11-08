package com.genir.renderer.agent.transformations.symbols;

import org.objectweb.asm.Type;
import org.objectweb.asm.tree.*;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Stream;

public class FieldList {
    private final ClassNode classNode;
    private Stream<FieldNode> fields;

    public FieldList(ClassNode classNode) {
        this.classNode = classNode;
        this.fields = classNode.fields.stream();
    }

    public FieldList byName(String name) {
        return by((field) -> field.name.equals(name));
    }

    public FieldList byDesc(String descPrefix) {
        return by((field) -> field.desc.startsWith(descPrefix));
    }

    public FieldList bySignature(String signaturePrefix) {
        return by((field) -> field.signature != null && field.signature.startsWith(signaturePrefix));
    }

    public FieldList byIsCalled(MethodNode caller) {
        return by((field) -> isCalledBy(field, caller));
    }

    private FieldList by(Predicate<FieldNode> predicate) {
        fields = fields.filter(predicate);
        return this;
    }

    public FieldNode get() {
        List<FieldNode> fieldList = fields.toList();
        if (fieldList.size() != 1) {
            throw new AssertionError("Ambiguous fields");
        }

        return fieldList.get(0);
    }

    public FieldNode get(int index) {
        return fields.toList().get(index);
    }

    public ClassNode getTypeClass() {
        return Symbols.readClassNode(Type.getType(get().desc).getInternalName());
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

        var a = method.instructions.toArray();

        return instructions;
    }
}