package com.genir.renderer.overrides.loading;

import com.fs.graphics.font.FontRepository;
import com.fs.graphics.util.Fps;
import com.fs.starfarer.ShutdownException;
import com.fs.starfarer.Version;
import com.fs.starfarer.api.Global;
import com.fs.starfarer.api.ModPlugin;
import com.fs.starfarer.api.combat.ShipHullSpecAPI;
import com.fs.starfarer.api.impl.campaign.procgen.MarkovNames;
import com.fs.starfarer.api.impl.campaign.velfield.SlipstreamManager;
import com.fs.starfarer.api.loading.*;
import com.fs.starfarer.combat.entities.ship.damage.ImpactSound;
import com.fs.starfarer.loading.specs.BaseWeaponSpec;
import com.fs.starfarer.loading.specs.ShipHullSpec;
import com.fs.starfarer.renderers.AtmosphereRenderer;
import com.fs.starfarer.renderers.ShipArrowRenderer;
import com.fs.starfarer.settings.StarfarerSettings;
import com.fs.starfarer.util.ScreenshotUtil;
import com.genir.renderer.async.AsyncException;
import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.debug.SamplerRunner;
import com.genir.renderer.debug.Watchdog;
import com.genir.renderer.overrides.GameState;
import com.genir.renderer.overrides.loading.textures.DDSIntegration;
import com.genir.renderer.overrides.loading.textures.TextureLoader;
import com.genir.renderer.overrides.loading.textures.TextureRepository;
import com.genir.renderer.overrides.render.RoilingSwarmEffect;
import com.genir.renderer.overrides.render.Sprite;
import com.genir.renderer.overrides.render.particle.BaseParticle;
import com.genir.renderer.overrides.render.particle.SmoothParticle;
import org.json.JSONException;

