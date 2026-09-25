package com.genir.renderer.overrides;

import org.lwjgl.input.Keyboard;

import java.io.IOException;

import static com.genir.renderer.Noop.breakpoint;
import static org.lwjgl.input.Keyboard.*;
import static org.lwjgl.input.Keyboard.KEY_RSHIFT;

/**
 * OVERRIDES com.fs.starfarer.combat.CombatState
 */
public class CombatState {
    /**
     * STUBS
     */
    private void reloadAssets_vanilla() throws IOException {
    }

    /**
     * REPLACED METHOD
     */
    private void reloadAssets() throws IOException {
        boolean ctrl = Keyboard.isKeyDown(KEY_LCONTROL) || Keyboard.isKeyDown(KEY_RCONTROL);
        boolean shift = Keyboard.isKeyDown(KEY_LSHIFT) || Keyboard.isKeyDown(KEY_RSHIFT);

        // Do not reload assets if user is trying to hit CTRL + SHIFT + F8 profiler shortcut.
        if (ctrl || shift) {
            return;
        }

        reloadAssets_vanilla();
    }
}
