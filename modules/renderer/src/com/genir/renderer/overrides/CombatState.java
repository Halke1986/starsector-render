package com.genir.renderer.overrides;

import java.io.IOException;

public class CombatState {
    public static String traverse(com.fs.starfarer.combat.CombatState state) throws IOException {
        return state.traverseImpl();
    }
}
