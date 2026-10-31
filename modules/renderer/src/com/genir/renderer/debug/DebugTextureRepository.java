package com.genir.renderer.debug;

import java.util.HashMap;
import java.util.Map;

public class DebugTextureRepository {
    private static final Map<Integer, String> nameMap = new HashMap<>();

    public static void addTextureName(int texture, String name) {
        nameMap.put(texture, name);
    }

    public static String getTextureName(int texture) {
        return nameMap.get(texture);
    }
}
