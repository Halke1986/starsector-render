package com.genir.renderer.overrides.loading;

import com.fs.starfarer.api.Global;
import com.fs.starfarer.api.ModPlugin;
import com.fs.starfarer.api.combat.ShipHullSpecAPI;
import com.fs.starfarer.api.impl.campaign.procgen.MarkovNames;
import com.fs.starfarer.api.impl.campaign.velfield.SlipstreamManager;
import com.fs.starfarer.api.loading.*;
import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.bridge.commands.Display;
import proxy.com.fs.graphics.Sprite;
import proxy.com.fs.graphics.font.FontRepository;
import proxy.com.fs.graphics.particle.SmoothParticle;
import proxy.com.fs.graphics.util.Fps;
import proxy.com.fs.starfarer.util.ScreenshotUtil;
import proxy.com.fs.starfarer.Version;
import proxy.com.fs.starfarer.combat.entities.ship.damage.ImpactSound;
import proxy.com.fs.starfarer.loading.SpecStore;
import proxy.com.fs.starfarer.loading.specs.BaseWeaponSpec;
import proxy.com.fs.starfarer.loading.specs.ShipHullSpec;
import proxy.com.fs.starfarer.renderers.AtmosphereRenderer;
import proxy.com.fs.starfarer.renderers.ShipArrowRenderer;
import proxy.com.fs.starfarer.settings.StarfarerSettings;
import proxy.com.fs.starfarer.util.ScreenshotUtil;

import java.awt.*;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;
import static com.genir.renderer.overrides.loading.ScriptLoader.joinScriptLoadingThread;

public class ResourceLoader { // com.fs.starfarer.loading.ResourceLoaderState
    public static final BlockingQueue<Runnable> mainThreadQueue = new LinkedBlockingQueue<>();
    public static final AtomicInteger mainThreadWaitGroup = new AtomicInteger(0);
    private static final AtomicReference<Throwable> asyncException = new AtomicReference<>();

    public static final ExecutorService workers = ExecutorFactory.newExecutor(
            3, "FR-Texture-Loader", new ExceptionHandler());
    public static final ExecutorService scriptWorkers = ExecutorFactory.newExecutor(
            3, "FR-Script-Loader", new ExceptionHandler());
    public static final ExecutorService soundWorkers = ExecutorFactory.newExecutor(
            2, "FR-Sound-Loader", new ExceptionHandler());

    private static final ProgressBar barAnimation = new ProgressBar();

    public static void init(Object stateObject, Map var1) throws Exception {
        FileLoader.initResourceLoading();

        var state = (proxy.com.fs.starfarer.loading.ResourceLoaderState) stateObject;

        DDSCache.initializeCache();

        try {
            // init_vanilla will call 'initSpecStore'.
            // initSpecStore throws an exception to skip
            // the middle section of vanilla init.
            state.init_vanilla(var1);
        } catch (SkipVanillaInitEpilogue expected) {
            // Continue after skipping the middle
            // section of vanilla init.
        }

        // Run skipped vanilla ResourceLoader init epilogue.
        initEpilogue();

        soundWorkers.shutdown();
        awaitTermination(soundWorkers);
    }

    private static void initEpilogue() throws Exception {
        // Script loading thread is started in 'init_vanilla'.
        joinScriptLoadingThread();

        MarkovNames.loadIfNeeded();
        for (ModPlugin mod : Global.getSettings().getModManager().getEnabledModPlugins()) {
            mod.onApplicationLoad();
        }

        ImpactSound.ImpactSound_init();
        new Version();
        new SmoothParticle(Color.BLACK, 10.0F);
        new Fps();
        AtmosphereRenderer.AtmosphereRenderer_init();
        ScreenshotUtil.ScreenshotUtil_init();
        ShipArrowRenderer.ShipArrowRenderer_init();
        SlipstreamManager.validateConfigs();
        Display.setVSyncEnabled(StarfarerSettings.StarfarerSettings_getBooleanValue("vsync"));
    }

