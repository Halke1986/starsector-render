package com.genir.renderer.agent;

import java.util.ArrayList;
import java.util.List;

import static com.genir.renderer.agent.ConstantTransformer.newTransform;

public class IllegalTransformations {
    public final static List<ConstantTransformer.Transform> transformations = makeTransformations();

    static List<ConstantTransformer.Transform> makeTransformations() {
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

        List<ConstantTransformer.Transform> transformations = new ArrayList<>();

        for (String s1 : symbols) {
            for (String s2 : symbols) {
                transformations.add(newTransform(
                        s1 + "." + s2,
                        s1 + "_" + s2
                ));
            }
        }

        return transformations;
    }
}
