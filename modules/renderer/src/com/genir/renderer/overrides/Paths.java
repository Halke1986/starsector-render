package com.genir.renderer.overrides;

import java.nio.file.Path;

public class Paths {
    public static final Path pwd = Path.of(System.getProperty("user.dir"));
    public static final Path mods = Path.of(System.getProperty("com.fs.starfarer.settings.paths.mods"));
    public static final Path saves = Path.of(System.getProperty("com.fs.starfarer.settings.paths.saves"));
}
