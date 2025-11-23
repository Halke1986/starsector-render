package com.genir.renderer.overrides.loading;

import com.fs.graphics.Sprite;
import com.fs.graphics.font.FontRepository;
import com.fs.starfarer.api.Global;
import com.fs.starfarer.api.combat.ShipHullSpecAPI;
import com.fs.starfarer.api.loading.*;
import com.fs.starfarer.loading.SpecStore;
import com.fs.starfarer.loading.specs.BaseWeaponSpec;
import com.fs.starfarer.loading.specs.ShipHullSpec;
import com.genir.renderer.async.ExecutorFactory;

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
            6, "FR-Resource-Loader-Worker", new ExceptionHandler());

    private static final Bar barAnimation = new Bar();

    public static void initSpecStore(com.fs.starfarer.loading.ResourceLoaderState state) throws Exception {
        ExecutorService exec = ExecutorFactory.newExecutor(1, "FR-Resource-Loader", new ExceptionHandler());

        mainThreadWaitGroup.incrementAndGet();
        exec.execute(() -> {
            try {
                SpecStore.init(state);
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
                Runnable r = mainThreadQueue.poll(10, TimeUnit.MILLISECONDS);
                if (r != null) {
                    r.run();
                    state.renderProgress(0);
                }
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
        awaitTermination(workers);
        awaitTermination(exec);
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
        loadResource("TEXTURE", weaponSpec.getHardpointSpriteName());
        loadResource("TEXTURE", weaponSpec.getTurretSpriteName());
        loadResource("TEXTURE", weaponSpec.getHardpointUnderSpriteName());
        loadResource("TEXTURE", weaponSpec.getTurretUnderSpriteName());

        if (weaponSpec instanceof BeamWeaponSpecAPI beamWeaponSpec) {
            loadResource("TEXTURE", beamWeaponSpec.getHardpointGlowSpriteName());
            loadResource("TEXTURE", beamWeaponSpec.getTurretGlowSpriteName());

            queueWeaponAnimation(weaponSpec);
        } else if (weaponSpec instanceof ProjectileWeaponSpecAPI projectileWeaponSpec) {
            loadResource("TEXTURE", projectileWeaponSpec.getHardpointGlowSpriteName());
            loadResource("TEXTURE", projectileWeaponSpec.getTurretGlowSpriteName());
            loadResource("TEXTURE", projectileWeaponSpec.getHardpointGunSpriteName());
            loadResource("TEXTURE", projectileWeaponSpec.getTurretGunSpriteName());

            queueWeaponAnimation(weaponSpec);
        }
    }

    private static void queueWeaponAnimation(WeaponSpecAPI weaponSpec) {
        String turretTex = weaponSpec.getTurretSpriteName().replaceAll("00\\.png", "");
        String hardpointText = weaponSpec.getHardpointSpriteName().replaceAll("00\\.png", "");

        for (int i = 1; i < ((BaseWeaponSpec) weaponSpec).getNumFrames(); ++i) {
            loadResource("TEXTURE", String.format("%s%02d.png", turretTex, i));
            loadResource("TEXTURE", String.format("%s%02d.png", hardpointText, i));
        }
    }

    public static void queueProjectileSprite(Object abstractProjectileSpec) {
        if (abstractProjectileSpec instanceof MissileSpecAPI missileSpec) {
            loadResource("TEXTURE", missileSpec.getHullSpec().getSpriteName());
            loadResource("TEXTURE", missileSpec.getGlowSpriteName());
        } else if (abstractProjectileSpec instanceof ProjectileSpecAPI projectileSpec) {
            loadResource("TEXTURE", projectileSpec.getBulletSpriteName());
            loadResource("TEXTURE", projectileSpec.getFringeTex());
            loadResource("TEXTURE", projectileSpec.getCoreTex());
        }
    }

    public static void queueShipSprite(ShipHullSpec hullSpec) {
        String texture = ((ShipHullSpecAPI) hullSpec).getSpriteName();
        loadResource("TEXTURE", texture);
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

        public void animate(Sprite bar) {
            float screenWidth = Global.getSettings().getScreenWidth();
            float screenHeight = Global.getSettings().getScreenHeight();

            float barWidth = bar.getWidth();
            float barHeight = bar.getHeight();

            float x = (screenWidth - barWidth) / 2;
            float y = (screenHeight - barHeight) / 2;

            int segments = barSegments.length;

            int flipIdx = Math.abs(rand.nextInt()) % segments;
            barSegments[flipIdx] = !barSegments[flipIdx];

            for (int i = 0; i < segments; i++) {
                if (barSegments[i]) {
                    bar.renderRegion(
                            x, y,
                            (float) i / (float) segments, 0,
                            1f / (float) segments, 1
                    );
                }
            }
        }
    }
}
