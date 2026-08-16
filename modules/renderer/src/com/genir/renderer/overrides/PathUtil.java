package com.genir.renderer.overrides;

import java.nio.file.Paths;
import java.util.Locale;

public class PathUtil {
    public static final String pwd = normalize(System.getProperty("user.dir"));
    public static final String mods = normalize(System.getProperty("com.fs.starfarer.settings.paths.mods"));
    public static final String saves = normalize(System.getProperty("com.fs.starfarer.settings.paths.saves"));

    public static String normalize(String path) {
        // Remove leading slash.
        if (path.startsWith("/")) {
            path = path.substring("/".length());
        }

        if (path.startsWith("\\")) {
            path = path.substring("\\".length());
        }

        // Normalize path.
        path = Paths.get(path).normalize().toString();

        // Convert path format.
        path = path.replace("\\", "/");

        // Remove trailing slash.
        if (path.endsWith("/")) {
            path = path.substring(0, path.length() - "/".length());
        }

        // Remove trailing dot. It is required because of paths like
        // "graphics/portraits/dwergr.png." introduced by
        // Reborn as a Space Mercenary v0.0.4
        if (path.endsWith(".")) {
            path = path.substring(0, path.length() - ".".length());
        }

        // Lowercase file path, to avoid case sensitivity
        // issues. Not sure if this works on Linux or MacOS.
        // Machina Void Shipyards Armaa Expansion Patch is one
        // mod that would otherwise trigger a false-negative
        // file search result
        return path.toLowerCase(Locale.ROOT);
    }
}
