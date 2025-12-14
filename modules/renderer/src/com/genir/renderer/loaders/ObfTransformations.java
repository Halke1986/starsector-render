package com.genir.renderer.loaders;

import java.util.Arrays;
import java.util.List;

import static com.genir.renderer.loaders.ClassConstantTransformer.newTransform;

public class ObfTransformations {
    public static List<ClassConstantTransformer.Transform> transformations = Arrays.asList(
            // Classes
            newTransform("proxy/com/fs/graphics/particle/DynamicParticleGroup", "com/fs/graphics/particle/DynamicParticleGroup"),
            newTransform("proxy/com/fs/graphics/LayeredRenderable", "com/fs/graphics/LayeredRenderable"),
            newTransform("proxy/com/fs/graphics/Sprite", "com/fs/graphics/Sprite"),
            newTransform("proxy/com/fs/starfarer/combat/entities/CustomCombatEntity", "com/fs/starfarer/combat/entities/CustomCombatEntity"),
            newTransform("proxy/com/fs/starfarer/combat/CombatViewport", "com/fs/starfarer/combat/CombatViewport"),
            newTransform("proxy/com/fs/starfarer/loading/scripts/ScriptStore", "com/fs/starfarer/loading/scripts/ScriptStore"),
            newTransform("proxy/com/fs/starfarer/loading/specs/BaseWeaponSpec", "com/fs/starfarer/loading/specs/BaseWeaponSpec"),
            newTransform("proxy/com/fs/starfarer/renderers/damage/DebrisParticleSystem", "com/fs/starfarer/renderers/damage/DebrisParticleSystem"),
            newTransform("proxy/com/fs/starfarer/renderers/damage/ExplosionParticleSystem", "com/fs/starfarer/renderers/damage/ExplosionParticleSystem"),
            newTransform("proxy/com/fs/starfarer/settings/StarfarerSettings", "com/fs/starfarer/settings/StarfarerSettings"),
            newTransform("proxy/com/fs/util/container/repo/ObjectRepository", "com/fs/util/container/repo/ObjectRepository"),
            newTransform("proxy/sound/Sound", "sound/Sound"),
            newTransform("proxy/com/fs/starfarer/loading/ResourceLoaderState", "com/fs/starfarer/loading/ResourceLoaderState"),
            newTransform("proxy/com/fs/starfarer/loading/SpecStore", "com/fs/starfarer/loading/SpecStore"),
            newTransform("proxy/com/fs/util/container/Pair", "com/fs/util/container/Pair"),
            newTransform("proxy/com/fs/starfarer/campaign/save/CampaignGameManager", "com/fs/starfarer/campaign/save/CampaignGameManager"),
            newTransform("proxy/com/fs/starfarer/campaign/CampaignEngine", "com/fs/starfarer/campaign/CampaignEngine"),
            newTransform("proxy/com/fs/starfarer/campaign/CampaignEngine$CampaignUI", "com/fs/starfarer/campaign/CampaignEngine$o"),

            // Obfuscated classes
            newTransform("proxy/com/fs/graphics/FileRepository", "com/fs/graphics/L"),
            newTransform("proxy/com/fs/graphics/TextureRepository", "com/fs/graphics/oOoO"),
            newTransform("proxy/com/fs/graphics/ImageTransformer", "com/fs/graphics/I"),
            newTransform("proxy/com/fs/graphics/AlphaAdder", "com/fs/graphics/do"),
            newTransform("proxy/com/fs/graphics/font/FontRepository", "com/fs/graphics/A/D"),
            newTransform("proxy/com/fs/starfarer/loading/scripts/SecureClassLoader", "com/fs/starfarer/loading/scripts/B"),
            newTransform("proxy/com/fs/starfarer/loading/JavaSourceFinder", "com/fs/starfarer/loading/Objectsuper"),
            newTransform("proxy/com/fs/starfarer/loading/specs/ShipHullSpec", "com/fs/starfarer/loading/specs/g"),
            newTransform("proxy/com/fs/util/ResourceLoader$ResourceLocationType", "com/fs/util/C$o"),
            newTransform("proxy/com/fs/util/ResourceLoader$ResourceLocation", "com/fs/util/C$Oo"),
            newTransform("proxy/com/fs/util/ResourceLoader", "com/fs/util/C"),
            newTransform("proxy/com/fs/starfarer/renderers/FloatingTextManager", "com/fs/starfarer/renderers/Q"),
            newTransform("proxy/com/fs/starfarer/campaign/save/ProgressBar", "com/fs/starfarer/campaign/save/B"),

            // Obfuscated methods
            newTransform("FileRepository_loadImage", "o00000"),
            newTransform("FileRepository_loadSound", "Ô00000"),
            newTransform("TextureRepository_defineTexture", "super"),
            newTransform("TextureRepository_setImageTransformer", "super"),
            newTransform("FontRepository_defineFont", "super"),
            newTransform("StarfarerSettings_getFloatValue", "ö00000"),
            newTransform("ScriptStore_getSecureClassLoader", "Object"),
            newTransform("ScriptStore_getScriptList", "Õ00000"),
            newTransform("ScriptStore_getPluginSet", "Ò00000"),
            newTransform("SpecStore_init", "ÓO0000"),
            newTransform("ResourceLocation_type", "super"),
            newTransform("ResourceLocation_path", "Ó00000"),
            newTransform("ResourceLoader_locationFilter", "String"),
            newTransform("ResourceLoader_withoutMods", "super"),
            newTransform("ResourceLoader_getInstance", "Ó00000"),
            newTransform("ResourceLoader_getResourceList", "Ô00000"),
            newTransform("ResourceLocation_isMod", "String"),
            newTransform("FileUtils_loadInputStreams", "new"),
            newTransform("FileUtils_loadInputStream", "Ó00000"),
            newTransform("FloatingTextManager_render", "super"),
            newTransform("ProgressBar_setDescription", "Ò00000"),
            newTransform("ProgressBar_render", "o00000"),
            newTransform("ProgressBar_renderWithDescription", "o00000"),
            newTransform("ProgressBar_renderWithDescription", "o00000"),
            newTransform("CampaignGameManager_saveGame", "o00000"),

            // Obfuscated fields
            newTransform("ScriptStore_objectRepository", "Õ00000"),
            newTransform("ScriptStore_javaSourceClassLoader", "ø00000")
    );
}
