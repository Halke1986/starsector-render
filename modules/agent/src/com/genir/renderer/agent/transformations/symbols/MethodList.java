package com.genir.renderer.agent.transformations.symbols;

import org.objectweb.asm.tree.AbstractInsnNode;
import org.objectweb.asm.tree.ClassNode;
import org.objectweb.asm.tree.MethodInsnNode;
import org.objectweb.asm.tree.MethodNode;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Stream;

public class MethodList {
    private final ClassNode classNode;
    private Stream<MethodNode> methods;

    public MethodList(ClassNode classNode) {
        this.classNode = classNode;
        this.methods = classNode.methods.stream();
    }

    public MethodList byName(String name) {
        return by((method) -> method.name.equals(name));
    }

    public MethodList byNotName(String... names) {
        return by((method) -> {
            for (String name : names) {
                if (method.name.equals(name)) {
                    return false;
                }
            }
            return true;
        });
    }

    public MethodList byDesc(String descPrefix) {
        return by((method) -> method.desc.startsWith(descPrefix));
    }

    public MethodList bySignature(String signaturePrefix) {
        return by((method) -> method.signature != null && method.signature.startsWith(signaturePrefix));
    }

    public MethodList byInstructionOwner(String ownerPrefix) {
        return by((method) -> hasInstrOwner(method, ownerPrefix));
    }

    public MethodList byNotInstructionOwner(String ownerPrefix) {
        return by((method) -> !hasInstrOwner(method, ownerPrefix));
    }

    public MethodList byInstructionName(String name) {
        return by((method) -> hasInstrName(method, name));
    }

    public MethodList byNotInstructionName(String name) {
        return by((method) -> !hasInstrName(method, name));
    }

    public MethodList byIsCalled(ClassNode callerNode) {
        return by((method) -> isCalledBy(method, callerNode));
    }

    public MethodList byIsCalled(MethodNode caller) {
        return by((method) -> isCalledBy(method, caller));
    }

    private MethodList by(Predicate<MethodNode> predicate) {
        methods = methods.filter(predicate);
        return this;
    }

    public MethodNode get() {
        List<MethodNode> methodList = methods.toList();
        if (methodList.size() != 1) {
            for (MethodNode method : methodList) {
                List<MethodInsnNode> methodsInst = getMethodInstructions(method);

                int x = 0;
            }

            throw new AssertionError("Ambiguous methods");
        }

        return methodList.get(0);
    }

    // Method of last resort.
    public MethodNode get(int index) {
        return methods.toList().get(index);
    }

    private boolean hasInstrName(MethodNode method, String name) {
        for (MethodInsnNode instruction : getMethodInstructions(method)) {
            if (instruction.name.equals(name)) {
                return true;
            }
        }
        return false;
    }

    private boolean hasInstrOwner(MethodNode method, String ownerPrefix) {
        for (MethodInsnNode instruction : getMethodInstructions(method)) {
            if (instruction.owner.startsWith(ownerPrefix)) {
                return true;
            }
        }
        return false;
    }

    private boolean isCalledBy(MethodNode method, ClassNode callerNode) {
        for (MethodNode caller : callerNode.methods) {
            if (isCalledBy(method, caller)) {
                return true;
            }
        }
        return false;
    }

    private boolean isCalledBy(MethodNode method, MethodNode caller) {
        for (MethodInsnNode instruction : getMethodInstructions(caller)) {
            if (instruction.owner.equals(classNode.name) && instruction.desc.equals(method.desc) && instruction.name.equals(method.name)) {
                return true;
            }
        }
        return false;
    }

    private List<MethodInsnNode> getMethodInstructions(MethodNode method) {
        List<MethodInsnNode> instructions = new ArrayList<>();
        for (AbstractInsnNode instruction : method.instructions) {
            if (instruction instanceof MethodInsnNode methodIns) {
                instructions.add(methodIns);
            }
        }

        return instructions;
    }
}