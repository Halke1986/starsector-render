package com.genir.renderer.overrides;

import com.genir.renderer.bridge.Bridge;

import java.io.IOException;

public class CombatState {
    public static String traverse(com.fs.starfarer.combat.CombatState state) throws IOException {
        Bridge.beginIntercept();

        try {
            return state.traverseImpl();
        } finally {
            Bridge.endIntercept();
        }
    }
}
