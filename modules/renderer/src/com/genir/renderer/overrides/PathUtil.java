package com.genir.renderer.overrides;

import java.nio.file.Paths;
import java.util.Locale;

public class PathUtil {
    public static final String pwd = System.getProperty("user.dir");
    public static final String modDir = System.getProperty("com.fs.starfarer.settings.paths.mods");

    public static String normalize(String path) {
        // Strip starsector-core path prefix,
        // in case the file path is absolute.
        if (path.startsWith(pwd)) {
            path = path.substring(pwd.length());
        }

        // Convert path format.
        path = path.replace("\\", "/");

        // Remove leading slash. This needs to be done before
        // call to normalize(), as normalize() converts '/../' to '/'.
        if (path.startsWith("/")) {
            path = path.substring("/".length());
        }

        // Normalize path.
        path = Paths.get(path).normalize().toString();

        // normalize() reintroduces \ on Windows.
        path = path.replace("\\", "/");

        // Lowercase file path, to avoid case sensitivity
        // issues. Not sure if this works on Linux or MacOS.
        // Machina Void Shipyards Armaa Expansion Patch is one
        // mod that would otherwise trigger a false-negative
        // file search result
        return path.toLowerCase(Locale.ROOT);
    }
}
