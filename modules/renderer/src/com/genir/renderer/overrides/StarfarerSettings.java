package com.genir.renderer.overrides;

import com.fs.starfarer.api.combat.ShipHullSpecAPI;
import com.genir.renderer.overrides.loading.HullSpecStore;

import java.util.List;

public class StarfarerSettings {
    /**
     * OVERRIDES com.fs.starfarer.loading.StarfarerSettings$SettingsAPIImpl
     */
    public static class SettingsAPIImpl {
        /**
         * REPLACED METHOD
         * <p>
         * Optimized for performance.
         */
        public List<ShipHullSpecAPI> getAllShipHullSpecs() {
            return HullSpecStore.getAllShipHullSpecs();
        }
    }
}
