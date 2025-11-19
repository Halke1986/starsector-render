package com.fs.starfarer.loading.scripts;

import com.fs.util.container.repo.ObjectRepository;

import java.util.Set;

public class ScriptStore {
    public static volatile ObjectRepository Õ00000 = null;
    private static volatile boolean OO0000 = false;

    public static Set<String> Ò00000() {
        return null;
    }

    // ADDED METHOD
    public static void storePlugin(Object plugin) {
        Õ00000.add(plugin);
    }

    // ADDED METHOD
    public static Set<String> getPluginSet() {
        return Ò00000();
    }

    // ADDED METHOD
    public static void stopVanillaScriptLoadingThread() {
        OO0000 = true;
    }

    // Modified METHOD
    // $FF: renamed from: Object (java.lang.String) void
    public static void addScript(String className) {
        com.genir.renderer.overrides.loading.ScriptLoader.addScript(className);
    }

    // RENAMED METHOD
    // $FF: renamed from: int () void
    public static void runVanillaScriptLoadingThread() throws Exception {
    }

    // RENAMED METHOD
    // $FF: renamed from: Ô00000 () void
    public static void joinVanillaScriptLoadingThread() throws Exception {
    }
}