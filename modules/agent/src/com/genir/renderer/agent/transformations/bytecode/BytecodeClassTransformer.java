package com.genir.renderer.agent.transformations.bytecode;

import com.genir.renderer.agent.transformations.DeferredThrowable;
import com.genir.renderer.agent.transformations.symbols.CommonTransformers;
import com.genir.renderer.agent.transformations.symbols.Symbols;

import java.lang.instrument.ClassFileTransformer;
import java.security.ProtectionDomain;

public class BytecodeClassTransformer implements ClassFileTransformer {
    private final Symbols symbols;
    private final CommonTransformers commonTransformers;

    public BytecodeClassTransformer(Symbols symbols, CommonTransformers common) {
        this.symbols = symbols;
        this.commonTransformers = common;
    }

    @Override
    public byte[] transform(
            ClassLoader loader,
            String className,
            Class<?> classBeingRedefined,
            ProtectionDomain protectionDomain,
            byte[] classfileBuffer
    ) {
        DeferredThrowable.injectDeferredThrowableIntoRenderer();

        // No class to transform.
        if (className == null) {
            return null;
        }

        // Do not transform bootstrap and platform classes.
        if (loader == null || loader == ClassLoader.getPlatformClassLoader()) {
            return null;
        }
        try {
            BytecodeTransformer transformer = applyTransform(className, classfileBuffer);
            if (transformer != null) {
                return transformer.targetBytes;
            }

            BytecodeTransformer debugTransformer = applyTransformDebug(className, classfileBuffer);
            if (debugTransformer != null) {
                return debugTransformer.targetBytes;
            }

            return null;
        } catch (Throwable t) {
            DeferredThrowable.set(t);
            throw t;
        }
    }

