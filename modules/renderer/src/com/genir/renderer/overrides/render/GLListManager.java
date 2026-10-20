package com.genir.renderer.overrides.render;

import com.fs.graphics.util.GLListManager.GLListToken;

/**
 * OVERRIDES com.fs.graphics.util.GLListManager
 * <p>
 * Removing OpenGL display lists from Starsector
 * substantially simplifies the OpenGL simulation layer.
 */
public class GLListManager {
    /**
     * STUBS
     */
    public static final boolean buildingList = false;
    public static boolean suspend = false;

    /**
     * REPLACED METHOD
     */
    public static void nextFrame() {
    }

    /**
     * REPLACED METHOD
     */
    public static void invalidateList(GLListToken token) {
    }

    /**
     * REPLACED METHOD
     */
    public static boolean callList(GLListToken token) {
        // false means no list was called.
        return false;
    }

    /**
     * REPLACED METHOD
     */
    public static GLListToken beginList() {
        return null;
    }

    /**
     * REPLACED METHOD
     */
    public static void endList() {
    }
}
