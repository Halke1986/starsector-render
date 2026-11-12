package com.genir.renderer.overrides;

import com.fs.starfarer.api.combat.ShipHullSpecAPI;
import com.fs.starfarer.api.loading.WeaponSpecAPI;
import com.genir.renderer.overrides.loading.HullSpecStore;
import com.genir.renderer.overrides.loading.WeaponSpecStore;

import java.util.List;

public class StarfarerSettings {
    /**
     * STUB
     */
    public static float StarfarerSettings_getFloatValue(String name) {
        return 0;
    }

    /**
     * STUB
     */
    public static boolean StarfarerSettings_getBooleanValue(String var0) {
        return false;
    }

    /**
     * OVERRIDES com.fs.starfarer.loading.StarfarerSettings$SettingsAPIImpl
     * <p>
     * Optimized for performance.
     */
    public static class SettingsAPIImpl {
        /**
         * REPLACED METHOD
         */
        public List<ShipHullSpecAPI> getAllShipHullSpecs() {
            return HullSpecStore.getAllShipHullSpecs();
        }

        /**
         * REPLACED METHOD
         */
        public List<WeaponSpecAPI> getAllWeaponSpecs() {
            return WeaponSpecStore.getAllWeaponSpecs();
        }

        /**
         * REPLACED METHOD
         */
        public List<WeaponSpecAPI> getActuallyAllWeaponSpecs() {
            return WeaponSpecStore.getActuallyAllWeaponSpecs();
        }
    }
}
