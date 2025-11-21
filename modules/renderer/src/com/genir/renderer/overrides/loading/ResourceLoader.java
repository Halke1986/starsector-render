package com.genir.renderer.overrides.loading;

import com.fs.graphics.font.FontRepository;
import com.fs.starfarer.api.Global;
import com.fs.starfarer.loading.SpecStore;
import com.fs.starfarer.loading.specs.ShipHullSpec;
import com.genir.renderer.async.ExecutorFactory;
import org.json.JSONException;

import java.io.IOException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class ResourceLoader { // com.fs.starfarer.loading.ResourceLoaderState
    public static final BlockingQueue<Runnable> mainThreadQueue = new LinkedBlockingQueue<>();
    public static final AtomicInteger mainThreadWaitGroup = new AtomicInteger(0);

    public static final ExecutorService workers = ExecutorFactory.newMultiThreadedExecutor(4, "FR-Resource-Loader-Worker");
    public static final AtomicReference<RuntimeException> exception = new AtomicReference<>();

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
            ExecutorService exec = ExecutorFactory.newSingleThreadExecutor("FR-Resource-Loader");

            mainThreadWaitGroup.incrementAndGet();
            exec.execute(() -> {
                try {
                    SpecStore.init(state);
                    state.queueShipAndWeaponSprites();
                } catch (IOException | JSONException e) {
                    throw new RuntimeException(e);
                } finally {
                    mainThreadWaitGroup.decrementAndGet();
                }
            });
            exec.shutdown();

            do {
                // Rethrow exception captured in a worker thread.
                RuntimeException e = exception.getAndSet(null);
                if (e != null) {
                    throw e;
                }

                Runnable r = mainThreadQueue.poll(10, TimeUnit.MILLISECONDS);
                if (r != null) {
                    r.run();
                }
            } while (mainThreadWaitGroup.get() > 0);

            workers.shutdown();
            awaitTermination(workers);
            awaitTermination(exec);
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

    public static void queueShipSprite(ShipHullSpec hullSpec) {
        String texture = hullSpec.getSpriteSpec().SpriteSpec_getTextureName();
        loadResource("TEXTURE", texture);
    }
}
