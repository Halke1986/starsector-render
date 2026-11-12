package com.genir.renderer.overrides.loading;

import com.fs.starfarer.api.combat.ShipHullSpecAPI;
import com.fs.starfarer.loading.specs.ShipHullSpec;

import java.util.ArrayList;
import java.util.List;
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
     * ADDED FIELD
     * <p>
     * Allows for performance-optimized ship hull list retrieval.
     */
    private static List<ShipHullSpecAPI> hullsList;

    /**
     * REPLACED METHOD
     */
    public static void HullSpecStore_addHullSpec(String name, ShipHullSpec hullSpec) {
        ResourceLoaderState.queueShipSprite(hullSpec);

        if (HullSpecStore_hulls.containsKey(name)) {
            throw new RuntimeException(String.format("Ship hull spec [%s] already exists", name));
        } else {
            if (hullsList == null) {
                hullsList = new ArrayList<>();
            }

            HullSpecStore_hulls.put(name, hullSpec);
            hullsList.add((ShipHullSpecAPI) hullSpec);
        }
    }

    /**
     * REPLACED METHOD
     */
    public static void HullSpecStore_removeHullSpec(String name) {
        ShipHullSpec removedSpec = HullSpecStore_hulls.remove(name);
        if (removedSpec != null) {
            if (hullsList == null) {
                hullsList = new ArrayList<>();
            }

            hullsList.remove((ShipHullSpecAPI) removedSpec);
        }
    }

    /**
     * ADDED METHOD
     */
    public static List<ShipHullSpecAPI> getAllShipHullSpecs() {
        return hullsList;
    }
}
