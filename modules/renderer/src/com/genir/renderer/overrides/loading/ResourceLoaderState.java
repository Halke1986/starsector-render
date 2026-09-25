package com.genir.renderer.overrides.loading;

import com.fs.starfarer.api.Global;
import com.fs.starfarer.api.ModPlugin;
import com.fs.starfarer.api.combat.ShipHullSpecAPI;
import com.fs.starfarer.api.impl.campaign.procgen.MarkovNames;
import com.fs.starfarer.api.impl.campaign.velfield.SlipstreamManager;
import com.fs.starfarer.api.loading.*;
import com.genir.renderer.async.AsyncException;
import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.debug.SamplerRunner;
import com.genir.renderer.overrides.GameState;
import com.genir.renderer.overrides.loading.textures.DDSIntegration;
import com.genir.renderer.overrides.loading.textures.TextureLoader;
import proxy.com.fs.graphics.Sprite;
import proxy.com.fs.graphics.TextureRepository;
import proxy.com.fs.graphics.font.FontRepository;
import proxy.com.fs.graphics.particle.SmoothParticle;
import proxy.com.fs.graphics.util.Fps;
import proxy.com.fs.graphics.util.Rendering;
import proxy.com.fs.starfarer.Version;
import proxy.com.fs.starfarer.combat.entities.ship.damage.ImpactSound;
import proxy.com.fs.starfarer.loading.specs.BaseWeaponSpec;
import proxy.com.fs.starfarer.loading.specs.ShipHullSpec;
import proxy.com.fs.starfarer.renderers.AtmosphereRenderer;
import proxy.com.fs.starfarer.renderers.ShipArrowRenderer;
import proxy.com.fs.starfarer.settings.StarfarerSettings;
import proxy.com.fs.starfarer.util.ScreenshotUtil;

import java.awt.*;
import java.io.IOException;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

import static com.genir.renderer.Noop.breakpoint;

/**
 * OVERRIDES com.fs.starfarer.loading.ResourceLoaderState
 */
public class ResourceLoaderState {
    /**
     * STUBS
     */
    private Sprite barBg;
    private Sprite title;
    private Sprite bar;

    /**
     * ADDED FIELDS
     */
    public static BlockingQueue<Runnable> mainThreadQueue;
    public static AtomicInteger mainThreadWaitGroup;
    public static ExecutorService workers;
    public static ExecutorService scriptWorkers;
    public static ExecutorService soundWorkers;
    public static AsyncException asyncException;

    private ProgressBar barAnimation;

    /**
     * STUB
     */
    public void init_vanilla(Map session) throws Exception {
    }

    /**
     * STUB
     */
    private void queueShipAndWeaponSprites() {
    }

    /**
     * ADDED METHOD
     */
    public static synchronized void initStaticFields() {
        if (mainThreadQueue == null) {
            mainThreadQueue = new LinkedBlockingQueue<>();
            mainThreadWaitGroup = new AtomicInteger(0);
            asyncException = new AsyncException();

            workers = ExecutorFactory.newExecutor(3, "FR-Texture-Loader", asyncException);
            scriptWorkers = ExecutorFactory.newExecutor(3, "FR-Script-Loader", asyncException);
            soundWorkers = ExecutorFactory.newExecutor(2, "FR-Sound-Loader", asyncException);
        }
    }

    /**
     * REPLACED METHOD
     */
    public void init(Map session) throws Exception {
        barAnimation = new ProgressBar();

        FileLoader.FileLoader_getInstance().initResourceLoading();

        DDSIntegration.initialize();

        try {
            // init_vanilla will call 'initSpecStore'.
            // initSpecStore throws an exception to skip
            // the middle section of vanilla init.
            init_vanilla(session);
        } catch (RuntimeException e) {
            if (e.getMessage().equals("Skip vanilla epilogue")) {
                // Continue after skipping the middle
                // section of vanilla init.
            } else {
                throw e;
            }
        }

        // Fill the progress bar.
        barAnimation.forwardOnly = true;
        while (barAnimation.barIsNotFull()) {
            renderProgress();
            com.genir.renderer.bridge.commands.Display.update();
            Thread.sleep(10);
        }

        // Run skipped vanilla ResourceLoader init epilogue.
        initEpilogue();

        soundWorkers.shutdown();
        ExecutorFactory.awaitTermination(soundWorkers);
    }

