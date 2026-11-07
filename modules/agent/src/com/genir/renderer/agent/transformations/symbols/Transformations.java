package com.genir.renderer.agent.transformations.symbols;

import java.util.HashMap;
import java.util.Map;

import static java.util.Map.entry;

public class Transformations {
    public final Map<String, String> scriptLoader;
    public final Map<String, String> xstream;
    public final Map<String, String> lwjgl;
    public final Map<String, String> sync;
    public final Map<String, String> opengl;
    public final Map<String, String> obfuscation;
    public final Map<String, String> overrides;
    public final Map<String, String> overridesDebug;
    public final Map<String, String> illegalTransformations;

    public Transformations(Symbols symbols) {
        this.scriptLoader = Map.<String, String>ofEntries(
                // Use memory-optimized Path implementation.
                entry("org/codehaus/janino/JavaSourceClassLoader", "java/lang/ClassLoader")
        );

        this.xstream = Map.<String, String>ofEntries(
                // Use memory-optimized Path implementation.
                entry("com/thoughtworks/xstream/io/path/Path", "com/genir/renderer/overrides/xstream/Path")
        );

        this.lwjgl = Map.<String, String>ofEntries(
                // Replace selected OpenGL calls. Replacing all calls breaks LWJGL functionality.
                entry("org/lwjgl/opengl/GL11", "com/genir/renderer/bridge/opengl/GL11"),
                entry("org/lwjgl/opengl/GL14", "com/genir/renderer/bridge/opengl/GL14")
        );

        this.sync = Map.<String, String>ofEntries(
                // Override methods related to frame update.
                entry("java/lang/Thread", "com/genir/renderer/overrides/Sync"),
                entry("org/lwjgl/opengl/Display", "com/genir/renderer/overrides/Sync")
        );

        this.opengl = Map.<String, String>ofEntries(
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

        this.obfuscation = Map.<String, String>ofEntries(
                // Classes
                entry("com/fs/graphics/util/Fps", symbols.fps),
                entry("com/fs/graphics/TextureHandler", symbols.textureHandler),
                entry("com/fs/graphics/font/FontRepository", symbols.fontRepository),
                entry("com/fs/graphics/font/Font", symbols.font),
                entry("com/fs/graphics/font/Glyph", symbols.glyph),
                entry("com/fs/graphics/font/Kerning", symbols.kerning),
                entry("sound/Track", symbols.soundTrack),
                entry("sound/SoundBuffer", symbols.soundBuffer),
                entry("sound/OggLoader", symbols.oggLoader),
                entry("com/fs/starfarer/renderers/FloatingTextManager", symbols.floatingTextManager),
                entry("com/fs/starfarer/renderers/AtmosphereRenderer", symbols.atmosphereRenderer),
                entry("com/fs/starfarer/renderers/ShipArrowRenderer", symbols.shipArrowRenderer),
                entry("com/fs/starfarer/util/ScreenshotUtil", symbols.screenshotUtil),
                entry("com/fs/starfarer/loading/scripts/SecureClassLoader", symbols.secureClassLoader),
                entry("com/fs/starfarer/loading/JavaSourceFinder", symbols.javaSourceFinder),
                entry("com/fs/starfarer/loading/specs/ShipHullSpec", symbols.shipHullSpec),
                entry("com/fs/starfarer/combat/entities/ship/damage/ImpactSound", symbols.impactSound),
                entry("com/fs/starfarer/ShutdownException", symbols.shutdownException),

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
                entry("TextureHandler_getPath", "Õ00000"),
                entry("TextureHandler_setPath", "o00000"),
                entry("TextureHandler_setHeight", "Ô00000"),
                entry("TextureHandler_setWidth", "Object"),
                entry("TextureHandler_setImageHeight", "o00000"),
                entry("TextureHandler_setImageWidth", "Ò00000"),
                entry("TextureHandler_setColor1", "o00000"),
                entry("TextureHandler_setColor0", "Object"),
                entry("TextureHandler_setColor2", "Ò00000"),
                entry("TextureHandler_setStringID", "Ò00000"),
                entry("DeploymentManager_pickReinforcement", "o00000"),
                entry("TextureLoader_loadTextureSynchronous", "o00000"),
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
                entry("LoadingUtils_getMergedSpreadsheetDataForMod", "Ò00000"),
                entry("TextureRepository_getTextureLoader", "String"),
                entry("Expression_list", "ö00000"),
                entry("Expression_map", "float"),
                entry("Tesselator_renderAsPolygon", "o00000"),
                entry("HullSpecStore_addHullSpec", "super"),
                entry("WeaponSpecStore_addWeaponSpec", "super"),
                entry("WeaponSpecStore_addProjectileSpec", "super"),
                entry("FontRenderer_renderGlyphs", "Õ00000"),
                entry("FontRenderer_refreshFontFlags", "int"),
                entry("Font_getSize", "Õ00000"),
                entry("Font_getGlyph", "oO0000"),
                entry("Font_getLineHeight", "ø00000"),
                entry("Font_getKerning", "o00000"),
                entry("Kerning_getAmount", "Ó00000"),
                entry("Glyph_getXOffset", "ö00000"),
                entry("Glyph_getYOffset", "Ò00000"),
                entry("Glyph_getXAdvance", "Ø00000"),
                entry("Glyph_getWidth", "ø00000"),
                entry("Glyph_getHeight", "ÒO0000"),
                entry("Glyph_getTexX", "int"),
                entry("Glyph_getTexY", "oO0000"),
                entry("Glyph_getTexHeight", "ô00000"),
                entry("Glyph_getTexWidth", "Ô00000"),

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
                entry("WeaponSpecStore_projectiles", "o00000"),
                entry("FontRenderer_multiPassFont", "new_new"),
                entry("FontRenderer_transformMatrix", "oÒ0000"),
                entry("FontRenderer_highlightDisabled", "Ø00000"),
                entry("FontRenderer_textSize", "float"),
                entry("FontRenderer_font", "float_new"),
                entry("FontRenderer_text", "while_super"),
                entry("FontRenderer_color", "Øo0000"),
                entry("FontRenderer_colorAlpha", "Ö00000"),
                entry("FontRenderer_highlightColor", "Ô00000"),
                entry("FontRenderer_highlightColorAlpha", "öO0000"),
                entry("FontRenderer_highlightColors", "ØÓ0000"),
                entry("FontRenderer_highlightByChar", "Oo0000"),
                entry("FontRenderer_underlineEnabled", "õo0000"),
                entry("FontRenderer_outlineSize", "oo0000"),
                entry("FontRenderer_outlineExpansion", "oO0000"),
                entry("FontRenderer_highlightStart", "interface_new"),
                entry("FontRenderer_highlightEnd", "interface_super"),
                entry("FontRenderer_backgroundColor", "ÖÓ0000")
        );

        this.overrides = Map.<String, String>ofEntries(
                entry("com/genir/renderer/overrides/loading/textures/TextureLoader", "com/fs/graphics/TextureLoader"),
                entry("com/genir/renderer/overrides/render/Sprite", "com/fs/graphics/Sprite"),
                entry("com/genir/renderer/overrides/render/GLListManager", "com/fs/graphics/util/GLListManager"),
                entry("com/genir/renderer/overrides/render/particle/BaseParticle", "com/fs/graphics/particle/BaseParticle"),
                entry("com/genir/renderer/overrides/render/particle/NebulaParticle", "com/fs/graphics/particle/NebulaParticle"),
                entry("com/genir/renderer/overrides/render/particle/SmoothParticle", "com/fs/graphics/particle/SmoothParticle"),
                entry("com/genir/renderer/overrides/render/particle/GenericTextureParticle", "com/fs/graphics/particle/GenericTextureParticle"),
                entry("com/genir/renderer/overrides/render/particle/NegativeParticle", "com/fs/graphics/particle/NegativeParticle"),
                entry("com/genir/renderer/overrides/render/particle/DynamicParticleGroup", "com/fs/graphics/particle/DynamicParticleGroup"),
                entry("com/genir/renderer/overrides/render/particle/DetailedSmokeParticle", "com/fs/starfarer/renderers/fx/DetailedSmokeParticle"),
                entry("com/genir/renderer/overrides/render/particle/ContrailParticle", "com/fs/starfarer/combat/entities/ContrailParticle"),
                entry("com/genir/renderer/overrides/render/RoilingSwarmEffect", "com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect"),
                entry("com/genir/renderer/overrides/CombatEngine", "com/fs/starfarer/combat/CombatEngine"),
                entry("com/genir/renderer/overrides/CombatState", "com/fs/starfarer/combat/CombatState"),
                entry("com/genir/renderer/overrides/loading/ScriptStore", "com/fs/starfarer/loading/scripts/ScriptStore"),
                entry("com/genir/renderer/overrides/loading/SpecStore", "com/fs/starfarer/loading/SpecStore"),
                entry("com/genir/renderer/overrides/loading/ResourceLoaderState", "com/fs/starfarer/loading/ResourceLoaderState"),
                entry("com/genir/renderer/overrides/loading/LoadingUtils", "com/fs/starfarer/loading/LoadingUtils"),
                entry("com/genir/renderer/overrides/Tesselator", "com/fs/starfarer/util/Tesselator"),
                entry("com/genir/renderer/overrides/TitleScreenState", "com/fs/starfarer/title/TitleScreenState"),
                entry("com/genir/renderer/overrides/loading/textures/TextureRepository", symbols.textureRepository),
                entry("com/genir/renderer/overrides/render/font/FontRenderer", symbols.fontRenderer),
                entry("com/genir/renderer/overrides/Expression", symbols.expression),
                entry("com/genir/renderer/overrides/ProgressBar", symbols.progressBar),
                entry("com/genir/renderer/overrides/DeploymentManager", symbols.deploymentManager),
                entry("com/genir/renderer/overrides/DeploymentManager$ReinforcementType", symbols.deploymentManager$ReinforcementType),
                entry("com/genir/renderer/overrides/Bounds", symbols.bounds),
                entry("com/genir/renderer/overrides/Bounds$Segment", symbols.boundsSegment),
                entry("com/genir/renderer/overrides/loading/SoundStore", symbols.soundStore),
                entry("com/genir/renderer/overrides/loading/FileLoader", symbols.fileLoader),
                entry("com/genir/renderer/overrides/loading/FileLoader$ResourceLocationType", symbols.fileLoader$resourceType),
                entry("com/genir/renderer/overrides/loading/FileLoader$ResourceLocation", symbols.fileLoader$resourceLocation),
                entry("com/genir/renderer/overrides/loading/HullSpecStore", symbols.hullSpecStore),
                entry("com/genir/renderer/overrides/loading/WeaponSpecStore", symbols.weaponSpecStore),
                entry("com/genir/renderer/overrides/loading/ResourceLoaderState$ResourceType", symbols.resourceLoaderState$resourceType)
        );

        this.overridesDebug = Map.<String, String>ofEntries(
                //            entry("com/fs/graphics/Sprite", "com/genir/renderer/overrides/render/Sprite")
                //            entry("com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect", "com/genir/renderer/overrides/render/RoilingSwarmEffect")
                //            entry("com/fs/graphics/particle/SmoothParticle", "com/genir/renderer/overrides/render/particle/SmoothParticle"),
                //            entry("com/fs/graphics/particle/DynamicParticleGroup", "com/genir/renderer/overrides/render/particle/DynamicParticleGroup"),
                //            entry("com/fs/graphics/particle/BaseParticle", "com/genir/renderer/overrides/render/particle/BaseParticle")
                //            entry("com/fs/starfarer/combat/entities/ContrailParticle", "com/genir/renderer/overrides/render/particle/ContrailParticle")
                //            entry("com/fs/graphics/particle/NebulaParticle", "com/genir/renderer/overrides/render/particle/NebulaParticle")
                //            entry("com/fs/starfarer/renderers/fx/DetailedSmokeParticle", "com/genir/renderer/overrides/render/particle/DetailedSmokeParticle")
                //            entry("com/fs/starfarer/loading/ResourceLoaderState", "com/genir/renderer/overrides/loading/ResourceLoaderState"),
                //            entry("com/fs/graphics/TextureLoader", "com/genir/renderer/overrides/loading/textures/TextureLoader")
                //            entry("com/fs/graphics/A/ooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO", "com/genir/renderer/overrides/render/font/FontRenderer")
        );

        this.illegalTransformations = buildIllegalTransformations();
    }

    private Map<String, String> buildIllegalTransformations() {
        String[] symbols = {
                "class",
                "do",
                "float",
                "for",
                "if",
                "int",
                "interface",
                "new",
                "null",
                "Object",
                "private",
                "public",
                "return",
                "String",
                "super",
                "this",
                "void",
                "while"
        };

        Map<String, String> transformations = new HashMap<>();

        for (String s1 : symbols) {
            for (String s2 : symbols) {
                transformations.put(
                        s1 + "." + s2,
                        s1 + "_" + s2
                );

                for (String s3 : symbols) {
                    transformations.put(
                            s1 + "." + s2 + "$" + s3,
                            s1 + "_" + s2 + "$" + s3
                    );
                }
            }
        }

        return transformations;
    }
}