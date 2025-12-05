package com.genir.renderer.overrides.loading;

import com.fs.starfarer.api.Global;
import com.fs.starfarer.api.combat.ShipHullSpecAPI;
import com.fs.starfarer.api.loading.*;
import com.genir.renderer.async.ExecutorFactory;
import proxy.com.fs.graphics.Sprite;
import proxy.com.fs.graphics.font.FontRepository;
import proxy.com.fs.starfarer.loading.SpecStore;
import proxy.com.fs.starfarer.loading.specs.BaseWeaponSpec;
import proxy.com.fs.starfarer.loading.specs.ShipHullSpec;

import java.io.IOException;
import java.util.Random;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class ResourceLoader { // com.fs.starfarer.loading.ResourceLoaderState
    public static final BlockingQueue<Runnable> mainThreadQueue = new LinkedBlockingQueue<>();
    public static final AtomicInteger mainThreadWaitGroup = new AtomicInteger(0);
    private static final AtomicReference<Throwable> asyncException = new AtomicReference<>();
    public static final ExecutorService workers = ExecutorFactory.newExecutor(
            3, "FR-Resource-Loader-Worker", new ExceptionHandler());

    // Sound loading uses a dedicated worker pool because the decoder contains a large synchronized section,
    // making it effectively single-threaded. Running sound decoding on the common worker pool would stall it.
    // NOTE: SpecStore.SpecStore_init call order is modified in assembly so that sound loading runs earlier.
    // This gives the non-parallelizable sound loading more time to complete, reducing the chance of the main
    // thread waiting.
    public static final ExecutorService soundWorkers = ExecutorFactory.newExecutor(
            2, "FR-Sound-Loader", new ExceptionHandler());

    private static final Bar barAnimation = new Bar();

    public static void initSpecStore(proxy.com.fs.starfarer.loading.ResourceLoaderState state) throws Exception {
        ExecutorService exec = ExecutorFactory.newExecutor(1, "FR-Resource-Loader", new ExceptionHandler());

        mainThreadWaitGroup.incrementAndGet();
        exec.execute(() -> {
            try {
                SpecStore.SpecStore_init(state);

                // Most sprites were already optionally queued in
                // queueWeaponSprite, queueProjectileSprite and queueShipSprite.
                // But vanilla is the final judge on what should be loaded.
                state.queueShipAndWeaponSprites();
            } catch (Throwable e) {
                setException(e);
            } finally {
                mainThreadWaitGroup.decrementAndGet();
                exec.shutdown();
            }
        });

        // Run commands on main thread, as it was an Executor.
        do {
            try {
                Runnable r = mainThreadQueue.poll(333, TimeUnit.MILLISECONDS);
                if (r != null) {
                    r.run();
                }
                state.renderProgress(0);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        } while (mainThreadWaitGroup.get() > 0 && asyncException.get() == null);

        // Rethrow exception captured in a worker thread.
        Throwable t = asyncException.get();
        if (t instanceof Exception e) {
            throw e;
        } else if (t != null) {
            throw new RuntimeException(t);
        }

        workers.shutdown();
        soundWorkers.shutdown();

        awaitTermination(workers);
        awaitTermination(soundWorkers);
        awaitTermination(exec);

        // Fill the progress bar.
        barAnimation.forwardOnly = true;
        while (barAnimation.barIsNotFull()) {
            state.renderProgress(0);
            Thread.sleep(10);
        }
    }

    public static void loadResource(String type, String path) {
        if (path == null) {
            return;
        }

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

    private static void awaitTermination(ExecutorService exec) {
        try {
            exec.awaitTermination(30, TimeUnit.MINUTES);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    public static void queueWeaponSprite(WeaponSpecAPI weaponSpec) {
        ImageLoader.queueImageOptional("TEXTURE", weaponSpec.getHardpointSpriteName());
        ImageLoader.queueImageOptional("TEXTURE", weaponSpec.getTurretSpriteName());
        ImageLoader.queueImageOptional("TEXTURE", weaponSpec.getHardpointUnderSpriteName());
        ImageLoader.queueImageOptional("TEXTURE", weaponSpec.getTurretUnderSpriteName());

        if (weaponSpec instanceof BeamWeaponSpecAPI beamWeaponSpec) {
            ImageLoader.queueImageOptional("TEXTURE", beamWeaponSpec.getHardpointGlowSpriteName());
            ImageLoader.queueImageOptional("TEXTURE", beamWeaponSpec.getTurretGlowSpriteName());

            queueWeaponAnimation(weaponSpec);
        } else if (weaponSpec instanceof ProjectileWeaponSpecAPI projectileWeaponSpec) {
            ImageLoader.queueImageOptional("TEXTURE", projectileWeaponSpec.getHardpointGlowSpriteName());
            ImageLoader.queueImageOptional("TEXTURE", projectileWeaponSpec.getTurretGlowSpriteName());
            ImageLoader.queueImageOptional("TEXTURE", projectileWeaponSpec.getHardpointGunSpriteName());
            ImageLoader.queueImageOptional("TEXTURE", projectileWeaponSpec.getTurretGunSpriteName());

            queueWeaponAnimation(weaponSpec);
        }
    }

    private static void queueWeaponAnimation(WeaponSpecAPI weaponSpec) {
        String turretTex = weaponSpec.getTurretSpriteName().replaceAll("00\\.png", "");
        String hardpointText = weaponSpec.getHardpointSpriteName().replaceAll("00\\.png", "");

        for (int i = 1; i < ((BaseWeaponSpec) weaponSpec).getNumFrames(); ++i) {
            ImageLoader.queueImageOptional("TEXTURE", String.format("%s%02d.png", turretTex, i));
            ImageLoader.queueImageOptional("TEXTURE", String.format("%s%02d.png", hardpointText, i));
        }
    }

    public static void queueProjectileSprite(Object abstractProjectileSpec) {
        if (abstractProjectileSpec instanceof MissileSpecAPI missileSpec) {
            ImageLoader.queueImageOptional("TEXTURE", missileSpec.getHullSpec().getSpriteName());
            ImageLoader.queueImageOptional("TEXTURE", missileSpec.getGlowSpriteName());
        } else if (abstractProjectileSpec instanceof ProjectileSpecAPI projectileSpec) {
            ImageLoader.queueImageOptional("TEXTURE", projectileSpec.getBulletSpriteName());
            ImageLoader.queueImageOptional("TEXTURE", projectileSpec.getFringeTex());
            ImageLoader.queueImageOptional("TEXTURE", projectileSpec.getCoreTex());
        }
    }

    public static void queueShipSprite(ShipHullSpec hullSpec) {
        String texture = ((ShipHullSpecAPI) hullSpec).getSpriteName();
        ImageLoader.queueImageOptional("TEXTURE", texture);
    }

    public static void animateBar(Sprite bar) {
        barAnimation.animate(bar);
    }

    public static void setException(Throwable e) {
        if (e != null) {
            asyncException.compareAndSet(null, e);
        }
    }

    private static class ExceptionHandler implements Thread.UncaughtExceptionHandler {
        @Override
        public void uncaughtException(Thread t, Throwable e) {
            setException(e);
        }
    }

    private static class Bar {
        private final boolean[] barSegments = new boolean[200];
        private final Random rand = new Random();

        boolean forwardOnly = false;

        void animate(Sprite bar) {
            float x = Global.getSettings().getScreenWidth() / 2;
            float y = Global.getSettings().getScreenHeight() / 2;

            int segments = barSegments.length;

            int flipIdx = Math.abs(rand.nextInt()) % segments;
            if (forwardOnly && barIsNotFull()) {
                while (barSegments[flipIdx]) {
                    flipIdx = Math.abs(rand.nextInt()) % segments;
                }
            }

            barSegments[flipIdx] = !barSegments[flipIdx];

            int start = 0;
            int length = 0;

            for (int i = 0; i < segments; i++) {
                if (!barSegments[i]) {
                    renderBar(x, y, length, start, segments, bar);

                    start = 0;
                    length = 0;
                } else {
                    if (start == 0) {
                        start = i;
                    }
                    length++;
                }
            }

            renderBar(x, y, length, start, segments, bar);
        }

        private void renderBar(float x, float y, int length, int start, int segments, Sprite bar) {
            if (length > 0) {
                bar.renderRegionAtCenter(
                        x, y,
                        (float) start / (float) segments, 0,
                        (float) length / (float) segments, 1
                );
            }
        }

        boolean barIsNotFull() {
            for (boolean barSegment : barSegments) {
                if (!barSegment) {
                    return true;
                }
            }

            return false;
        }
    }
}
