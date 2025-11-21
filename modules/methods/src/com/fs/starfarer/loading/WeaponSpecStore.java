package com.fs.starfarer.loading;

import com.fs.starfarer.api.loading.WeaponSpecAPI;
import com.fs.starfarer.loading.specs.BaseWeaponSpec;

import static com.genir.renderer.overrides.loading.ResourceLoader.queueProjectileSprite;
import static com.genir.renderer.overrides.loading.ResourceLoader.queueWeaponSprite;

// $FF: renamed from: com.fs.starfarer.loading.Q
public class WeaponSpecStore {
    // $FF: renamed from: super (java.lang.String, com.fs.starfarer.loading.specs.BaseWeaponSpec) void
    public static void addWeaponSpec(String var0, BaseWeaponSpec var1) {
        queueWeaponSprite((WeaponSpecAPI) var1);

//        if (map.containsKey(var0)) {
//            throw new RuntimeException(String.format("Weapon spec [%s] already exists", var0));
//        } else {
//            map.put(var0, var1);
//        }
    }

    // $FF: renamed from: super (java.lang.String, java.lang.Object) void
    public static void addProjectileSpec(String var0, Object var1) {
        queueProjectileSprite(var1);

//        if (map_1.containsKey(var0)) {
//            throw new RuntimeException(String.format("Projectile spec [%s] already exists", var0));
//        } else {
//            map_1.put(var0, var1);
//        }
    }
}
