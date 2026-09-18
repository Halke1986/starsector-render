package com.genir.renderer.overrides;

import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/*
 * Due to difficulties in injecting fields into existing classes, Fast Rendering override classes must use external static fields instead.
 */
public class StaticState {
    public static final Set<String> textureLoaderKnownImages = ConcurrentHashMap.newKeySet();
}
