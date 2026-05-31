package com.fs.starfarer.combat;

import org.lwjgl.input.Keyboard;

import java.io.IOException;

import static org.lwjgl.input.Keyboard.*;

public class CombatState {
    private void reloadAssets() throws IOException {
    }

    private void maybeReloadAssets() throws IOException {
        boolean ctrl = Keyboard.isKeyDown(KEY_LCONTROL) || Keyboard.isKeyDown(KEY_RCONTROL);
        boolean shift = Keyboard.isKeyDown(KEY_LSHIFT) || Keyboard.isKeyDown(KEY_RSHIFT);

        // Do not reload assets if user is trying to hit CTRL + SHIFT + F8 profiler shortcut.
        if (ctrl || shift) {
            return;
        }

        reloadAssets();
    }
    //.method private maybeReloadAssets : ()V
    //    .code stack 1 locals 3
    //L0:     bipush 29
    //L2:     invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z
    //L5:     ifne L17
    //L8:     sipush 157
    //L11:    invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z
    //L14:    ifeq L21
    //
    //        .stack same
    //L17:    iconst_1
    //L18:    goto L22
    //
    //        .stack same
    //L21:    iconst_0
    //
    //        .stack stack_1 Integer
    //L22:    istore_1
    //L23:    bipush 42
    //L25:    invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z
    //L28:    ifne L39
    //L31:    bipush 54
    //L33:    invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z
    //L36:    ifeq L43
    //
    //        .stack append Integer
    //L39:    iconst_1
    //L40:    goto L44
    //
    //        .stack same
    //L43:    iconst_0
    //
    //        .stack stack_1 Integer
    //L44:    istore_2
    //L45:    iload_1
    //L46:    ifne L53
    //L49:    iload_2
    //L50:    ifeq L54
    //
    //        .stack append Integer
    //L53:    return
    //
    //        .stack same
    //L54:    aload_0
    //L55:    invokevirtual Method com/fs/starfarer/combat/CombatState reloadAssets ()V
    //L58:    return
    //L59:
    //        .linenumbertable
    //            L0 14
    //            L23 15
    //            L45 18
    //            L53 19
    //            L54 22
    //            L58 23
    //        .end linenumbertable
    //        .localvariabletable
    //            0 is this Lcom/fs/starfarer/combat/CombatState; from L0 to L59
    //            1 is ctrl Z from L23 to L59
    //            2 is shift Z from L45 to L59
    //        .end localvariabletable
    //    .end code
    //    .exceptions java/io/IOException
    //.end method
}