    private BytecodeTransformer applyTransform(String className, byte[] targetBytes) {
        BytecodeTransformer transformer = makeBytecodeTransformer(targetBytes);

        if (className.equals("com/fs/graphics/TextureLoader")) {
            transformer.renameMethod(symbols.TextureLoader_loadTextureSynchronous, "loadTexture_vanilla");
            transformer.mergeClass("com/genir/renderer/overrides/loading/textures/TextureLoader");

        } else if (className.equals("com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect")) {
            transformer.removeMethod("getNumActiveMembers", "()I");
            transformer.removeMethod("render", "(Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/api/combat/ViewportAPI;)V");
            transformer.mergeClass("com/genir/renderer/overrides/render/RoilingSwarmEffect");

        } else if (className.equals(symbols.Expression.name)) {
            transformer.removeMethod("getCommandClass", "(Ljava/lang/String;)Ljava/lang/String;");
            transformer.mergeClass("com/genir/renderer/overrides/Expression");

        } else if (className.equals(symbols.ProgressBar.name)) {
            transformer.removeMethod(symbols.ProgressBar_renderWithDescription);
            transformer.mergeClass("com/genir/renderer/overrides/ProgressBar");

        } else if (className.equals(symbols.DeploymentManager.name)) {
            transformer.renameMethod(symbols.DeploymentManager_pickReinforcement, "pickReinforcement_vanilla");
            transformer.mergeClass("com/genir/renderer/overrides/DeploymentManager");

        } else if (className.equals(symbols.Bounds.name)) {
            transformer.mergeClass("com/genir/renderer/overrides/Bounds");

        } else if (className.equals("com/fs/starfarer/util/Tesselator")) {
            transformer.removeMethod(symbols.Tesselator_renderAsPolygon);
            transformer.mergeClass("com/genir/renderer/overrides/Tesselator");

        } else if (className.equals(symbols.SoundStore.name)) {
            transformer.mergeClass("com/genir/renderer/overrides/loading/SoundStore");

        } else if (className.equals("com/fs/starfarer/loading/LoadingUtils")) {
            transformer.renameMethod(symbols.LoadingUtils_filesWithExtensionInDirectoryAbsolute, "filesWithExtensionInDirectoryAbsolute_vanilla");
            transformer.renameMethod(symbols.LoadingUtils_filesWithExtensionInDirectory, "filesWithExtensionInDirectory_vanilla");
            transformer.renameMethod(symbols.LoadingUtils_readStreamAsString, "readStreamAsString_vanilla");
            transformer.removeMethod(symbols.LoadingUtils_readPathAsString);
            transformer.removeMethod(symbols.LoadingUtils_getMergedSpreadsheetDataForMod);
            transformer.mergeClass("com/genir/renderer/overrides/loading/LoadingUtils");

        } else if (className.equals(symbols.FileLoader.name)) {
            transformer.removeMethod(symbols.FileLoader_loadInputStreamWithMods);
            transformer.renameMethod(symbols.FileLoader_loadInputStream, "FileLoader_loadInputStream_vanilla");
            transformer.renameMethod(symbols.FileLoader_loadInputStreams, "FileLoader_loadInputStreams_vanilla");
            transformer.mergeClass("com/genir/renderer/overrides/loading/FileLoader");

        } else if (className.equals("com/fs/starfarer/loading/scripts/ScriptStore")) {
            transformer.removeMethod(symbols.ScriptStore_queueScript);
            transformer.removeMethod(symbols.ScriptStore_startScriptLoadingThread);
            transformer.mergeClass("com/genir/renderer/overrides/loading/ScriptStore");

        } else if (className.equals("com/fs/starfarer/combat/CombatEngine")) {
            transformer.removeMethod("render", "(Z)V");
            transformer.mergeClass("com/genir/renderer/overrides/CombatEngine");

        } else if (className.equals(symbols.HullSpecStore.name)) {
            transformer.removeMethod(symbols.HullSpecStore_addHullSpec);
            transformer.removeMethod(symbols.HullSpecStore_removeHullSpec);
            transformer.mergeClass("com/genir/renderer/overrides/loading/HullSpecStore");

        } else if (className.equals(symbols.WeaponSpecStore.name)) {
            transformer.removeMethod(symbols.WeaponSpecStore_addWeaponSpec);
            transformer.removeMethod(symbols.WeaponSpecStore_removeWeaponSpec);
            transformer.removeMethod(symbols.WeaponSpecStore_addProjectileSpec);
            transformer.mergeClass("com/genir/renderer/overrides/loading/WeaponSpecStore");

        } else if (className.equals("com/fs/starfarer/loading/SpecStore")) {
            transformer.renameMethod(symbols.SpecStore_init, "init_vanilla");
            transformer.renameMethod(symbols.SpecStore_loadingSoundSets, "loadingSoundSets_vanilla");
            transformer.mergeClass("com/genir/renderer/overrides/loading/SpecStore");

        } else if (className.equals("com/fs/starfarer/loading/ResourceLoaderState")) {
            transformer.renameMethod("init", "init_vanilla", "(Ljava/util/Map;)V");
            transformer.removeMethod("queueResource", "(L" + symbols.ResourceLoaderState$ResourceType.name + ";Ljava/lang/String;I)V");
            transformer.removeMethod("renderProgress", "(F)V");
            transformer.removeMethod("renderBg", "()V");
            transformer.mergeClass("com/genir/renderer/overrides/loading/ResourceLoaderState");

        } else if (className.equals("com/fs/starfarer/combat/CombatState")) {
            transformer.renameMethod("reloadAssets", "reloadAssets_vanilla", "()V");
            transformer.mergeClass("com/genir/renderer/overrides/CombatState");

        } else if (className.equals("com/fs/graphics/Sprite")) {
            transformer.removeMethod("render", "(FF)V");
            transformer.removeMethod("renderNoBind", "(FF)V");
            transformer.removeMethod("renderRegion", "(FFFFFFZ)V");
            transformer.mergeClass("com/genir/renderer/overrides/render/Sprite");

        } else if (className.equals("com/fs/graphics/particle/BaseParticle")) {
            transformer.mergeClass("com/genir/renderer/overrides/render/particle/BaseParticle");

        } else if (className.equals("com/fs/graphics/particle/SmoothParticle")) {
            transformer.removeMethod("render", "()V");
            transformer.removeMethod("preBatch", "()V");
            transformer.removeMethod("postBatch", "()V");
            transformer.mergeClass("com/genir/renderer/overrides/render/particle/SmoothParticle");

        } else if (className.equals("com/fs/starfarer/combat/entities/ContrailParticle")) {
            transformer.removeMethod("preBatch", "()V");
            transformer.mergeClass("com/genir/renderer/overrides/render/particle/ContrailParticle");

        } else if (className.equals("com/fs/graphics/particle/NebulaParticle")) {
            transformer.removeMethod("render", "()V");
            transformer.removeMethod("preBatch", "()V");
            transformer.removeMethod("postBatch", "()V");
            transformer.mergeClass("com/genir/renderer/overrides/render/particle/NebulaParticle");

        } else if (className.equals("com/fs/starfarer/renderers/fx/DetailedSmokeParticle")) {
            transformer.removeMethod("render", "()V");
            transformer.removeMethod("preBatch", "()V");
            transformer.removeMethod("postBatch", "()V");
            transformer.mergeClass("com/genir/renderer/overrides/render/particle/DetailedSmokeParticle");

        } else if (className.equals("com/fs/graphics/particle/GenericTextureParticle")) {
            transformer.removeMethod("render", "()V");
            transformer.removeMethod("preBatch", "()V");
            transformer.removeMethod("postBatch", "()V");
            transformer.mergeClass("com/genir/renderer/overrides/render/particle/GenericTextureParticle");

        } else if (className.equals("com/fs/graphics/particle/NegativeParticle")) {
            transformer.removeMethod("render", "()V");
            transformer.removeMethod("preBatch", "()V");
            transformer.removeMethod("postBatch", "()V");
            transformer.mergeClass("com/genir/renderer/overrides/render/particle/NegativeParticle");

        } else if (className.equals("com/fs/graphics/particle/DynamicParticleGroup")) {
            transformer.removeMethod("size", "()I");
            transformer.removeMethod("add", "(Lcom/fs/graphics/particle/BaseParticle;)V");
            transformer.removeMethod("render", "(FF)V");
            transformer.removeMethod("advance", "(F)V");
            transformer.removeMethod("isEmpty", "()Z");
            transformer.removeMethod("getParticles", "()Ljava/util/List;");
            transformer.mergeClass("com/genir/renderer/overrides/render/particle/DynamicParticleGroup");

        } else if (className.equals("com/fs/graphics/util/GLListManager")) {
            transformer.removeMethod("nextFrame", "()V");
            transformer.removeMethod("invalidateList", "(Lcom/fs/graphics/util/GLListManager$GLListToken;)V");
            transformer.removeMethod("callList", "(Lcom/fs/graphics/util/GLListManager$GLListToken;)Z");
            transformer.removeMethod("beginList", "()Lcom/fs/graphics/util/GLListManager$GLListToken;");
            transformer.removeMethod("endList", "()V");
            transformer.mergeClass("com/genir/renderer/overrides/render/GLListManager");

        } else if (className.equals(symbols.FontRenderer.name)) {
            transformer.renameMethod(symbols.FontRenderer_renderGlyphs, "renderGlyphs_vanilla");
            transformer.mergeClass("com/genir/renderer/overrides/render/font/FontRenderer");

        } else if (className.equals("com/fs/starfarer/title/TitleScreenState")) {
            transformer.renameMethod("checkNewHighScore", "checkNewHighScore_vanilla", "()V");
            transformer.mergeClass("com/genir/renderer/overrides/TitleScreenState");

        } else if (className.equals(symbols.StarfarerSettings$SettingsAPIImpl.name)) {
            transformer.removeMethod("getAllShipHullSpecs", "()Ljava/util/List;");
            transformer.removeMethod("getAllWeaponSpecs", "()Ljava/util/List;");
            transformer.removeMethod("getActuallyAllWeaponSpecs", "()Ljava/util/List;");
            transformer.mergeClass("com/genir/renderer/overrides/StarfarerSettings$SettingsAPIImpl");

        } else {
            return null;
        }

        return transformer;
    }

