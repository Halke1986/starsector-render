package com.fs.starfarer.loading;

import com.fs.starfarer.loading.specs.ShipHullSpec;
import com.genir.renderer.overrides.loading.ResourceLoader;

import java.util.Map;

// $FF: renamed from: com.fs.starfarer.loading.oO0O
public class ShipHullSpecStore {
    // $FF: renamed from: o00000 java.util.Map
    private static Map<String, ShipHullSpec> map;

    // $FF: renamed from: super (java.lang.String, com.fs.starfarer.loading.specs.g) void
    public static void addShipHullSpec(String var0, ShipHullSpec var1) {
        ResourceLoader.queueShipSprite(var1);

        if (map.containsKey(var0)) {
            throw new RuntimeException(String.format("Ship hull spec [%s] already exists", var0));
        } else {
            map.put(var0, var1);
        }
    }
}
