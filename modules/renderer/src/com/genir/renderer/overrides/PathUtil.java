package com.genir.renderer.overrides;

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

        // Finish stripping starsector-core path
        // prefix on Windows.
        if (path.startsWith("\\")) {
            path = path.substring("\\".length());
        }

        // Lowercase file path, to avoid case sensitivity
        // issues. Not sure if this works on Linux or MacOS.
        return path.toLowerCase(Locale.ROOT);
    }
}
