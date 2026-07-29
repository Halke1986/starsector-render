package com.genir.renderer.agent;

import java.util.HashMap;
import java.util.Map;

public class IllegalTransformations {
    public final static Map<String, String> transformations = makeTransformations();

    static Map<String, String> makeTransformations() {
        String[] symbols = {
                "class",
                "do",
                "float",
                "for",
                "if",
                "int",
                "interface",
                "new",
                "null",
                "Object",
                "private",
                "public",
                "return",
                "String",
                "super",
                "this",
                "void",
                "while"
        };

        Map<String, String> transformations = new HashMap<>();

        for (String s1 : symbols) {
            for (String s2 : symbols) {
                transformations.put(
                        s1 + "." + s2,
                        s1 + "_" + s2
                );
            }
        }

        return transformations;
    }
}
