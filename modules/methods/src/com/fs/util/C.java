package com.fs.util;

import com.fs.starfarer.api.util.Pair;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class C {
    // $FF: renamed from: new (java.lang.String) java.util.List
    public synchronized List<Pair<Oo, InputStream>> method_24940(String var1) throws IOException {
        try {
            return new_optimized(var1);
        } catch (Throwable t) {
            return new_vanilla(var1);
        }
    }

    // $FF: renamed from: Ó00000 (java.lang.String, boolean) java.io.InputStream
    public synchronized InputStream method_24937(String var1, boolean var2) throws IOException {
        try {
            return Ó00000_optimized(var1, var2);
        } catch (Throwable t) {
            return Ó00000_vanilla(var1, var2);
        }
    }

    // STUB
    public List<Pair<Oo, InputStream>> new_optimized(String var1) throws IOException {
        return null;
    }

    // STUB
    public List<Pair<Oo, InputStream>> new_vanilla(String var1) throws IOException {
        return null;
    }

    // STUB
    public InputStream Ó00000_optimized(String var1, boolean var2) throws IOException {
        return null;
    }

    // STUB
    public InputStream Ó00000_vanilla(String var1, boolean var2) throws IOException {
        return null;
    }

    public static class Oo {
    }
}
