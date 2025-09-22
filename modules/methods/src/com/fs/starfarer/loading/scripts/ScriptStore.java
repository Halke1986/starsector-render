package com.fs.starfarer.loading.scripts;

import com.fs.util.container.repo.ObjectRepository;

public class ScriptStore {
    public static volatile ObjectRepository Õ00000 = new ObjectRepository();

    // ADDED METHOD
    public static void addPlugin(Object plugin) {
        Õ00000.add(plugin);
    }

    // MODIFIED METHOD
    // $FF: renamed from: Object (java.lang.String) void
    public static void addScript(String var0) {
    }

    // RENAMED AND MODIFIED METHOD
    // $FF: renamed from: int () void
    public static void runScriptLoadingThread() throws Exception {
    }

    // RENAMED AND MODIFIED METHOD
    // $FF: renamed from: Ô00000 () void
    public static void joinScriptLoadingThread() throws Exception {
    }
}