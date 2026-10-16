package com.genir.renderer.overrides.render;

/**
 * OVERRIDES com.fs.graphics.util.GLListManager
 * <p>
 * Removing OpenGL display lists from Starsector
 * substantially simplifies the OpenGL simulation layer.
 */
public class GLListManager {
    public static final boolean buildingList = false;
    public static boolean suspend = false;

    public static void nextFrame() {
    }

    public static void invalidateList(GLListToken token) {
    }

    public static boolean callList(GLListToken token) {
        // false means no list was called.
        return false;
    }

    public static GLListToken beginList() {
        return null;
    }

    public static void endList() {
    }

    public record GLListToken(int listId, StackTraceElement[] caller) {
    }
}
