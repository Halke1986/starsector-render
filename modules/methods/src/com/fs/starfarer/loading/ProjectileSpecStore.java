package com.fs.starfarer.loading;

import java.util.Map;

import static com.genir.renderer.overrides.loading.ResourceLoader.queueProjectileSprite;

// $FF: renamed from: com.fs.starfarer.loading.Q
public class ProjectileSpecStore {
    // $FF: renamed from: o00000 java.util.Map
    private static Map<String, Object> projectiles;

    // $FF: renamed from: super (java.lang.String, java.lang.Object) void
    public static void addProjectileSpec(String var0, Object var1) {
        queueProjectileSprite(var1);

        if (projectiles.containsKey(var0)) {
            throw new RuntimeException(String.format("Projectile spec [%s] already exists", var0));
        } else {
            projectiles.put(var0, var1);
        }
    }
}
