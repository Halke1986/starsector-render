package com.genir.renderer.agent.transformations.symbols;

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
                entry("com/fs/graphics/util/Fps", symbols.Fps.name),
                entry("com/fs/graphics/TextureHandler", symbols.TextureHandler.name),
                entry("com/fs/graphics/font/FontRepository", symbols.FontRepository.name),
                entry("com/fs/graphics/font/Font", symbols.Font.name),
                entry("com/fs/graphics/font/Glyph", symbols.Glyph.name),
                entry("com/fs/graphics/font/Kerning", symbols.Kerning.name),
                entry("sound/Track", symbols.SoundTrack.name),
                entry("sound/SoundBuffer", symbols.SoundBuffer.name),
                entry("sound/OggLoader", symbols.OggLoader.name),
                entry("com/fs/starfarer/renderers/FloatingTextManager", symbols.FloatingTextManager.name),
                entry("com/fs/starfarer/renderers/AtmosphereRenderer", symbols.AtmosphereRenderer.name),
                entry("com/fs/starfarer/renderers/ShipArrowRenderer", symbols.ShipArrowRenderer.name),
                entry("com/fs/starfarer/util/ScreenshotUtil", symbols.ScreenshotUtil.name),
                entry("com/fs/starfarer/loading/scripts/SecureClassLoader", symbols.SecureClassLoader.name),
                entry("com/fs/starfarer/loading/JavaSourceFinder", symbols.JavaSourceFinder.name),
                entry("com/fs/starfarer/loading/specs/ShipHullSpec", symbols.ShipHullSpec.name),
                entry("com/fs/starfarer/combat/entities/ship/damage/ImpactSound", symbols.ImpactSound.name),
                entry("com/fs/starfarer/ShutdownException", symbols.ShutdownException.name),

                // Methods
                entry("TextureRepository_addTexture", symbols.TextureRepository_addTexture.name),
                entry("FontRepository_defineFont", symbols.FontRepository_defineFont.name),
                entry("StarfarerSettings_getFloatValue", symbols.StarfarerSettings_getFloatValue.name),
                entry("ScriptStore_getScriptList", symbols.ScriptStore_getScriptList.name),
                entry("ScriptStore_getPluginSet", symbols.ScriptStore_getPluginSet.name),
                entry("ScriptStore_startScriptLoadingThread", symbols.ScriptStore_startScriptLoadingThread.name),
                entry("ScriptStore_queueScript", symbols.ScriptStore_queueScript.name),
                entry("SpecStore_init", symbols.SpecStore_init.name),
                entry("SpecStore_loadingSoundSets", symbols.SpecStore_loadingSoundSets.name),
                entry("FileLoader_getInstance", symbols.FileLoader_getInstance.name),
                entry("FileLoader_getResourceList", symbols.FileLoader_getResourceList.name),
                entry("FileLoader_loadInputStreams", symbols.FileLoader_loadInputStreams.name),
                entry("FileLoader_loadInputStream", symbols.FileLoader_loadInputStream.name),
                entry("FileLoader_loadInputStreamWithMods", symbols.FileLoader_loadInputStreamWithMods.name),
                entry("FloatingTextManager_render", symbols.FloatingTextManager_render.name),
                entry("ProgressBar_setDescription", symbols.ProgressBar_setDescription.name),
                entry("ProgressBar_render", symbols.ProgressBar_render.name),
                entry("ProgressBar_renderWithDescription", symbols.ProgressBar_renderWithDescription.name),
                entry("TextureHandler_getTextureID", symbols.TextureHandler_getTextureID.name),
                entry("TextureHandler_getPath", symbols.TextureHandler_getPath.name),
                entry("TextureHandler_setPath", symbols.TextureHandler_setPath.name),
                entry("TextureHandler_setHeight", symbols.TextureHandler_setHeight.name),
                entry("TextureHandler_setWidth", symbols.TextureHandler_setWidth.name),
                entry("TextureHandler_setImageHeight", symbols.TextureHandler_setImageHeight.name),
                entry("TextureHandler_setImageWidth", symbols.TextureHandler_setImageWidth.name),
                entry("TextureHandler_setColor1", symbols.TextureHandler_setColor1.name),
                entry("TextureHandler_setColor0", symbols.TextureHandler_setColor0.name),
                entry("TextureHandler_setColor2", symbols.TextureHandler_setColor2.name),
                entry("TextureHandler_setStringID", symbols.TextureHandler_setStringID.name),
                entry("DeploymentManager_pickReinforcement", symbols.DeploymentManager_pickReinforcement.name),
                entry("TextureLoader_loadTextureSynchronous", symbols.TextureLoader_loadTextureSynchronous.name),
                entry("SoundStore_getInstance", symbols.SoundStore_getInstance.name),
                entry("SoundStore_loadWav", symbols.SoundStore_loadWav.name),
                entry("SoundStore_getIsInitialized", symbols.SoundStore_getIsInitialized.name),
                entry("OggLoader_load", symbols.OggLoader_load.name),
                entry("AtmosphereRenderer_init", symbols.AtmosphereRenderer_init.name),
                entry("ScreenshotUtil_init", symbols.ScreenshotUtil_init.name),
                entry("ShipArrowRenderer_init", symbols.ShipArrowRenderer_init.name),
                entry("StarfarerSettings_getBooleanValue", symbols.StarfarerSettings_getBooleanValue.name),
                entry("ImpactSound_init", symbols.ImpactSound_init.name),
                entry("LoadingUtils_filesWithExtensionInDirectory", symbols.LoadingUtils_filesWithExtensionInDirectory.name),
                entry("LoadingUtils_filesWithExtensionInDirectoryAbsolute", symbols.LoadingUtils_filesWithExtensionInDirectoryAbsolute.name),
                entry("LoadingUtils_readStreamAsString", symbols.LoadingUtils_readStreamAsString.name),
                entry("LoadingUtils_readPathAsString", symbols.LoadingUtils_readPathAsString.name),
                entry("LoadingUtils_getMergedSpreadsheetDataForMod", symbols.LoadingUtils_getMergedSpreadsheetDataForMod.name),
                entry("TextureRepository_getTextureLoader", symbols.TextureRepository_getTextureLoader.name),
                entry("Tesselator_renderAsPolygon", symbols.Tesselator_renderAsPolygon.name),
                entry("HullSpecStore_addHullSpec", symbols.HullSpecStore_addHullSpec.name),
                entry("WeaponSpecStore_addWeaponSpec", symbols.WeaponSpecStore_addWeaponSpec.name),
                entry("WeaponSpecStore_addProjectileSpec", symbols.WeaponSpecStore_addProjectileSpec.name),
                entry("FontRenderer_renderGlyphs", symbols.FontRenderer_renderGlyphs.name),
                entry("FontRenderer_refreshFontFlags", symbols.FontRenderer_refreshFontFlags.name),
                entry("Font_getSize", symbols.Font_getSize.name),
                entry("Font_getGlyph", symbols.Font_getGlyph.name),
                entry("Font_getLineHeight", symbols.Font_getLineHeight.name),
                entry("Font_getKerning", symbols.Font_getKerning.name),
                entry("Kerning_getAmount", symbols.Kerning_getAmount.name),
                entry("Glyph_getXOffset", symbols.Glyph_getXOffset.name),
                entry("Glyph_getYOffset", symbols.Glyph_getYOffset.name),
                entry("Glyph_getXAdvance", symbols.Glyph_getXAdvance.name),
                entry("Glyph_getWidth", symbols.Glyph_getWidth.name),
                entry("Glyph_getHeight", symbols.Glyph_getHeight.name),
                entry("Glyph_getTexX", symbols.Glyph_getTexX.name),
                entry("Glyph_getTexY", symbols.Glyph_getTexY.name),
                entry("Glyph_getTexHeight", symbols.Glyph_getTexHeight.name),
                entry("Glyph_getTexWidth", symbols.Glyph_getTexWidth.name),

                // Fields
                entry("ScriptStore_objectRepository", symbols.ScriptStore_objectRepository.name),
                entry("ScriptStore_javaSourceClassLoader", symbols.ScriptStore_javaSourceClassLoader.name),
                entry("SoundStore_isOpenALInitialized2", symbols.SoundStore_isOpenALInitialized2.name),
                entry("SoundStore_trackMap", symbols.SoundStore_trackMap.name),
                entry("SoundBuffer_buffer", symbols.SoundBuffer_buffer.name),
                entry("SoundBuffer_freq", symbols.SoundBuffer_freq.name),
                entry("SoundBuffer_channels", symbols.SoundBuffer_channels.name),
                entry("CombatEngine_hitParticlesGroup", symbols.CombatEngine_hitParticlesGroup.name),
                entry("HullSpecStore_hulls", symbols.HullSpecStore_hulls.name),
                entry("WeaponSpecStore_weapons", symbols.WeaponSpecStore_weapons.name),
                entry("WeaponSpecStore_projectiles", symbols.WeaponSpecStore_projectiles.name),
                entry("FontRenderer_multiPassFont", symbols.FontRenderer_multiPassFont.name),
                entry("FontRenderer_transformMatrix", symbols.FontRenderer_transformMatrix.name),
                entry("FontRenderer_highlightDisabled", symbols.FontRenderer_highlightDisabled.name),
                entry("FontRenderer_textSize", symbols.FontRenderer_textSize.name),
                entry("FontRenderer_font", symbols.FontRenderer_font.name),
                entry("FontRenderer_text", symbols.FontRenderer_text.name),
                entry("FontRenderer_color", symbols.FontRenderer_color.name),
                entry("FontRenderer_colorAlpha", symbols.FontRenderer_colorAlpha.name),
                entry("FontRenderer_highlightColor", symbols.FontRenderer_highlightColor.name),
                entry("FontRenderer_highlightColorAlpha", symbols.FontRenderer_highlightColorAlpha.name),
                entry("FontRenderer_highlightColors", symbols.FontRenderer_highlightColors.name),
                entry("FontRenderer_highlightByChar", symbols.FontRenderer_highlightByChar.name),
                entry("FontRenderer_underlineEnabled", symbols.FontRenderer_underlineEnabled.name),
                entry("FontRenderer_outlineSize", symbols.FontRenderer_outlineSize.name),
                entry("FontRenderer_outlineExpansion", symbols.FontRenderer_outlineExpansion.name),
                entry("FontRenderer_highlightStart", symbols.FontRenderer_highlightStart.name),
                entry("FontRenderer_highlightEnd", symbols.FontRenderer_highlightEnd.name),
                entry("ResourceLocation_type", symbols.ResourceLocation_type.name),
                entry("ResourceLocation_path", symbols.ResourceLocation_path.name),
                entry("ResourceLocation_isMod", symbols.ResourceLocation_isMod.name),
                entry("FileLoader_locationFilter", symbols.FileLoader_locationFilter.name),
                entry("FileLoader_withoutMods", symbols.FileLoader_withoutMods.name),
                entry("Expression_list", symbols.Expression_list.name),
                entry("Expression_map", symbols.Expression_map.name)
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
                entry("com/genir/renderer/overrides/loading/textures/TextureRepository", symbols.TextureRepository.name),
                entry("com/genir/renderer/overrides/render/font/FontRenderer", symbols.FontRenderer.name),
                entry("com/genir/renderer/overrides/Expression", symbols.Expression.name),
                entry("com/genir/renderer/overrides/ProgressBar", symbols.ProgressBar.name),
                entry("com/genir/renderer/overrides/DeploymentManager", symbols.DeploymentManager.name),
                entry("com/genir/renderer/overrides/DeploymentManager$ReinforcementType", symbols.DeploymentManager$ReinforcementType.name),
                entry("com/genir/renderer/overrides/Bounds", symbols.Bounds.name),
                entry("com/genir/renderer/overrides/Bounds$Segment", symbols.BoundsSegment.name),
                entry("com/genir/renderer/overrides/loading/SoundStore", symbols.SoundStore.name),
                entry("com/genir/renderer/overrides/loading/FileLoader", symbols.FileLoader.name),
                entry("com/genir/renderer/overrides/loading/FileLoader$ResourceLocationType", symbols.FileLoader$ResourceType.name),
                entry("com/genir/renderer/overrides/loading/FileLoader$ResourceLocation", symbols.FileLoader$ResourceLocation.name),
                entry("com/genir/renderer/overrides/loading/HullSpecStore", symbols.HullSpecStore.name),
                entry("com/genir/renderer/overrides/loading/WeaponSpecStore", symbols.WeaponSpecStore.name),
                entry("com/genir/renderer/overrides/loading/ResourceLoaderState$ResourceType", symbols.ResourceLoaderState$ResourceType.name)
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
    }
}