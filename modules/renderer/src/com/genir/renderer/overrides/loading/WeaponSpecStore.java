package com.genir.renderer.overrides.loading;

import com.fs.starfarer.api.combat.WeaponAPI;
import com.fs.starfarer.api.loading.WeaponSpecAPI;
import com.fs.starfarer.loading.specs.BaseWeaponSpec;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * OVERRIDES com.fs.starfarer.loading.WeaponSpecStore
 */
public class WeaponSpecStore {
    /**
     * STUBS
     */
    private static Map<String, BaseWeaponSpec> WeaponSpecStore_weapons;
    private static Map<String, Object> WeaponSpecStore_projectiles;

    private static List<WeaponSpecAPI> weaponsList;
    private static List<WeaponSpecAPI> allWeaponsList;

    /**
     * REPLACED METHOD
     */
    public static void WeaponSpecStore_addWeaponSpec(String name, BaseWeaponSpec weaponSpec) {
        ResourceLoaderState.queueWeaponSprite((WeaponSpecAPI) weaponSpec);

        // Vanilla logic.
        if (WeaponSpecStore_weapons.containsKey(name)) {
            throw new RuntimeException(String.format("Weapon spec [%s] already exists", name));
        } else {
            if (weaponsList == null) {
                weaponsList = new ArrayList<>();
                allWeaponsList = new ArrayList<>();
            }

            WeaponSpecAPI specAPI = (WeaponSpecAPI) weaponSpec;
            allWeaponsList.add(specAPI);
            if (!specAPI.getAIHints().contains(WeaponAPI.AIHints.SYSTEM) && specAPI.getType() != WeaponAPI.WeaponType.SYSTEM) {
                weaponsList.add((WeaponSpecAPI) weaponSpec);
            }

            WeaponSpecStore_weapons.put(name, weaponSpec);
        }
    }

    /**
     * REPLACED METHOD
     */
    public static void WeaponSpecStore_addProjectileSpec(String name, Object projectileSpec) {
        ResourceLoaderState.queueProjectileSprite(projectileSpec);

        // Vanilla logic.
        if (WeaponSpecStore_projectiles.containsKey(name)) {
            throw new RuntimeException(String.format("Projectile spec [%s] already exists", name));
        } else {
            WeaponSpecStore_projectiles.put(name, projectileSpec);
        }
    }

    /**
     * REPLACED METHOD
     */
    public static void WeaponSpecStore_removeWeaponSpec(String name) {
        BaseWeaponSpec removedSpec = WeaponSpecStore_weapons.remove(name);
        if (removedSpec != null) {
            if (weaponsList == null) {
                weaponsList = new ArrayList<>();
                allWeaponsList = new ArrayList<>();
            }

            weaponsList.remove((WeaponSpecAPI) removedSpec);
            allWeaponsList.remove((WeaponSpecAPI) removedSpec);
        }
    }

    /**
     * ADDED METHOD
     */
    public static List<WeaponSpecAPI> getAllWeaponSpecs() {
        return weaponsList;
    }

    /**
     * ADDED METHOD
     */
    public static List<WeaponSpecAPI> getActuallyAllWeaponSpecs() {
        return allWeaponsList;
    }
}
