package com.genir.renderer.overrides.loading;

import com.fs.graphics.FileRepository;
import org.apache.log4j.Logger;
import sound.Sound;

import java.io.ByteArrayInputStream;
import java.util.HashSet;
import java.util.Set;

public class SoundLoader {
    private static final Set<String> knownSounds = new HashSet<>();

    public static void queueSound(String path) {
        if (path != null && !knownSounds.contains(path)) {
            knownSounds.add(path);

            ResourceLoader.workers.submit(() -> loadSound(path));
        }
    }

    private static void loadSound(String path) {
        try {
            byte[] bytes = FileRepository.FileRepository_loadSound(path);
            ByteArrayInputStream stream = new ByteArrayInputStream(bytes);
            String extension = path.substring(path.lastIndexOf(".") + 1);

            new Sound(path, extension, stream);
        } catch (Exception e) {
            Logger.getLogger(SoundLoader.class).error("Error while loading file [" + path + "]: " + e.getMessage());
        }
    }
}
