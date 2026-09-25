package com.genir.renderer.agent.constants;

import java.util.Map;

import static java.util.Map.entry;

public class Rules {
    public static Map<String, String> scriptLoader = Map.<String, String>ofEntries(
            // Use memory-optimized Path implementation.
            entry("org/codehaus/janino/JavaSourceClassLoader", "java/lang/ClassLoader")
    );

    public static Map<String, String> xstream = Map.<String, String>ofEntries(
            // Use memory-optimized Path implementation.
            entry("com/thoughtworks/xstream/io/path/Path", "com/genir/renderer/overrides/xstream/Path")
    );

    public static Map<String, String> lwjgl = Map.<String, String>ofEntries(
            // Replace selected OpenGL calls. Replacing all calls breaks LWJGL functionality.
            entry("org/lwjgl/opengl/GL11", "com/genir/renderer/bridge/opengl/GL11"),
            entry("org/lwjgl/opengl/GL14", "com/genir/renderer/bridge/opengl/GL14")
    );

    public static Map<String, String> glDrainErrors = Map.<String, String>ofEntries(
            // Use non-blocking glGetError replacement.
            entry("glGetError", "glDrainErrors")
    );

    public static Map<String, String> opengl = Map.<String, String>ofEntries(
            // Replace all OpenGL calls.
            entry("org/lwjgl/opengl/GL11", "com/genir/renderer/bridge/opengl/GL11"),
            entry("org/lwjgl/opengl/GL13", "com/genir/renderer/bridge/opengl/GL13"),
            entry("org/lwjgl/opengl/GL14", "com/genir/renderer/bridge/opengl/GL14"),
            entry("org/lwjgl/opengl/GL15", "com/genir/renderer/bridge/opengl/GL15"),
            entry("org/lwjgl/opengl/GL20", "com/genir/renderer/bridge/opengl/GL20"),
            entry("org/lwjgl/opengl/GL30", "com/genir/renderer/bridge/opengl/GL30"),
            entry("org/lwjgl/opengl/GL31", "com/genir/renderer/bridge/opengl/GL31"),
            entry("org/lwjgl/opengl/GL32", "com/genir/renderer/bridge/opengl/GL32"),
            entry("org/lwjgl/opengl/GL33", "com/genir/renderer/bridge/opengl/GL33"),
            entry("org/lwjgl/opengl/GL40", "com/genir/renderer/bridge/opengl/GL40"),
            entry("org/lwjgl/opengl/GL41", "com/genir/renderer/bridge/opengl/GL41"),
            entry("org/lwjgl/opengl/GL42", "com/genir/renderer/bridge/opengl/GL42"),
            entry("org/lwjgl/opengl/GL43", "com/genir/renderer/bridge/opengl/GL43"),
            entry("org/lwjgl/opengl/GL44", "com/genir/renderer/bridge/opengl/GL44"),

            entry("org/lwjgl/opengl/Display", "com/genir/renderer/bridge/commands/Display"),
            entry("org/lwjgl/opengl/GLContext", "com/genir/renderer/bridge/commands/GLContext"),
            entry("org/lwjgl/opengl/GLSync", "com/genir/renderer/bridge/commands/GLSync"),
            entry("org/lwjgl/opengl/SharedDrawable", "com/genir/renderer/bridge/commands/SharedDrawable")
    );