import java.awt.*;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

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
    private static AsyncException asyncException;
    private static ExecutorService heavyWorker;
    public static ExecutorService textureWorkers;
    public static ExecutorService scriptWorkers;
    public static ExecutorService soundWorkers;
    public static boolean renderProgress;

    private LoadingBar loadingBar;

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
    public void queueShipAndWeaponSprites_public() {
        queueShipAndWeaponSprites();
    }

    /**
     * REPLACED METHOD
     */
    public void init(Map session) throws Exception {
        try {
            initMain(session);
        } catch (Throwable t) {
            textureWorkers.shutdownNow();
            scriptWorkers.shutdownNow();
            soundWorkers.shutdownNow();

            if (t instanceof ShutdownException) {
                animateLoadingBarRegression();
            }

            throw t;
        } finally {
            // Leaving an existing sharedContext may
            // cause crashes when exiting the program.
            // Be sure to destroy it in all cases.
            loadingBar.shutdown();
        }
    }

    private void initMain(Map session) throws Exception {
        Watchdog.start();

        initStaticFields();
        initLoadingBar();

        initFileLoaders();

        // Init spec store. This triggers most of the game asset loading.
        initSpecStore(session);

        // Conclude asset loading phase.
        GameState.assetLoadingFinished = true;
        FileLoader.FileLoader_getInstance().initModLoading();

        // Mod initialization may be the longest part
        // of the game loading when using many mods.
        initMods();

        // Shutdown sound loader later than other loaders to give
        // it more time to finish work. Later shutdown is possible,
        // because mod loading does not rely on sounds being loaded
        // (hopefully).
        soundWorkers.shutdown();
        heavyWorker.shutdown();
        ExecutorFactory.awaitTermination(soundWorkers);
        ExecutorFactory.awaitTermination(heavyWorker);
        asyncException.rethrowIfSet();

//        Global.getSettings().setDevMode(true);

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

        // Initialize Fast Rendering functionality.
        final Context context = ContextManager.getThreadContext();
        BaseParticle.initStatic();
        RoilingSwarmEffect.initStatic();
        context.stallDetector.enableDetection();
        GameState.gameInitialized = true;
        FileLoader.FileLoader_getInstance().initGameplay();
        if (Objects.equals(System.getProperty("com.genir.renderer.settings.sampler"), "true")) {
            SamplerRunner.samplerRunner.start();
        }
    }

    /**
     * ADDED METHOD
     */
    public static synchronized void initStaticFields() {
        if (asyncException == null) {
            asyncException = new AsyncException();

            heavyWorker = ExecutorFactory.newExecutorSingleThread("FR-Main-Loader", asyncException);
            textureWorkers = ExecutorFactory.newExecutor(3, "FR-Texture-Loader", asyncException);
            scriptWorkers = ExecutorFactory.newExecutor(3, "FR-Script-Loader", asyncException);
            soundWorkers = ExecutorFactory.newExecutor(2, "FR-Sound-Loader", asyncException);
        }
    }

    /**
     * ADDED METHOD
     */
    private void initLoadingBar() throws IOException {
        Global.getSettings().loadTexture("graphics/ui/loading_widget.png");
        Global.getSettings().loadTexture("graphics/ui/loading_widget_glow.png");
        Global.getSettings().loadTexture("graphics/ui/starsector_title_alpha.png");

        this.barBg = new Sprite("graphics/ui/loading_widget.png");
        this.title = new Sprite("graphics/ui/starsector_title_alpha.png");
        this.bar = new Sprite("graphics/ui/loading_widget_glow.png");

        this.loadingBar = new LoadingBar(this.bar, this.title, this.barBg);
    }

    private void initFileLoaders() throws Exception {
        Future<?> heavyFuture = heavyWorker.submit(() -> {
            FileLoader.FileLoader_getInstance().initResourceLoading();
            DDSIntegration.initialize();
        });

        while (!heavyFuture.isDone()) {
            asyncException.rethrowIfSet();
            renderLoadingBarAndSleep(50);
        }

        heavyFuture.get(); // Drain exceptions.
    }

    private void initSpecStore(Map session) throws Exception {
        // init_vanilla will call 'initSpecStore',
        // which triggers most of the asset loading.
        try {
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

        Future<?> heavyFuture = ResourceLoaderState.heavyWorker.submit(() -> {
            try {
                // Initiate sound loading at the very beginning of spec store
                // initialization, to maximize parallel thread work time.
                SpecStore.loadingSoundSets(this);

                // Delegate the remaining work, except sound loading, to vanilla implementation.
                SpecStore.init_vanilla(this);

                // Most sprites were already optionally queued in
                // queueWeaponSprite, queueProjectileSprite and queueShipSprite.
                // But vanilla is the final judge on what should be loaded.
                queueShipAndWeaponSprites_public();
            } catch (IOException | JSONException e) {
                throw new RuntimeException(e);
            }

            // Wait for the asset loading, excluding sound, to finish.
            scriptWorkers.shutdown();
            textureWorkers.shutdown();
            ExecutorFactory.awaitTermination(textureWorkers);
            ExecutorFactory.awaitTermination(scriptWorkers);
        });

        while (!heavyFuture.isDone()) {
            // Animate progress bar after each completed task.
            if (renderProgress) {
                loadingBar.setProgress(LoadingBar.ProgressType.RANDOM, 0);
                renderProgress = false;
            }

            asyncException.rethrowIfSet();
            renderLoadingBarAndSleep(16);
        }

        heavyFuture.get(); // Drain exceptions.
    }

    /**
     * ADDED METHOD
     */
    private void initMods() throws Exception {
        Future<?> heavyFuture = heavyWorker.submit(() -> {
            MarkovNames.loadIfNeeded();

            ScriptStore.loadModClasses();
            List<ModPlugin> plugins = Global.getSettings().getModManager().getEnabledModPlugins();
            for (int i = 0; i < plugins.size(); i++) {
                loadingBar.setProgress(LoadingBar.ProgressType.FORWARD, (float) (i) / (float) plugins.size());

                try {
                    plugins.get(i).onApplicationLoad();
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }

            // Fill the bar after all mods are loaded.
            loadingBar.setProgress(LoadingBar.ProgressType.FORWARD, 1);
        });

        while (!heavyFuture.isDone()) {
            asyncException.rethrowIfSet();
            renderLoadingBarAndSleep(50);
        }

        heavyFuture.get(); // Drain exceptions.
    }

    /**
     * REPLACED METHOD
     */
    private void renderProgress(float progress) {
        // Do nothing. The progress bar animation is completely overriden.
    }

    /**
     * REPLACED METHOD
     */
    private void renderBg() {
        // Do nothing. The progress bar animation is completely overriden.
    }

    /**
     * ADDED METHOD
     */
    private void renderLoadingBarAndSleep(long millis) throws InterruptedException, ExecutionException {
        final Context context = ContextManager.getThreadContext();

        // Periodically queues window message processing on the main GL context,
        // keeping the window responsive during all phases of game initialization.
        // Processing occurs between GL command batches,
        // never within a glBegin/glEnd pair.
        Future<Object> messageProcessingFuture = context.exec.injectOutOfOrder(() -> {
            // Do not attempt to animate when the rendering thread is busy with
            // uploading textures, as this leads to additional buffer swaps and
            // increased latency.
            if (context.exec.isServerThreadIdle()) {
                loadingBar.render(context);
                org.lwjgl.opengl.Display.update(true);
            }
            return org.lwjgl.opengl.Display.isCloseRequested();
        });

        Thread.sleep(millis);

        boolean closeRequested = (Boolean) messageProcessingFuture.get();
        if (closeRequested) {
            throw new ShutdownException();
        }
    }

    /**
     * ADDED METHOD
     */
    private void animateLoadingBarRegression() {
        final Context context = ContextManager.getThreadContext();
        Future<?> regressionFuture = context.exec.injectOutOfOrder(() -> {
            loadingBar.animateRegression();
            return null;
        });

        try {
            regressionFuture.get();
        } catch (Exception ignored) {
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
     * STUB
     */
    public enum ResourceType {
    }
}
