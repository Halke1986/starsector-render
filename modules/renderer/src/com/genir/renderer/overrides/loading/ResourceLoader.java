package com.genir.renderer.overrides.loading;

import com.fs.graphics.font.FontRepository;
import com.fs.starfarer.api.Global;
import com.fs.starfarer.loading.SpecStore;
import com.genir.renderer.Noop;
import com.genir.renderer.async.ExecutorFactory;
import org.json.JSONException;

import java.io.IOException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class ResourceLoader { // com.fs.starfarer.loading.ResourceLoaderState
    public static final BlockingQueue<Runnable> executorQueue = new LinkedBlockingQueue<>();
    public static final AtomicInteger waitGroup = new AtomicInteger(0);

    public static void loadResource(String type, String path) {
        switch (type) {
            case "TEXTURE":
            case "TEXTURE_OPTIONAL":
            case "TEXTURE_ALPHA_ADDER":
                ImageLoader.queueImage(type, path);
                break;
            case "SOUND":
                if (Global.getSettings().isSoundEnabled()) {
                    SoundLoader.queueSound(path);
                }
                break;
            case "FONT":
                try {
                    FontRepository.FontRepository_defineFont(path, path);
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
                break;
        }
    }

    public static void initSpecStore(com.fs.starfarer.loading.ResourceLoaderState state) throws JSONException, IOException {
        try {
            ExecutorService exec = ExecutorFactory.newSingleThreadExecutor("FR-Spec-Loader");

            waitGroup.incrementAndGet();
            exec.execute(() -> {
                try {
                    SpecStore.init(state);
                    state.queueShipAndWeaponSprites();
                } catch (IOException | JSONException e) {
                    throw new RuntimeException(e);
                } finally {
                    executorQueue.add(Noop::noop);
                }
            });

            do {
                Runnable r = executorQueue.take();
                r.run();
            } while (waitGroup.decrementAndGet() > 0);

            ExecutorService scriptExec = ScriptLoader.getExecutor();
            ExecutorService soundExec = SoundLoader.getExecutor();

            scriptExec.shutdown();
            soundExec.shutdown();

            awaitTermination(scriptExec);
            awaitTermination(soundExec);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static void awaitTermination(ExecutorService exec) {
        try {
            exec.awaitTermination(30, TimeUnit.MINUTES);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
