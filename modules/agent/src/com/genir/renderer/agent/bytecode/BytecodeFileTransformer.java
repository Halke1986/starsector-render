package com.genir.renderer.agent.bytecode;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;

import java.lang.instrument.ClassFileTransformer;
import java.security.ProtectionDomain;

import static java.util.Map.entry;

public class BytecodeFileTransformer implements ClassFileTransformer {
    private static Throwable deferedThrowable = null;

    @Override
    public byte[] transform(
            ClassLoader loader,
            String className,
            Class<?> classBeingRedefined,
            ProtectionDomain protectionDomain,
            byte[] classfileBuffer
    ) {
        injectThrowableIntoRenderer();

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
            if (deferedThrowable == null) {
                deferedThrowable = t;
                injectThrowableIntoRenderer();
            }

            throw t;
        }
    }

    /**
     * Use the executor exception handling to crash the application
     * in case of bytecode transformation failure.
     */
    private void injectThrowableIntoRenderer() {
        if (deferedThrowable == null) {
            return;
        }

        // Handle cases when the transformation failed
        // before a rendering thread was started.
        final Context context = ContextManager.getThreadContext();
        if (context == null) {
            return;
        }

        final Throwable injection = deferedThrowable;
        context.exec.execute((ctx, args, offset) -> {
            throw new RuntimeException(injection);
        });

        deferedThrowable = null;
    }

    private BytecodeTransformer applyTransform(String className, byte[] targetBytes) {
        BytecodeTransformer transformer = new BytecodeTransformer(targetBytes);

        switch (className) {
            case "com/fs/graphics/TextureLoader":
                transformer.renameMethod("o00000", "loadTexture_vanilla",
                        "(Lcom/fs/graphics/Object;Ljava/lang/String;IIIIZ)Lcom/fs/graphics/Object;");
                transformer.mergeClass("com/genir/renderer/overrides/loading/textures/TextureLoader");
                return transformer;
            case "com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect":
                transformer.removeMethod("getNumActiveMembers", "()I");
                transformer.removeMethod("render", "(Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/api/combat/ViewportAPI;)V");
                transformer.mergeClass("com/genir/renderer/overrides/render/RoilingSwarmEffect");
                return transformer;
            case "com/fs/starfarer/campaign/rules/oOOO":
                transformer.removeMethod("getCommandClass", "(Ljava/lang/String;)Ljava/lang/String;");
                transformer.mergeClass("com/genir/renderer/overrides/Expression");
                return transformer;
            case "com/fs/starfarer/campaign/save/B":
                transformer.removeMethod("o00000", "(Ljava/lang/String;F)V");
                transformer.mergeClass("com/genir/renderer/overrides/ProgressBar");
                return transformer;
            case "com/fs/starfarer/combat/ai/admiral/G":
                transformer.renameMethod("o00000", "pickReinforcement_vanilla",
                        "(Lcom/fs/starfarer/combat/ai/admiral/G$o;FLjava/util/List;Ljava/util/List;Z)Lcom/fs/starfarer/campaign/fleet/FleetMember;");
                transformer.mergeClass("com/genir/renderer/overrides/DeploymentManager");
                return transformer;
            case "com/fs/starfarer/combat/E/o0OO":
                transformer.mergeClass("com/genir/renderer/overrides/Bounds");
                return transformer;
            case "com/fs/starfarer/util/Tesselator":
                transformer.removeMethod("o00000", "(Lcom/fs/starfarer/combat/E/o0OO;FFF)V");
                transformer.mergeClass("com/genir/renderer/overrides/Tesselator");
                return transformer;
            case "sound/C":
                transformer.mergeClass("com/genir/renderer/overrides/loading/SoundStore");
                return transformer;
            case "com/fs/starfarer/loading/LoadingUtils":
                transformer.renameMethod("Õ00000", "filesWithExtensionInDirectoryAbsolute_vanilla",
                        "(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;");
                transformer.renameMethod("super", "filesWithExtensionInDirectory_vanilla",
                        "(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;");
                transformer.renameMethod("super", "readStreamAsString_vanilla",
                        "(Ljava/io/InputStream;)Ljava/lang/String;");
                transformer.mergeClass("com/genir/renderer/overrides/loading/LoadingUtils");
                return transformer;
            case "com/fs/util/C":
                transformer.removeMethod("Ô00000", "(Ljava/lang/String;)Ljava/io/InputStream;");
                transformer.renameMethod("Ó00000", "FileLoader_loadInputStream_vanilla",
                        "(Ljava/lang/String;Z)Ljava/io/InputStream;");
                transformer.renameMethod("new", "FileLoader_loadInputStreams_vanilla",
                        "(Ljava/lang/String;)Ljava/util/List;");
                transformer.mergeClass("com/genir/renderer/overrides/loading/FileLoader");
                return transformer;
            case "com/fs/starfarer/loading/scripts/ScriptStore":
                transformer.removeMethod("Object", "(Ljava/lang/String;)V"); // ScriptLoader_queueScript
                transformer.removeMethod("int", "()V"); // ScriptLoader_startScriptLoadingThread
                transformer.mergeClass("com/genir/renderer/overrides/loading/ScriptStore");
                return transformer;
            case "com/fs/starfarer/combat/CombatEngine":
                transformer.removeMethod("render", "(Z)V");
                transformer.mergeClass("com/genir/renderer/overrides/CombatEngine");
                return transformer;
            case "com/fs/starfarer/loading/oO0O":
                transformer.removeMethod("super", "(Ljava/lang/String;Lcom/fs/starfarer/loading/specs/g;)V");
                transformer.mergeClass("com/genir/renderer/overrides/loading/HullSpecStore");
                return transformer;
            case "com/fs/starfarer/loading/Q":
                transformer.removeMethod("super", "(Ljava/lang/String;Lcom/fs/starfarer/loading/specs/BaseWeaponSpec;)V"); // WeaponSpecStore_addWeaponSpec
                transformer.removeMethod("super", "(Ljava/lang/String;Ljava/lang/Object;)V"); // WeaponSpecStore_addProjectileSpec
                transformer.mergeClass("com/genir/renderer/overrides/loading/WeaponSpecStore");
                return transformer;
            case "com/fs/starfarer/loading/SpecStore":
                transformer.renameMethod("ÓO0000", "init_vanilla", "(Lcom/fs/starfarer/loading/ResourceLoaderState;)V");
                transformer.renameMethod("ÖO0000", "loadingSoundSets_vanilla", "(Lcom/fs/starfarer/loading/ResourceLoaderState;)V");
                transformer.mergeClass("com/genir/renderer/overrides/loading/SpecStore");
                return transformer;
            case "com/fs/starfarer/loading/ResourceLoaderState":
                transformer.renameMethod("init", "init_vanilla", "(Ljava/util/Map;)V");
                transformer.removeMethod("queueResource", "(Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V");
                transformer.removeMethod("renderProgress", "(F)V");
                transformer.mergeClass("com/genir/renderer/overrides/loading/ResourceLoaderState");
                return transformer;
            case "com/fs/starfarer/combat/CombatState":
                transformer.renameMethod("reloadAssets", "reloadAssets_vanilla", "()V");
                transformer.mergeClass("com/genir/renderer/overrides/CombatState");
                return transformer;
            case "com/fs/graphics/Sprite":
                transformer.removeMethod("render", "(FF)V");
                transformer.removeMethod("renderNoBind", "(FF)V");
                transformer.mergeClass("com/genir/renderer/overrides/render/Sprite");
                return transformer;
            case "com/fs/graphics/particle/BaseParticle":
                transformer.mergeClass("com/genir/renderer/overrides/render/particle/BaseParticle");
                return transformer;
            case "com/fs/graphics/particle/SmoothParticle":
                transformer.removeMethod("render", "()V");
                transformer.removeMethod("preBatch", "()V");
                transformer.removeMethod("postBatch", "()V");
                transformer.mergeClass("com/genir/renderer/overrides/render/particle/SmoothParticle");
                return transformer;
            case "com/fs/starfarer/combat/entities/ContrailParticle":
                transformer.removeMethod("preBatch", "()V");
                transformer.mergeClass("com/genir/renderer/overrides/render/particle/ContrailParticle");
                return transformer;
            case "com/fs/graphics/particle/NebulaParticle":
                transformer.removeMethod("render", "()V");
                transformer.removeMethod("preBatch", "()V");
                transformer.removeMethod("postBatch", "()V");
                transformer.mergeClass("com/genir/renderer/overrides/render/particle/NebulaParticle");
                return transformer;
            case "com/fs/starfarer/renderers/fx/DetailedSmokeParticle":
                transformer.removeMethod("render", "()V");
                transformer.removeMethod("preBatch", "()V");
                transformer.removeMethod("postBatch", "()V");
                transformer.mergeClass("com/genir/renderer/overrides/render/particle/DetailedSmokeParticle");
                return transformer;
            case "com/fs/graphics/particle/GenericTextureParticle":
                transformer.removeMethod("render", "()V");
                transformer.removeMethod("preBatch", "()V");
                transformer.removeMethod("postBatch", "()V");
                transformer.mergeClass("com/genir/renderer/overrides/render/particle/GenericTextureParticle");
                return transformer;
            case "com/fs/graphics/particle/DynamicParticleGroup":
                transformer.removeMethod("size", "()I");
                transformer.removeMethod("add", "(Lcom/fs/graphics/particle/BaseParticle;)V");
                transformer.removeMethod("render", "(FF)V");
                transformer.removeMethod("advance", "(F)V");
                transformer.removeMethod("isEmpty", "()Z");
                transformer.removeMethod("getParticles", "()Ljava/util/List;");
                transformer.mergeClass("com/genir/renderer/overrides/render/particle/DynamicParticleGroup");
                return transformer;
            case "com/fs/starfarer/combat/OOOo":
                transformer.removeMethod("o00000", "(Lcom/fs/graphics/particle/DynamicParticleGroup;)V"); // StarField_removeParticles
                transformer.mergeClass("com/genir/renderer/overrides/StarField");
                return transformer;
            default:
                return null;
        }
    }

    private BytecodeTransformer applyTransformDebug(String className, byte[] donorBytes) {
        BytecodeTransformer transformer;

        switch (className) {
            case "com/genir/renderer/overrides/render/Sprite":
                transformer = new BytecodeTransformer("com/fs/graphics/Sprite");
                transformer.removeMethod("render", "(FF)V");
                transformer.removeMethod("renderNoBind", "(FF)V");
                transformer.mergeClass(className, donorBytes);
                return transformer;
            case "com/genir/renderer/overrides/render/particle/SmoothParticle":
                transformer = new BytecodeTransformer("com/fs/graphics/particle/SmoothParticle");
                transformer.removeMethod("render", "()V");
                transformer.removeMethod("preBatch", "()V");
                transformer.removeMethod("postBatch", "()V");
                transformer.mergeClass(className, donorBytes);
                return transformer;
            case "com/genir/renderer/overrides/render/particle/NebulaParticle":
                transformer = new BytecodeTransformer("com/fs/graphics/particle/NebulaParticle");
                transformer.removeMethod("render", "()V");
                transformer.removeMethod("preBatch", "()V");
                transformer.removeMethod("postBatch", "()V");
                transformer.mergeClass(className, donorBytes);
                return transformer;
            case "com/genir/renderer/overrides/render/particle/DetailedSmokeParticle":
                transformer = new BytecodeTransformer("com/fs/starfarer/renderers/fx/DetailedSmokeParticle");
                transformer.removeMethod("render", "()V");
                transformer.removeMethod("preBatch", "()V");
                transformer.removeMethod("postBatch", "()V");
                transformer.mergeClass(className, donorBytes);
                return transformer;
            case "com/genir/renderer/overrides/render/particle/ContrailParticle":
                transformer = new BytecodeTransformer("com/fs/starfarer/combat/entities/ContrailParticle");
                transformer.removeMethod("preBatch", "()V");
                transformer.mergeClass(className, donorBytes);
                return transformer;
            case "com/genir/renderer/overrides/render/particle/DynamicParticleGroup":
                transformer = new BytecodeTransformer("com/fs/graphics/particle/DynamicParticleGroup");
                transformer.removeMethod("size", "()I");
                transformer.removeMethod("add", "(Lcom/fs/graphics/particle/BaseParticle;)V");
                transformer.removeMethod("render", "(FF)V");
                transformer.removeMethod("advance", "(F)V");
                transformer.removeMethod("isEmpty", "()Z");
                transformer.removeMethod("getParticles", "()Ljava/util/List;");
                transformer.mergeClass(className, donorBytes);
                return transformer;
            case "com/genir/renderer/overrides/render/particle/BaseParticle":
                transformer = new BytecodeTransformer("com/fs/graphics/particle/BaseParticle");
                transformer.mergeClass(className, donorBytes);
                return transformer;

            default:
                return null;
        }
    }
}
