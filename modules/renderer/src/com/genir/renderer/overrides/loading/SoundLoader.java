package com.genir.renderer.overrides.loading;

import com.fs.graphics.FileRepository;
import sound.Sound;

import java.io.ByteArrayInputStream;
import java.util.HashSet;
import java.util.Set;

import static com.genir.renderer.overrides.loading.ResourceLoader.mainThreadWaitGroup;

public class SoundLoader {
    private static final Set<String> knownSounds = new HashSet<>();

    public static void queueSound(String path) {
        if (path != null && !knownSounds.contains(path)) {
            knownSounds.add(path);

            ResourceLoader.workers.execute(() -> {
                try {
                    loadSound(path);
                } catch (Throwable e) {
                    ResourceLoader.setException(e);
                }
            });
        }
    }

    private static void loadSound(String path) {
        try {
            byte[] bytes = FileRepository.FileRepository_loadSound(path);
            ByteArrayInputStream stream = new ByteArrayInputStream(bytes);
            String extension = path.substring(path.lastIndexOf(".") + 1);

            new Sound(path, extension, stream);

            // Submit empty job to main thread to progress the loading bar.
            mainThreadWaitGroup.incrementAndGet();
            ResourceLoader.mainThreadQueue.add(mainThreadWaitGroup::decrementAndGet);
        } catch (Exception e) {
            // Vanilla throws a RuntimeException when sound fails to load.
            throw new RuntimeException("Sound with filename [" + path + "] not found or failed to load", e);
        }
    }
}
