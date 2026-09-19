package com.genir.renderer;

public class Noop {
    public static void caller() {
        noop();
        noop(null);
    }

    // invokestatic Method com/genir/renderer/Noop noop ()V
    public static void noop() {
    }

    // aload_0
    // invokestatic Method com/genir/renderer/Noop noop (Ljava/lang/String;)V
    public static void noop(String var0) {
    }

    public static void breakpoint() {
        int x = 0;
    }
}