    public static Map<String, String> obfuscation = Map.<String, String>ofEntries(
            // Classes
            entry("com/fs/graphics/TextureRepository", "com/fs/graphics/oOoO"),
            entry("com/fs/graphics/AlphaAdder", "com/fs/graphics/do"),
            entry("com/fs/graphics/font/FontRepository", "com/fs/graphics/A/D"),
            entry("com/fs/starfarer/loading/scripts/SecureClassLoader", "com/fs/starfarer/loading/scripts/B"),
            entry("com/fs/starfarer/loading/JavaSourceFinder", "com/fs/starfarer/loading/Objectsuper"),
            entry("com/fs/starfarer/loading/specs/ShipHullSpec", "com/fs/starfarer/loading/specs/g"),
            entry("com/fs/util/FileLoader$ResourceLocationType", "com/fs/util/C$o"),
            entry("com/fs/util/FileLoader$ResourceLocation", "com/fs/util/C$Oo"),
            entry("com/fs/util/FileLoader", "com/fs/util/C"),
            entry("com/fs/starfarer/renderers/FloatingTextManager", "com/fs/starfarer/renderers/Q"),
            entry("com/fs/starfarer/campaign/save/ProgressBar", "com/fs/starfarer/campaign/save/B"),
            entry("com/fs/graphics/TextureHandler", "com/fs/graphics/Object"),
            entry("com/fs/graphics/TextureTransformer", "com/fs/graphics/I"),
            entry("sound/Track", "sound/O0OO"),
            entry("sound/SoundBuffer", "sound/G"),
            entry("sound/OggLoader", "sound/O0oO"),
            entry("com/fs/graphics/util/Fps", "com/fs/graphics/util/A"),
            entry("com/fs/starfarer/renderers/AtmosphereRenderer", "com/fs/starfarer/renderers/H"),
            entry("com/fs/starfarer/util/ScreenshotUtil", "com/fs/starfarer/util/return"),
            entry("com/fs/starfarer/renderers/ShipArrowRenderer", "com/fs/starfarer/renderers/O"),
            entry("com/fs/starfarer/combat/entities/ship/damage/ImpactSound", "com/fs/starfarer/combat/entities/ship/A/I"),
            entry("com/fs/graphics/util/Rendering", "com/fs/graphics/util/B"),

            // Methods
            entry("TextureRepository_addTexture", "super"),
            entry("FontRepository_defineFont", "super"),
            entry("StarfarerSettings_getFloatValue", "ö00000"),
            entry("ScriptStore_getSecureClassLoader", "Object"),
            entry("ScriptStore_getScriptList", "Õ00000"),
            entry("ScriptStore_getPluginSet", "Ò00000"),
            entry("ScriptLoader_startScriptLoadingThread", "int"),
            entry("ScriptLoader_queueScript", "Object"),
            entry("SpecStore_init", "ÓO0000"),
            entry("SpecStore_loadingSoundSets", "ÖO0000"),
            entry("ResourceLocation_type", "super"),
            entry("ResourceLocation_path", "Ó00000"),
            entry("ResourceLocation_isMod", "String"),
            entry("FileLoader_locationFilter", "String"),
            entry("FileLoader_withoutMods", "super"),
            entry("FileLoader_getInstance", "Ó00000"),
            entry("FileLoader_getResourceList", "Ô00000"),
            entry("FileLoader_loadInputStreams", "new"),
            entry("FileLoader_loadInputStream", "Ó00000"),
            entry("FileLoader_loadInputStreamWithMods", "Ô00000"),
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
            entry("TextureHandler_setColor1", "o00000"),
            entry("TextureHandler_setColor0", "Object"),
            entry("TextureHandler_setColor2", "Ò00000"),
            entry("TextureTransformer_apply", "o00000"),
            entry("TextureHandler_setStringID", "Ò00000"),
            entry("DeploymentManager_pickReinforcement", "o00000"),
            entry("TextureLoader_loadTexture", "o00000"),
            entry("SoundStore_getInstance", "ö00000"),
            entry("SoundStore_loadWav", "Ò00000"),
            entry("SoundStore_getIsInitialized", "o00000"),
            entry("OggLoader_load", "super"),
            entry("AtmosphereRenderer_init", "super"),
            entry("ScreenshotUtil_init", "Object"),
            entry("ShipArrowRenderer_init", "o00000"),
            entry("StarfarerSettings_getBooleanValue", "class"),
            entry("ImpactSound_init", "o00000"),
            entry("LoadingUtils_filesWithExtensionInDirectory", "super"),
            entry("LoadingUtils_filesWithExtensionInDirectoryAbsolute", "Õ00000"),
            entry("LoadingUtils_readStreamAsString", "super"),
            entry("LoadingUtils_readPathAsString", "super"),
            entry("TextureRepository_getTextureLoader", "String"),
            entry("Expression_list", "ö00000"),
            entry("Expression_map", "float"),
            entry("Tesselator_renderAsPolygon", "o00000"),
            entry("HullSpecStore_addHullSpec", "super"),
            entry("WeaponSpecStore_addWeaponSpec", "super"),
            entry("WeaponSpecStore_addProjectileSpec", "super"),
            entry("Rendering_begin", "return"),
            entry("Rendering_setupProjection", "o00000"),
            entry("Rendering_end", "Õ00000"),

            // Fields
            entry("ScriptStore_objectRepository", "Õ00000"),
            entry("ScriptStore_javaSourceClassLoader", "ø00000"),
            entry("SoundStore_isOpenALInitialized2", "Ö00000"),
            entry("SoundStore_trackMap", "OO0000"),
            entry("SoundBuffer_buffer", "Object"),
            entry("SoundBuffer_freq", "Ò00000"),
            entry("SoundBuffer_channels", "o00000"),
            entry("CombatEngine_hitParticlesGroup", "OÔ0000"),
            entry("HullSpecStore_hulls", "o00000"),
            entry("WeaponSpecStore_weapons", "new"),
            entry("WeaponSpecStore_projectiles", "o00000")
    );

