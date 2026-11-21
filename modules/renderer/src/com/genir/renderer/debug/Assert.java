package com.genir.renderer.debug;

public class Assert {
    public static void supported(int value, boolean supported, String valueName) {
        if (!supported) {
            throw new UnsupportedOperationException("unsupported " + valueName + ": " + value);
        }
    }

    public static void supported(int value, int supported, String valueName) {
        if (value != supported) {
            throw new UnsupportedOperationException("unsupported " + valueName + ": " + value);
        }
    }

    public static void invariant(boolean correct) {
        if (!correct) {
            throw new AssertionError("Fast Rendering internal logic error");
        }
    }

    public static void glValue(boolean expected, boolean actual, Object caller) {
        if (expected != actual) {
            throw new AssertionError(expected + "!=" + actual + ", details: " + caller);
        }
    }

    public static void glValue(int expected, int actual, Object caller) {
        if (expected != actual) {
            throw new AssertionError(expected + "!=" + actual + ", details: " + caller);
        }
    }

    public static void glValue(float expected, float actual, Object caller) {
        if (expected != actual) {
            throw new AssertionError(expected + "!=" + actual + ", details: " + caller);
        }
    }
}
