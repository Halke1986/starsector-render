package com.fs.starfarer.loading.scripts;

import com.fs.util.container.repo.ObjectRepository;

import java.util.List;
import java.util.Set;

public class ScriptStore {
    // $FF: renamed from: Õ00000 com.fs.util.container.repo.ObjectRepository
    public static volatile ObjectRepository ScriptStore_objectRepository;

    // $FF: renamed from: ø00000 org.codehaus.janino.JavaSourceClassLoader
    public static volatile ClassLoader ScriptStore_javaSourceClassLoader;

    // $FF: renamed from: Õ00000 () java.util.List
    public static List<String> ScriptStore_getScriptList() {
        return null;
    }

    // $FF: renamed from: Ò00000 () java.util.Set
    public static Set<String> ScriptStore_getPluginSet() {
        return null;
    }

    // $FF: renamed from: Object () com.fs.starfarer.loading.scripts.B
    public static SecureClassLoader ScriptStore_getSecureClassLoader() {
        return null;
    }
}
