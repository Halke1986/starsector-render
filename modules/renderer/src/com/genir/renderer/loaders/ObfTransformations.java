package com.genir.renderer.loaders;

import java.util.Map;

import static java.util.Map.entry;

public class ObfTransformations {
    public static Map<String, String> transformations = Map.<String, String>ofEntries(
            // Classes
            entry("proxy/com/fs/graphics/particle/DynamicParticleGroup", "com/fs/graphics/particle/DynamicParticleGroup"),
            entry("proxy/com/fs/graphics/LayeredRenderable", "com/fs/graphics/LayeredRenderable"),
            entry("proxy/com/fs/graphics/Sprite", "com/fs/graphics/Sprite"),
            entry("proxy/com/fs/graphics/TextureLoader", "com/fs/graphics/TextureLoader"),
            entry("proxy/com/fs/starfarer/combat/entities/CustomCombatEntity", "com/fs/starfarer/combat/entities/CustomCombatEntity"),
            entry("proxy/com/fs/starfarer/combat/CombatViewport", "com/fs/starfarer/combat/CombatViewport"),
            entry("proxy/com/fs/starfarer/loading/scripts/ScriptStore", "com/fs/starfarer/loading/scripts/ScriptStore"),
            entry("proxy/com/fs/starfarer/loading/specs/BaseWeaponSpec", "com/fs/starfarer/loading/specs/BaseWeaponSpec"),
            entry("proxy/com/fs/starfarer/renderers/damage/DebrisParticleSystem", "com/fs/starfarer/renderers/damage/DebrisParticleSystem"),
            entry("proxy/com/fs/starfarer/renderers/damage/ExplosionParticleSystem", "com/fs/starfarer/renderers/damage/ExplosionParticleSystem"),
            entry("proxy/com/fs/starfarer/settings/StarfarerSettings", "com/fs/starfarer/settings/StarfarerSettings"),
            entry("proxy/com/fs/util/container/repo/ObjectRepository", "com/fs/util/container/repo/ObjectRepository"),
            entry("proxy/sound/Sound", "sound/Sound"),
            entry("proxy/com/fs/starfarer/loading/ResourceLoaderState", "com/fs/starfarer/loading/ResourceLoaderState"),
            entry("proxy/com/fs/starfarer/loading/SpecStore", "com/fs/starfarer/loading/SpecStore"),
            entry("proxy/com/fs/util/container/Pair", "com/fs/util/container/Pair"),
            entry("proxy/com/fs/starfarer/campaign/fleet/FleetMember", "com/fs/starfarer/campaign/fleet/FleetMember"),

            // Obfuscated classes
            entry("proxy/com/fs/graphics/FileRepository", "com/fs/graphics/L"),
            entry("proxy/com/fs/graphics/TextureRepository", "com/fs/graphics/oOoO"),
            entry("proxy/com/fs/graphics/AlphaAdder", "com/fs/graphics/do"),
            entry("proxy/com/fs/graphics/font/FontRepository", "com/fs/graphics/A/D"),
            entry("proxy/com/fs/starfarer/loading/scripts/SecureClassLoader", "com/fs/starfarer/loading/scripts/B"),
            entry("proxy/com/fs/starfarer/loading/JavaSourceFinder", "com/fs/starfarer/loading/Objectsuper"),
            entry("proxy/com/fs/starfarer/loading/specs/ShipHullSpec", "com/fs/starfarer/loading/specs/g"),
            entry("proxy/com/fs/util/ResourceLoader$ResourceLocationType", "com/fs/util/C$o"),
            entry("proxy/com/fs/util/ResourceLoader$ResourceLocation", "com/fs/util/C$Oo"),
            entry("proxy/com/fs/util/ResourceLoader", "com/fs/util/C"),
            entry("proxy/com/fs/starfarer/renderers/FloatingTextManager", "com/fs/starfarer/renderers/Q"),
            entry("proxy/com/fs/starfarer/campaign/save/ProgressBar", "com/fs/starfarer/campaign/save/B"),
            entry("proxy/com/fs/graphics/TextureHandler", "com/fs/graphics/Object"),
            entry("proxy/com/fs/graphics/TextureTransformer", "com/fs/graphics/I"),
            entry("proxy/com/fs/starfarer/combat/ai/admiral/DeploymentManager", "com/fs/starfarer/combat/ai/admiral/G"),
            entry("proxy/com/fs/starfarer/combat/ai/admiral/DeploymentManager$ReinforcementType", "com/fs/starfarer/combat/ai/admiral/G$o"),

            // Obfuscated methods
            entry("FileRepository_loadImage", "o00000"),
            entry("FileRepository_loadSound", "Ô00000"),
            entry("TextureRepository_addTexture", "super"),
            entry("FontRepository_defineFont", "super"),
            entry("StarfarerSettings_getFloatValue", "ö00000"),
            entry("ScriptStore_getSecureClassLoader", "Object"),
            entry("ScriptStore_getScriptList", "Õ00000"),
            entry("ScriptStore_getPluginSet", "Ò00000"),
            entry("SpecStore_init", "ÓO0000"),
            entry("ResourceLocation_type", "super"),
            entry("ResourceLocation_path", "Ó00000"),
            entry("ResourceLoader_locationFilter", "String"),
            entry("ResourceLoader_withoutMods", "super"),
            entry("ResourceLoader_getInstance", "Ó00000"),
            entry("ResourceLoader_getResourceList", "Ô00000"),
            entry("ResourceLocation_isMod", "String"),
            entry("FileUtils_loadInputStreams", "new"),
            entry("FileUtils_loadInputStream", "Ó00000"),
            entry("FloatingTextManager_render", "super"),
            entry("ProgressBar_setDescription", "Ò00000"),
            entry("ProgressBar_render", "o00000"),
            entry("ProgressBar_renderWithDescription", "o00000"),
            entry("TextureHandler_getTextureID", "ö00000"),
            entry("TextureHandler_setPath", "o00000"),
            entry("TextureHandler_setHeight", "Ô00000"),
            entry("TextureHandler_setWidth", "Object"),
            entry("TextureHandler_setImageHeight", "o00000"),
            entry("TextureHandler_setImageWidth", "Ò00000"),
            entry("TextureHandler_serColor1", "o00000"),
            entry("TextureHandler_serColor0", "Object"),
            entry("TextureHandler_serColor2", "Ò00000"),
            entry("TextureTransformer_apply", "o00000"),
            entry("TextureHandler_setStringID", "Ò00000"),
            entry("DeploymentManager_pickReinforcement", "o00000"),
            entry("TextureLoader_loadTexture", "o00000"),

            // Obfuscated fields
            entry("ScriptStore_objectRepository", "Õ00000"),
            entry("ScriptStore_javaSourceClassLoader", "ø00000")
    );
}
