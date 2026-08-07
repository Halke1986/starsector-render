package com.genir.renderer.overrides;

import java.util.Locale;

public class Paths {
    public static final String pwd = normalize(System.getProperty("user.dir"));
    public static final String mods = normalize(System.getProperty("com.fs.starfarer.settings.paths.mods"));
    public static final String saves = normalize(System.getProperty("com.fs.starfarer.settings.paths.saves"));

    public static String normalize(String path) {
        path = path.replace("\\", "/");

        // Sanitize path from leading slashes introduced by MissileShipOverhaul.
        if (path.startsWith("/")) {
            path = path.substring("/".length());
        }

        if (path.endsWith("/")) {
            path = path.substring(0, path.length() - "/".length());
        }

        if (path.contains("//")) {
            path = path.replaceAll("/+", "/");
        }

        // Use lowercase keys to make resource lookup case-insensitive.
        // Without this, Machina Void Shipyards Armaa Expansion Patch
        // can produce a false-negative lookup result.
        return path.toLowerCase(Locale.ROOT);
    }
}
