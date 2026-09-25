package com.fs.util;

// $FF: renamed from: com.fs.util.C
public class FileLoader {
    // $FF: renamed from: com.fs.util.C.Oo
    public static class ResourceLocation {
        // $FF: renamed from: super com.fs.util.C.o
        public ResourceLocationType ResourceLocation_type;

        // $FF: renamed from: Ó00000 java.lang.String
        public String ResourceLocation_path;

        // $FF: renamed from: String boolean
        public boolean ResourceLocation_isMod = false;
    }

    // $FF: renamed from: com.fs.util.C.o
    public enum ResourceLocationType {
        DIRECTORY,
        ABSOLUTE_AND_CWD,
        CLASSPATH;
    }
}