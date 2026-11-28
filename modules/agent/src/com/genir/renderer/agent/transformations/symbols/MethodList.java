package com.genir.renderer.agent.transformations.symbols;

import org.objectweb.asm.Type;
import org.objectweb.asm.tree.AbstractInsnNode;
import org.objectweb.asm.tree.ClassNode;
import org.objectweb.asm.tree.MethodInsnNode;
import org.objectweb.asm.tree.MethodNode;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

public class MethodList {
    private final ClassNode classNode;
    private List<MethodNode> methods;

    public MethodList(ClassNode classNode) {
        this.classNode = classNode;
        this.methods = classNode.methods;
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

    public MethodList byIsCalled(MethodNode... callers) {
        return by((method) -> {
            for (MethodNode caller : callers) {
                if (!isCalledBy(method, caller)) {
                    return false;
                }
            }
            return true;
        });
    }

    // Required to filter out methods added by the Chinese localization team's "startup-optimized" (启动优化) build.
    public MethodList byIsObfuscated() {
        return by((method) -> Symbols.isObfuscated(method.name));
    }

    public MethodList byIndex(int index, int assertSize) {
        if (methods.size() != assertSize) {
            throw new AssertionError("Unexpected method list size: size=[" + assertSize + "] " + makeAssertionErrorDetails());
        }

        if (methods.size() == 1) {
            throw new AssertionError("Unnecessary byIndex selector: " + makeAssertionErrorDetails());
        }

        methods = List.of(methods.get(index));
        return this;
    }

    private MethodList by(Predicate<MethodNode> predicate) {
        methods = methods.stream().filter(predicate).toList();
        return this;
    }

    public MethodNode get() {
        if (methods.isEmpty()) {
            throw new AssertionError("Method not found: " + makeAssertionErrorDetails());
        }

        if (methods.size() != 1) {
            throw new AssertionError("Ambiguous methods: " + makeAssertionErrorDetails());
        }

        return methods.get(0);
    }

    public ClassNode getReturnTypeClass() {
        return Symbols.readClassNode(Type.getReturnType(get().desc).getInternalName());
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

    private String makeAssertionErrorDetails() {
        StringBuilder builder = new StringBuilder();

        builder.append("class=[").append(classNode.name).append("]");

        builder.append(", methods=[");
        for (int i = 0; i < methods.size(); i++) {
            builder.append(methods.get(i).name).append(methods.get(i).desc);
            if (i < methods.size() - 1) {
                builder.append(", ");
            }
        }
        builder.append("]");

        return builder.toString();
    }
}