    public static Map<String, String> overrides = Map.<String, String>ofEntries(
            entry("com/genir/renderer/overrides/LayeredRenderer", "com/fs/graphics/LayeredRenderer"),
            entry("com/genir/renderer/overrides/loading/textures/TextureLoader", "com/fs/graphics/TextureLoader"),
            entry("com/genir/renderer/overrides/RoilingSwarmEffect", "com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect"),
            entry("com/genir/renderer/overrides/Expression", "com/fs/starfarer/campaign/rules/oOOO"),
            entry("com/genir/renderer/overrides/ProgressBar", "com/fs/starfarer/campaign/save/B"),
            entry("com/genir/renderer/overrides/DeploymentManager", "com/fs/starfarer/combat/ai/admiral/G"),
            entry("com/genir/renderer/overrides/DeploymentManager$ReinforcementType", "com/fs/starfarer/combat/ai/admiral/G$o"),
            entry("com/genir/renderer/overrides/Bounds", "com/fs/starfarer/combat/E/o0OO"),
            entry("com/genir/renderer/overrides/Bounds$Segment", "com/fs/starfarer/combat/E/o0OO$o"),
            entry("com/genir/renderer/overrides/Tesselator", "com/fs/starfarer/util/Tesselator"),
            entry("com/genir/renderer/overrides/loading/SoundStore", "sound/C"),
            entry("com/genir/renderer/overrides/loading/LoadingUtils", "com/fs/starfarer/loading/LoadingUtils"),
            entry("com/genir/renderer/overrides/loading/FileLoader", "com/fs/util/C"),
            entry("com/genir/renderer/overrides/loading/ScriptStore", "com/fs/starfarer/loading/scripts/ScriptStore"),
            entry("com/genir/renderer/overrides/CombatEngine", "com/fs/starfarer/combat/CombatEngine"),
            entry("com/genir/renderer/overrides/CombatState", "com/fs/starfarer/combat/CombatState"),
            entry("com/genir/renderer/overrides/loading/HullSpecStore", "com/fs/starfarer/loading/oO0O"),
            entry("com/genir/renderer/overrides/loading/WeaponSpecStore", "com/fs/starfarer/loading/Q"),
            entry("com/genir/renderer/overrides/loading/SpecStore", "com/fs/starfarer/loading/SpecStore"),
            entry("com/genir/renderer/overrides/loading/ResourceLoaderState", "com/fs/starfarer/loading/ResourceLoaderState"),
            entry("com/genir/renderer/overrides/loading/ResourceLoaderState$ResourceType", "com/fs/starfarer/loading/ResourceLoaderState$o")
    );
}