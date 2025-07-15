package com.fs.starfarer.combat;

import java.io.IOException;

public class CombatState {
    // RENAMED METHOD
    public String traverseImpl() throws IOException {
        return null;
    }

    // REPLACED METHOD
    public String traverse() throws IOException {
        return com.genir.renderer.overrides.CombatState.traverse(this);
    }
}
