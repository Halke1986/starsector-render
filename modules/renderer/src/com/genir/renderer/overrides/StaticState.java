package com.genir.renderer.overrides;

import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Due to difficulties in injecting fields into existing classes,
 * Fast Rendering override classes must use external static fields instead.
 */
public class StaticState {
    // TextureLoader
    public static final Set<String> tlKnownImages = ConcurrentHashMap.newKeySet();

    // ProgressBar
    public static Object pbCurrentBar = null;
    public static int pbTexID = 0;
    public static int pbWidth = 0;
    public static int pbHeight = 0;
}
