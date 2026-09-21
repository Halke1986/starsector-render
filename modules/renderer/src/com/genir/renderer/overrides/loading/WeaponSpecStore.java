package com.genir.renderer.overrides.loading;

import com.fs.starfarer.api.loading.WeaponSpecAPI;
import proxy.com.fs.starfarer.loading.specs.BaseWeaponSpec;

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

    /**
     * REPLACED METHOD
     */
    public static void WeaponSpecStore_addWeaponSpec(String name, BaseWeaponSpec weaponSpec) {
        ResourceLoaderState.queueWeaponSprite((WeaponSpecAPI) weaponSpec);

        // Vanilla logic.
        if (WeaponSpecStore_weapons.containsKey(name)) {
            throw new RuntimeException(String.format("Weapon spec [%s] already exists", name));
        } else {
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
}
