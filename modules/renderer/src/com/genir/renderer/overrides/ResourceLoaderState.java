package com.genir.renderer.overrides;

import com.fs.starfarer.loading.SpecStore;
import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.overrides.extensions.SoundLoader;
import org.json.JSONException;

import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

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
        ExecutorService exec = ExecutorFactory.newSingleThreadExecutor("FR-Spec-Loader");

        Future<?> f = exec.submit(() -> {
            try {
                SpecStore.init(state);
            } catch (IOException | JSONException e) {
                throw new RuntimeException(e);
            }
        }, null);

        try {
            f.get();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