    public static void initSpecStore(proxy.com.fs.starfarer.loading.ResourceLoaderState state) throws Exception {
        ExecutorService mainThreadExec = ExecutorFactory.newExecutor(1, "FR-Resource-Loader", new ExceptionHandler());

        mainThreadWaitGroup.incrementAndGet();
        mainThreadExec.execute(() -> {
            try {
                // Bulk of the resource loading is performed in this call.
                SpecStore.SpecStore_init(state);

                // Most sprites were already optionally queued in
                // queueWeaponSprite, queueProjectileSprite and queueShipSprite.
                // But vanilla is the final judge on what should be loaded.
                state.queueShipAndWeaponSprites();
            } catch (Throwable e) {
                setException(e);
            } finally {
                mainThreadWaitGroup.decrementAndGet();
            }
        });

        // Run commands on main thread, as if it was an Executor.
        do {
            try {
                Runnable r = mainThreadQueue.poll(333, TimeUnit.MILLISECONDS);
                if (r != null) {
                    r.run();
                }

                if (getThreadContext().exec.isIdle()) {
                    state.renderProgress(0);
                    Display.update(true);
                }

            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        } while (mainThreadWaitGroup.get() > 0 && asyncException.get() == null);

        // Rethrow exception captured in a worker thread.
        Throwable t = asyncException.get();
        if (t != null) {
            // Interrupt workers.
            mainThreadExec.shutdownNow();
            workers.shutdownNow();
            scriptWorkers.shutdownNow();
            soundWorkers.shutdownNow();

            awaitTermination(mainThreadExec);
            awaitTermination(workers);
            awaitTermination(scriptWorkers);
            awaitTermination(soundWorkers);

            if (t instanceof Exception e) {
                throw e;
            } else {
                throw new RuntimeException(t);
            }
        }

        mainThreadExec.shutdown();
        workers.shutdown();
        scriptWorkers.shutdown();

        awaitTermination(mainThreadExec);
        awaitTermination(workers);
        awaitTermination(scriptWorkers);

        FileLoader.initModLoading();

        // Fill the progress bar.
        barAnimation.forwardOnly = true;
        while (barAnimation.barIsNotFull()) {
            state.renderProgress(0);
            Display.update();
            Thread.sleep(10);
        }

        // Skip a redundant section of vanilla resource loading.
        throw new SkipVanillaInitEpilogue();
    }

    public static void loadResource(String type, String path) {
        if (path == null) {
            return;
        }

        switch (type) {
            case "TEXTURE":
            case "TEXTURE_OPTIONAL":
            case "TEXTURE_ALPHA_ADDER":
                TextureLoader.queueImage(type, path);
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
        TextureLoader.queueImageOptional("TEXTURE", weaponSpec.getHardpointSpriteName());
        TextureLoader.queueImageOptional("TEXTURE", weaponSpec.getTurretSpriteName());
        TextureLoader.queueImageOptional("TEXTURE", weaponSpec.getHardpointUnderSpriteName());
        TextureLoader.queueImageOptional("TEXTURE", weaponSpec.getTurretUnderSpriteName());

        if (weaponSpec instanceof BeamWeaponSpecAPI beamWeaponSpec) {
            TextureLoader.queueImageOptional("TEXTURE", beamWeaponSpec.getHardpointGlowSpriteName());
            TextureLoader.queueImageOptional("TEXTURE", beamWeaponSpec.getTurretGlowSpriteName());

            queueWeaponAnimation(weaponSpec);
        } else if (weaponSpec instanceof ProjectileWeaponSpecAPI projectileWeaponSpec) {
            TextureLoader.queueImageOptional("TEXTURE", projectileWeaponSpec.getHardpointGlowSpriteName());
            TextureLoader.queueImageOptional("TEXTURE", projectileWeaponSpec.getTurretGlowSpriteName());
            TextureLoader.queueImageOptional("TEXTURE", projectileWeaponSpec.getHardpointGunSpriteName());
            TextureLoader.queueImageOptional("TEXTURE", projectileWeaponSpec.getTurretGunSpriteName());

            queueWeaponAnimation(weaponSpec);
        }
    }

    private static void queueWeaponAnimation(WeaponSpecAPI weaponSpec) {
        String turretTex = weaponSpec.getTurretSpriteName().replaceAll("00\\.png", "");
        String hardpointText = weaponSpec.getHardpointSpriteName().replaceAll("00\\.png", "");

        for (int i = 1; i < ((BaseWeaponSpec) weaponSpec).getNumFrames(); ++i) {
            TextureLoader.queueImageOptional("TEXTURE", String.format("%s%02d.png", turretTex, i));
            TextureLoader.queueImageOptional("TEXTURE", String.format("%s%02d.png", hardpointText, i));
        }
    }

    public static void queueProjectileSprite(Object abstractProjectileSpec) {
        if (abstractProjectileSpec instanceof MissileSpecAPI missileSpec) {
            TextureLoader.queueImageOptional("TEXTURE", missileSpec.getHullSpec().getSpriteName());
            TextureLoader.queueImageOptional("TEXTURE", missileSpec.getGlowSpriteName());
        } else if (abstractProjectileSpec instanceof ProjectileSpecAPI projectileSpec) {
            TextureLoader.queueImageOptional("TEXTURE", projectileSpec.getBulletSpriteName());
            TextureLoader.queueImageOptional("TEXTURE", projectileSpec.getFringeTex());
            TextureLoader.queueImageOptional("TEXTURE", projectileSpec.getCoreTex());
        }
    }

    public static void queueShipSprite(ShipHullSpec hullSpec) {
        String texture = ((ShipHullSpecAPI) hullSpec).getSpriteName();
        TextureLoader.queueImageOptional("TEXTURE", texture);
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

    private static class SkipVanillaInitEpilogue extends RuntimeException {
    }
}
