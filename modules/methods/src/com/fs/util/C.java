package com.fs.util;

import com.fs.starfarer.api.util.Pair;
import com.genir.renderer.overrides.Utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class C {
    // $FF: renamed from: String java.lang.String
    private String string_0;
    // $FF: renamed from: super boolean
    public static boolean boolean_0;

    // ADDED
    public String getString0() {
        return string_0;
    }

    // ADDED
    public boolean getBoolean0() {
        return boolean_0;
    }

    // ADDED
    public void setString0(String value) {
        string_0 = value;
    }

    // ADDED
    public void setBoolean0(boolean value) {
        boolean_0 = value;
    }

    // STUB
    public List<Pair<Oo, InputStream>> loadInputStreamsOptimized(String var1) throws IOException {
        return null;
    }

    // STUB
    public List<Pair<Oo, InputStream>> loadInputStreamsVanilla(String var1) throws IOException {
        return null;
    }

    // STUB
    public InputStream loadInputStreamOptimized(String var1, boolean var2) throws IOException {
        return null;
    }

    // STUB
    public InputStream loadInputStreamVanilla(String var1, boolean var2) throws IOException {
        return null;
    }

    // MODIFIED
    // $FF: renamed from: new (java.lang.String) java.util.List
    public synchronized List<Pair<Oo, InputStream>> method_24940(String var1) throws IOException {
        return Utils.loadInputStreams(this, var1);
    }

    // MODIFIED
    // $FF: renamed from: Ó00000 (java.lang.String, boolean) java.io.InputStream
    public synchronized InputStream method_24937(String var1, boolean var2) throws IOException {
        return Utils.loadInputStream(this, var1, var2);
    }

    // STUB
    public static class Oo {
    }
}
