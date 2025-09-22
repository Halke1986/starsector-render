package com.fs.starfarer.loading.scripts;

import com.fs.util.container.repo.ObjectRepository;

import java.util.List;

public class ScriptStore {
    // $FF: renamed from: if com.fs.starfarer.loading.scripts.B
    private static volatile B field_0;
    public static volatile ObjectRepository Õ00000 = new ObjectRepository();

    // OBF STUB getJarList
    public static List<String> Õ00000() {
        return null;
    }

    // OBF STUB setScriptLoader
    private static void o00000(ClassLoader var0) {
    }

    // OBF STUB getPlugin
    public static Object Ò00000(String var0) {
        return null;
    }

    // ADDED METHOD
    public static Object getScriptLoader() {
        return field_0;
    }

    // ADDED METHOD
    public static void setScriptLoader(ClassLoader var0) {
        o00000(var0);
    }

    // ADDED METHOD
    public static List<String> getJarList() {
        return Õ00000();
    }

    // ADDED METHOD
    public static Object getPlugin(String var0) {
        return Ò00000(var0);
    }

    // ADDED METHOD
    public static void addPlugin(Object plugin) {
        Õ00000.add(plugin);
    }

    // MODIFIED METHOD
    // $FF: renamed from: Object (java.lang.String) void
    public static void addScript(String var0) {
    }

    // MODIFIED METHOD
    // $FF: renamed from: int () void
    public static void runScriptLoadingThread() throws Exception {
    }

    // MODIFIED METHOD
    // $FF: renamed from: Ô00000 () void
    public static void joinScriptLoadingThread() throws Exception {
    }
}