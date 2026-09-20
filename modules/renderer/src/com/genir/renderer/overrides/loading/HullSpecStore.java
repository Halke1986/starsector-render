package com.genir.renderer.overrides.loading;

import proxy.com.fs.starfarer.loading.specs.ShipHullSpec;

import java.util.Map;

/**
 * OVERRIDES com.fs.starfarer.loading.HullSpecStore
 */
public class HullSpecStore {
    /**
     * STUB
     */
    private static Map<String, ShipHullSpec> HullSpecStore_hulls;

    /**
     * REPLACED METHOD
     */
    public static void HullSpecStore_addHullSpec(String name, ShipHullSpec hullSpec) {
        ResourceLoader.queueShipSprite(hullSpec);

        // Vanilla logic.
        if (HullSpecStore_hulls.containsKey(name)) {
            throw new RuntimeException(String.format("Ship hull spec [%s] already exists", name));
        } else {
            HullSpecStore_hulls.put(name, hullSpec);
        }
    }
}