    /**
     * ADDED METHOD
     */
    public void initMiddle() throws Exception {
        ExecutorService mainThreadExec = ExecutorFactory.newExecutor(1, "FR-Resource-Loader", asyncException);

        mainThreadWaitGroup.incrementAndGet();
        mainThreadExec.execute(() -> {
            try {
                // Bulk of the resource loading is performed in this call.
                SpecStore.initActual(this);

                // Most sprites were already optionally queued in
                // queueWeaponSprite, queueProjectileSprite and queueShipSprite.
                // But vanilla is the final judge on what should be loaded.
                queueShipAndWeaponSprites();
            } catch (Throwable e) {
                asyncException.set(e);
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

                if (ContextManager.getThreadContext().exec.isIdle()) {
                    renderProgress();
                    com.genir.renderer.bridge.commands.Display.update(true);
                }

            } catch (Throwable e) {
                asyncException.set(e);
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

            ExecutorFactory.awaitTermination(mainThreadExec);
            ExecutorFactory.awaitTermination(workers);
            ExecutorFactory.awaitTermination(scriptWorkers);
            ExecutorFactory.awaitTermination(soundWorkers);

            if (t instanceof Exception e) {
                throw e;
            } else {
                throw new RuntimeException(t);
            }
        }

        mainThreadExec.shutdown();
        workers.shutdown();
        scriptWorkers.shutdown();

        ExecutorFactory.awaitTermination(mainThreadExec);
        ExecutorFactory.awaitTermination(workers);
        ExecutorFactory.awaitTermination(scriptWorkers);

        // Skip a redundant section of vanilla resource loading.
        throw new RuntimeException("Skip vanilla epilogue");
    }

    /**
     * ADDED METHOD
     */
    private void initEpilogue() throws Exception {
        MarkovNames.loadIfNeeded();

        // Initialize mods.
        FileLoader.FileLoader_getInstance().initModLoading();
        ScriptStore.loadModClasses();
        for (ModPlugin mod : Global.getSettings().getModManager().getEnabledModPlugins()) {
            mod.onApplicationLoad();

            final Context context = ContextManager.getThreadContext();
            context.exec.wait((ctx, args, offset) -> {
                org.lwjgl.opengl.Display.processMessages();
                org.lwjgl.opengl.GL11.glFinish();
            });
        }

        // Initialize misc vanilla features.
        ImpactSound.ImpactSound_init();
        new Version();
        new SmoothParticle(Color.BLACK, 10.0F);
        new Fps();
        AtmosphereRenderer.AtmosphereRenderer_init();
        ScreenshotUtil.ScreenshotUtil_init();
        ShipArrowRenderer.ShipArrowRenderer_init();
        SlipstreamManager.validateConfigs();
        com.genir.renderer.bridge.commands.Display.setVSyncEnabled(StarfarerSettings.StarfarerSettings_getBooleanValue("vsync"));

        // Initliaze Fast Rendering functionality.
        final Context context = ContextManager.getThreadContext();
        context.stallDetector.enableDetection();
        GameState.gameInitialized = true;
        ContextManager.getThreadContext().stallDetector.enableDetection();
        FileLoader.FileLoader_getInstance().initGameplay();
        context.textureManager.assetLoadingFinished();
        if (Objects.equals(System.getProperty("com.genir.renderer.settings.sampler"), "true")) {
            SamplerRunner.samplerRunner.start();
        }
    }

    /**
     * REPLACED METHOD
     */
    public void queueResource(ResourceType type, String path, int weight) {
        String typeName = type.name();

        if (path == null) {
            return;
        }

        switch (typeName) {
            case "TEXTURE":
            case "TEXTURE_OPTIONAL":
            case "TEXTURE_ALPHA_ADDER":
                TextureLoader textureLoader = TextureRepository.TextureRepository_getTextureLoader();
                textureLoader.queueImage(typeName, path);
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

    /**
     * ADDED METHOD
     */
    public static void queueWeaponSprite(WeaponSpecAPI weaponSpec) {
        TextureLoader textureLoader = TextureRepository.TextureRepository_getTextureLoader();

        textureLoader.queueImageOptional("TEXTURE", weaponSpec.getHardpointSpriteName());
        textureLoader.queueImageOptional("TEXTURE", weaponSpec.getTurretSpriteName());
        textureLoader.queueImageOptional("TEXTURE", weaponSpec.getHardpointUnderSpriteName());
        textureLoader.queueImageOptional("TEXTURE", weaponSpec.getTurretUnderSpriteName());

        if (weaponSpec instanceof BeamWeaponSpecAPI beamWeaponSpec) {
            textureLoader.queueImageOptional("TEXTURE", beamWeaponSpec.getHardpointGlowSpriteName());
            textureLoader.queueImageOptional("TEXTURE", beamWeaponSpec.getTurretGlowSpriteName());

            queueWeaponAnimation(weaponSpec);
        } else if (weaponSpec instanceof ProjectileWeaponSpecAPI projectileWeaponSpec) {
            textureLoader.queueImageOptional("TEXTURE", projectileWeaponSpec.getHardpointGlowSpriteName());
            textureLoader.queueImageOptional("TEXTURE", projectileWeaponSpec.getTurretGlowSpriteName());
            textureLoader.queueImageOptional("TEXTURE", projectileWeaponSpec.getHardpointGunSpriteName());
            textureLoader.queueImageOptional("TEXTURE", projectileWeaponSpec.getTurretGunSpriteName());

            queueWeaponAnimation(weaponSpec);
        }
    }

    /**
     * ADDED METHOD
     */
    private static void queueWeaponAnimation(WeaponSpecAPI weaponSpec) {
        TextureLoader textureLoader = TextureRepository.TextureRepository_getTextureLoader();

        String turretTex = weaponSpec.getTurretSpriteName().replaceAll("00\\.png", "");
        String hardpointText = weaponSpec.getHardpointSpriteName().replaceAll("00\\.png", "");

        for (int i = 1; i < ((BaseWeaponSpec) weaponSpec).getNumFrames(); ++i) {
            textureLoader.queueImageOptional("TEXTURE", String.format("%s%02d.png", turretTex, i));
            textureLoader.queueImageOptional("TEXTURE", String.format("%s%02d.png", hardpointText, i));
        }
    }

    /**
     * ADDED METHOD
     */
    public static void queueProjectileSprite(Object abstractProjectileSpec) {
        TextureLoader textureLoader = TextureRepository.TextureRepository_getTextureLoader();

        if (abstractProjectileSpec instanceof MissileSpecAPI missileSpec) {
            textureLoader.queueImageOptional("TEXTURE", missileSpec.getHullSpec().getSpriteName());
            textureLoader.queueImageOptional("TEXTURE", missileSpec.getGlowSpriteName());
        } else if (abstractProjectileSpec instanceof ProjectileSpecAPI projectileSpec) {
            textureLoader.queueImageOptional("TEXTURE", projectileSpec.getBulletSpriteName());
            textureLoader.queueImageOptional("TEXTURE", projectileSpec.getFringeTex());
            textureLoader.queueImageOptional("TEXTURE", projectileSpec.getCoreTex());
        }
    }

    /**
     * ADDED METHOD
     */
    public static void queueShipSprite(ShipHullSpec hullSpec) {
        TextureLoader textureLoader = TextureRepository.TextureRepository_getTextureLoader();
        String texture = ((ShipHullSpecAPI) hullSpec).getSpriteName();
        textureLoader.queueImageOptional("TEXTURE", texture);
    }

    /**
     * REPLACED METHOD
     */
    private void renderProgress(float progress) {
        // Do nothing. The progress bar animation is completely
        // overriden and controlled by renderProgress().
    }

    /**
     * ADDED METHOD
     */
    private void renderProgress() {
        float width = Global.getSettings().getScreenWidth();
        float height = Global.getSettings().getScreenHeight();

        Rendering.Rendering_begin();
        Rendering.Rendering_setupProjection(0.0F, width, 0.0F, height, 1000.0F);

        title.renderAtCenter(width / 2.0F, height / 2.0F + 48.0F + 5.0F);
        barBg.renderAtCenter(width / 2.0F, height / 2.0F);
        barAnimation.animate(bar);

        Rendering.Rendering_end();
    }

    /**
     * STUB
     */
    public enum ResourceType {
    }
}
