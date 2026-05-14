package com.genir.renderer.overrides.loading;

import proxy.com.fs.graphics.FileRepository;
import proxy.sound.SoundStore;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Set;

import static com.genir.renderer.overrides.loading.ResourceLoader.mainThreadWaitGroup;

public class SoundLoader {
    private static final Set<String> knownSounds = new HashSet<>();

    public static void queueSound(String path) {
        if (path != null && !knownSounds.contains(path)) {
            knownSounds.add(path);

            ResourceLoader.soundWorkers.execute(() -> {
                try {
                    loadSound(path);
                } catch (Throwable e) {
                    ResourceLoader.setException(e);
                }
            });
        }
    }

    private static void loadSound(String path) {
        // Check prerequisites.
        SoundStore soundStore = SoundStore.SoundStore_getInstance(); // TODO save instance, make synchronized
        if (!soundStore.getIsOpenALInitialized2()) {
            return;
        } else if (!soundStore.SoundStore_getIsInitialized()) {
            throw new RuntimeException("Can't load sounds until SoundStore is init(). Use the container init() method.");
        }

        // Sound already loaded.
        if (soundStore.getTrackMap().get(path) != null) {
            return;
        }

        // Load sound bytes.
        byte[] bytes;
        try {
            bytes = FileRepository.FileRepository_loadSound(path);
        } catch (Exception e) {
            // Vanilla throws a RuntimeException when sound fails to load.
            throw new RuntimeException("Sound with filename [" + path + "] not found or failed to load", e);
        }

        ByteArrayInputStream stream = new ByteArrayInputStream(bytes);
        String extension = path.substring(path.lastIndexOf(".") + 1).toLowerCase();

        boolean unsupported = false;
        try {
            if (extension.equals("ogg")) {
                loadOgg(path, stream, soundStore);
            } else if (extension.equals("wav")) {
                loadWav(path, stream, soundStore);
            } else {
                unsupported = true;
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        if (unsupported) {
            throw new RuntimeException("Only wav and ogg are currently supported.");
        }

        // Submit empty job to main thread to progress the loading bar.
        mainThreadWaitGroup.incrementAndGet();
        ResourceLoader.mainThreadQueue.add(mainThreadWaitGroup::decrementAndGet);
    }

    private static void loadOgg(String path, InputStream stream, SoundStore soundStore) throws IOException {
        soundStore.SoundStore_loadOgg(path, stream);
    }

    private static void loadWav(String path, InputStream stream, SoundStore soundStore) throws IOException {
        soundStore.SoundStore_loadWav(path, stream);
    }
}