    private BytecodeTransformer applyTransformDebug(String className, byte[] donorBytes) {
        BytecodeTransformer transformer;

        switch (className) {
            case "com/genir/renderer/overrides/render/Sprite":
                transformer = makeBytecodeTransformer("com/fs/graphics/Sprite");
                transformer.removeMethod("render", "(FF)V");
                transformer.removeMethod("renderNoBind", "(FF)V");
                transformer.removeMethod("renderRegion", "(FFFFFFZ)V");
                break;

            case "com/genir/renderer/overrides/render/particle/SmoothParticle":
                transformer = makeBytecodeTransformer("com/fs/graphics/particle/SmoothParticle");
                transformer.removeMethod("render", "()V");
                transformer.removeMethod("preBatch", "()V");
                transformer.removeMethod("postBatch", "()V");
                break;

            case "com/genir/renderer/overrides/render/particle/NebulaParticle":
                transformer = makeBytecodeTransformer("com/fs/graphics/particle/NebulaParticle");
                transformer.removeMethod("render", "()V");
                transformer.removeMethod("preBatch", "()V");
                transformer.removeMethod("postBatch", "()V");
                break;

            case "com/genir/renderer/overrides/render/particle/DetailedSmokeParticle":
                transformer = makeBytecodeTransformer("com/fs/starfarer/renderers/fx/DetailedSmokeParticle");
                transformer.removeMethod("render", "()V");
                transformer.removeMethod("preBatch", "()V");
                transformer.removeMethod("postBatch", "()V");
                break;

            case "com/genir/renderer/overrides/render/particle/ContrailParticle":
                transformer = makeBytecodeTransformer("com/fs/starfarer/combat/entities/ContrailParticle");
                transformer.removeMethod("preBatch", "()V");
                break;

            case "com/genir/renderer/overrides/render/particle/DynamicParticleGroup":
                transformer = makeBytecodeTransformer("com/fs/graphics/particle/DynamicParticleGroup");
                transformer.removeMethod("size", "()I");
                transformer.removeMethod("add", "(Lcom/fs/graphics/particle/BaseParticle;)V");
                transformer.removeMethod("render", "(FF)V");
                transformer.removeMethod("advance", "(F)V");
                transformer.removeMethod("isEmpty", "()Z");
                transformer.removeMethod("getParticles", "()Ljava/util/List;");
                break;

            case "com/genir/renderer/overrides/render/particle/BaseParticle":
                transformer = makeBytecodeTransformer("com/fs/graphics/particle/BaseParticle");
                break;

            case "com/genir/renderer/overrides/render/RoilingSwarmEffect":
                transformer = makeBytecodeTransformer("com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect");
                transformer.removeMethod("getNumActiveMembers", "()I");
                transformer.removeMethod("render", "(Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/api/combat/ViewportAPI;)V");
                break;

            case "com/genir/renderer/overrides/loading/ResourceLoaderState":
                transformer = makeBytecodeTransformer("com/fs/starfarer/loading/ResourceLoaderState");
                transformer.renameMethod("init", "init_vanilla", "(Ljava/util/Map;)V");
                transformer.removeMethod("queueResource", "(Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V");
                transformer.removeMethod("renderProgress", "(F)V");
                break;

            case "com/genir/renderer/overrides/loading/textures/TextureLoader":
                transformer = makeBytecodeTransformer("com/fs/graphics/TextureLoader");
                transformer.renameMethod(symbols.TextureLoader_loadTextureSynchronous, "loadTexture_vanilla");
                break;

            case "com/genir/renderer/overrides/render/font/FontRenderer":
                transformer = makeBytecodeTransformer(symbols.FontRenderer.name);
                transformer.renameMethod("Õ00000", "renderGlyphs_vanilla", "(Z)V");
                break;

            default:
                return null;
        }

        transformer.mergeClass(className, donorBytes);

        return transformer;
    }

    private BytecodeTransformer makeBytecodeTransformer(String targetName) {
        return new BytecodeTransformer(commonTransformers, targetName);
    }

    private BytecodeTransformer makeBytecodeTransformer(byte[] targetBytes) {
        return new BytecodeTransformer(commonTransformers, targetBytes);
    }
}
