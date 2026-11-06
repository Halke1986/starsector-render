package com.genir.renderer.agent;

public class ClassName {
    // com/genir/renderer/agent/ClassName
    public static String internal(String name) {
        String internal = name.replace('.', '/');
        if (internal.endsWith(".class")) {
            internal = internal.substring(0, internal.length() - 6);
        }

        return internal;
    }

    // com/genir/renderer/agent/ClassName.class
    public static String resource(String name) {
        String internal = name.replace('.', '/');
        if (!internal.endsWith(".class")) {
            internal += ".class";
        }

        return internal;
    }

    // com.genir.renderer.agent.ClassName
    public static String binary(String name) {
        String binary = name.replace('/', '.');
        if (binary.endsWith(".class")) {
            binary = binary.substring(0, binary.length() - 6);
        }

        return binary;
    }

    public static String simple(String name) {
        String binary = binary(name);
        return binary.substring(binary.lastIndexOf('.') + 1);
    }
}
