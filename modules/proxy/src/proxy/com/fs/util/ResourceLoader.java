package proxy.com.fs.util;

import java.util.List;

// $FF: renamed from: com.fs.util.C
public class ResourceLoader {
    // $FF: renamed from: String java.lang.String
    public String ResourceLoader_locationFilter;

    // $FF: renamed from: super boolean
    public static boolean ResourceLoader_withoutMods = false;

    // $FF: renamed from: Ó00000 () com.fs.util.C
    public static ResourceLoader ResourceLoader_getInstance() {
        return null;
    }

    // $FF: renamed from: Ô00000 () java.util.List
    public synchronized List<ResourceLocation> ResourceLoader_getResourceList() {
        return null;
    }

    // $FF: renamed from: com.fs.util.C.Oo
    public class ResourceLocation {
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