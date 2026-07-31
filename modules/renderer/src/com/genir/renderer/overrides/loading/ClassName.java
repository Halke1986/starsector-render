package com.genir.renderer.overrides.loading;

public class ClassName {
    public static String internal(String name) {
        String internal = name.replace('.', '/');
        if (!internal.endsWith(".class")) {
            internal += ".class";
        }

        return internal;
    }

    public static String binary(String name) {
        String binary = name.replace('/', '.');
        if (binary.endsWith(".class")) {
            binary = binary.substring(0, binary.length() - 6);
        }

        return binary;
    }
}
