package com.genir.renderer.overrides;

import com.fs.starfarer.loading.SpecStore;
import com.genir.renderer.overrides.extensions.SoundLoader;
import org.json.JSONException;

import java.io.IOException;

public class ResourceLoaderState {
    public static void loadResource(String type, String path) {
        switch (type) {
            case "TEXTURE":
            case "TEXTURE_OPTIONAL":
            case "TEXTURE_ALPHA_ADDER":
                FileRepository.queueImage(path);
                break;
            case "SOUND":
                SoundLoader.queueSound(path);
        }
    }

    public static void initSpecStore(com.fs.starfarer.loading.ResourceLoaderState state) throws JSONException, IOException {
        SpecStore.init(state);
    }
}
