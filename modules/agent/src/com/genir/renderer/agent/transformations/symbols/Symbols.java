package com.genir.renderer.agent.transformations.symbols;

import com.genir.renderer.agent.ClassName;
import org.objectweb.asm.ClassReader;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.Type;
import org.objectweb.asm.tree.*;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public class Symbols {
    public final ClassNode TextureHandler;
    public final ClassNode TextureRepository;
    public final ClassNode FileLoader;
    public final ClassNode FileLoader$ResourceLocation;
    public final ClassNode FileLoader$ResourceType;
    public final ClassNode HullSpecStore;
    public final ClassNode WeaponSpecStore;
    public final ClassNode SecureClassLoader;
    public final ClassNode JavaSourceFinder;
    public final ClassNode ShipHullSpec;
    public final ClassNode ShutdownException;
    public final ClassNode FloatingTextManager;
    public final ClassNode Fps;
    public final ClassNode FontRepository;
    public final ClassNode FontRenderer;
    public final ClassNode Font;
    public final ClassNode Glyph;
    public final ClassNode Kerning;
    public final ClassNode SoundStore;
    public final ClassNode SoundTrack;
    public final ClassNode OggLoader;
    public final ClassNode SoundBuffer;
    public final ClassNode AtmosphereRenderer;
    public final ClassNode ShipArrowRenderer;
    public final ClassNode ScreenshotUtil;
    public final ClassNode ImpactSound;
    public final ClassNode ResourceLoaderState$ResourceType;
    public final ClassNode Expression;
    public final ClassNode ProgressBar;
    public final ClassNode DeploymentManager;
    public final ClassNode DeploymentManager$ReinforcementType;
    public final ClassNode Bounds;
    public final ClassNode BoundsSegment;
    public final ClassNode StarfarerSettings$SettingsAPIImpl;

    public final MethodNode TextureRepository_addTexture;
    public final MethodNode TextureRepository_getTextureLoader;
    public final MethodNode FontRepository_defineFont;
    public final MethodNode StarfarerSettings_getFloatValue;
    public final MethodNode ScriptStore_getScriptList;
    public final MethodNode ScriptStore_getPluginSet;
    public final MethodNode ScriptStore_startScriptLoadingThread;
    public final MethodNode ScriptStore_queueScript;
    public final MethodNode SpecStore_init;
    public final MethodNode SpecStore_loadingSoundSets;
    public final MethodNode FileLoader_getInstance;
    public final MethodNode FileLoader_getResourceList;
    public final MethodNode FileLoader_loadInputStreams;
    public final MethodNode FileLoader_loadInputStream;
    public final MethodNode FileLoader_loadInputStreamWithMods;
    public final MethodNode FloatingTextManager_render;
    public final MethodNode ProgressBar_setDescription;
    public final MethodNode ProgressBar_render;
    public final MethodNode ProgressBar_renderWithDescription;
    public final MethodNode TextureHandler_getTextureID;
    public final MethodNode TextureHandler_getPath;
    public final MethodNode TextureHandler_setPath;
    public final MethodNode TextureHandler_setHeight;
    public final MethodNode TextureHandler_setWidth;
    public final MethodNode TextureHandler_setImageHeight;
    public final MethodNode TextureHandler_setImageWidth;
    public final MethodNode TextureHandler_setColor1;
    public final MethodNode TextureHandler_setColor0;
    public final MethodNode TextureHandler_setColor2;
    public final MethodNode TextureHandler_setStringID;
    public final MethodNode DeploymentManager_pickReinforcement;
    public final MethodNode TextureLoader_loadTextureSynchronous;
    public final MethodNode SoundStore_getInstance;
    public final MethodNode SoundStore_loadWav;
    public final MethodNode SoundStore_getIsInitialized;
    public final MethodNode OggLoader_load;
    public final MethodNode AtmosphereRenderer_init;
    public final MethodNode ScreenshotUtil_init;
    public final MethodNode ShipArrowRenderer_init;
    public final MethodNode StarfarerSettings_getBooleanValue;
    public final MethodNode ImpactSound_init;
    public final MethodNode LoadingUtils_filesWithExtensionInDirectory;
    public final MethodNode LoadingUtils_filesWithExtensionInDirectoryAbsolute;
    public final MethodNode LoadingUtils_readStreamAsString;
    public final MethodNode LoadingUtils_readPathAsString;
    public final MethodNode LoadingUtils_getMergedSpreadsheetDataForMod;
    public final MethodNode Tesselator_renderAsPolygon;
    public final MethodNode HullSpecStore_addHullSpec;
    public final MethodNode HullSpecStore_removeHullSpec;
    public final MethodNode WeaponSpecStore_addWeaponSpec;
    public final MethodNode WeaponSpecStore_addProjectileSpec;
    public final MethodNode FontRenderer_renderGlyphs;
    public final MethodNode FontRenderer_refreshFontFlags;
    public final MethodNode Font_getSize;
    public final MethodNode Font_getGlyph;
    public final MethodNode Font_getLineHeight;
    public final MethodNode Font_getKerning;
    public final MethodNode Kerning_getAmount;
    public final MethodNode Glyph_getXOffset;
    public final MethodNode Glyph_getYOffset;
    public final MethodNode Glyph_getXAdvance;
    public final MethodNode Glyph_getWidth;
    public final MethodNode Glyph_getHeight;
    public final MethodNode Glyph_getTexX;
    public final MethodNode Glyph_getTexY;
    public final MethodNode Glyph_getTexHeight;
    public final MethodNode Glyph_getTexWidth;

    public final FieldNode ScriptStore_objectRepository;
    public final FieldNode ScriptStore_javaSourceClassLoader;
    public final FieldNode SoundStore_isOpenALInitialized2;
    public final FieldNode SoundStore_trackMap;
    public final FieldNode SoundBuffer_buffer;
    public final FieldNode SoundBuffer_freq;
    public final FieldNode SoundBuffer_channels;
    public final FieldNode CombatEngine_hitParticlesGroup;
    public final FieldNode HullSpecStore_hulls;
    public final FieldNode WeaponSpecStore_weapons;
    public final FieldNode WeaponSpecStore_projectiles;
    public final FieldNode FontRenderer_multiPassFont;
    public final FieldNode FontRenderer_transformMatrix;
    public final FieldNode FontRenderer_highlightDisabled;
    public final FieldNode FontRenderer_textSize;
    public final FieldNode FontRenderer_font;
    public final FieldNode FontRenderer_text;
    public final FieldNode FontRenderer_color;
    public final FieldNode FontRenderer_colorAlpha;
    public final FieldNode FontRenderer_highlightColor;
    public final FieldNode FontRenderer_highlightColorAlpha;
    public final FieldNode FontRenderer_highlightColors;
    public final FieldNode FontRenderer_highlightByChar;
    public final FieldNode FontRenderer_underlineEnabled;
    public final FieldNode FontRenderer_outlineSize;
    public final FieldNode FontRenderer_outlineExpansion;
    public final FieldNode FontRenderer_highlightStart;
    public final FieldNode FontRenderer_highlightEnd;
    public final FieldNode ResourceLocation_type;
    public final FieldNode ResourceLocation_path;
    public final FieldNode ResourceLocation_isMod;
    public final FieldNode Expression_list;
    public final FieldNode Expression_map;
    public final FieldNode FileLoader_locationFilter;
    public final FieldNode FileLoader_withoutMods;

    private static final int ANY = 0;

    public Symbols() {
        final ClassNode baseGameStateNode = readClassNode("com/fs/starfarer/BaseGameState");
        final ClassNode combatEngineNode = readClassNode("com/fs/starfarer/combat/CombatEngine");
        final ClassNode versionNode = readClassNode("com/fs/starfarer/Version");
        final ClassNode spriteNode = readClassNode("com/fs/graphics/Sprite");
        final ClassNode soundNode = readClassNode("sound/Sound");
        final ClassNode resourceLoaderStateNode = readClassNode("com/fs/starfarer/loading/ResourceLoaderState");
        final ClassNode rulesNode = readClassNode("com/fs/starfarer/campaign/rules/Rules");
        final ClassNode campaignGameManagerNode = readClassNode("com/fs/starfarer/campaign/save/CampaignGameManager");
        final ClassNode shipNode = readClassNode("com/fs/starfarer/combat/entities/Ship");
        final ClassNode baseBattleStrategyNode = readClassNode("com/fs/starfarer/combat/ai/admiral/BaseBattleStrategy");
        final ClassNode glLauncherNode = readClassNode("com/fs/starfarer/launcher/opengl/GLLauncher");
        final ClassNode hullVariantSpecNode = readClassNode("com/fs/starfarer/loading/specs/HullVariantSpec");
        final ClassNode missileNode = readClassNode("com/fs/starfarer/combat/entities/Missile");
        final ClassNode scriptStoreNode = readClassNode("com/fs/starfarer/loading/scripts/ScriptStore");
        final ClassNode textureLoaderNode = readClassNode("com/fs/graphics/TextureLoader");
        final ClassNode starfarerSettingsNode = readClassNode("com/fs/starfarer/settings/StarfarerSettings");
        final ClassNode specStoreNode = readClassNode("com/fs/starfarer/loading/SpecStore");
        final ClassNode loadingUtilsNode = readClassNode("com/fs/starfarer/loading/LoadingUtils");
        final ClassNode tesselatorNode = readClassNode("com/fs/starfarer/util/Tesselator");
        final ClassNode campaignFloatingTextNode = readClassNode("com/fs/starfarer/campaign/fleet/CampaignFloatingText");
        final ClassNode standardTooltipV2Node = readClassNode("com/fs/starfarer/ui/impl/StandardTooltipV2");

        // Classes
        TextureHandler = fieldList(spriteNode).byName("texture").getTypeClass();
        TextureRepository = onwerClass(methodInstructionsByOwner(methodList(glLauncherNode).byName("cleanup").get(), "com/fs/graphics").get(0));
        Fps = fieldList(baseGameStateNode).byName("fps").getTypeClass();
        FloatingTextManager = methodList(combatEngineNode).byName("getFloatingTextManager").getReturnTypeClass();
        FontRepository = onwerClass(methodInstructionsByOwner(methodList(versionNode).byName("<init>").get(), null).get(1));
        FontRenderer = fieldList(Fps).byDesc("Lcom/fs/graphics").getTypeClass();
        Font = fieldList(FontRepository).byDesc("Ljava/util/HashMap;").getGenericParametersClass(1);
        Glyph = methodList(Font).byDesc("(I)Lcom/fs/graphics").getReturnTypeClass();
        Kerning = methodList(Font).byDesc("(II)").getReturnTypeClass();
        SoundStore = onwerClass(methodInstructionsByOwner(methodList(soundNode).byName("<init>").byDesc("(Ljava/lang/String;)").get(), "sound").get(0));
        final MethodNode loadOggSoundtrack = methodList(SoundStore).byDesc("(Ljava/lang/String;Ljava/io/InputStream;)").byIndex(2).get();
        SoundTrack = returnTypeClass(loadOggSoundtrack);
        OggLoader = onwerClass(methodInstructionsByOwner(loadOggSoundtrack, "sound").get(1));
        SoundBuffer = methodList(OggLoader).byDesc("(Ljava/io/InputStream;)").getReturnTypeClass();
        final MethodNode resourceLoaderStateInit = methodList(resourceLoaderStateNode).byName("init").get();
        final List<MethodInsnNode> rendereresList = methodInstructionsByOwner(resourceLoaderStateInit, "com/fs/starfarer/renderers");
        AtmosphereRenderer = onwerClass(rendereresList.get(0));
        ShipArrowRenderer = onwerClass(rendereresList.get(1));
        ScreenshotUtil = onwerClass(methodInstructionsByOwner(resourceLoaderStateInit, "com/fs/starfarer/util").get(0));
        ImpactSound = onwerClass(methodInstructionsByOwner(resourceLoaderStateInit, "com/fs/starfarer/combat/entities/ship").get(0));
        ResourceLoaderState$ResourceType = argumentTypeClass(methodList(resourceLoaderStateNode).byName("queueResource").get(), 0);
        final ClassNode ruleNode = methodList(rulesNode).byDesc("(Ljava/lang/String;Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map;)Lcom/fs/starfarer/campaign/rules").getReturnTypeClass();
        Expression = getGenericParametersClass(Type.getReturnType(methodList(ruleNode).byName("getConditions").get().signature), 0);
        final ClassNode saveStream = fieldList(campaignGameManagerNode).byDesc("Lcom/fs/starfarer/util").getTypeClass();
        ProgressBar = fieldList(saveStream).byDesc("Lcom/fs/starfarer/campaign/save").getTypeClass();
        DeploymentManager = fieldList(baseBattleStrategyNode).byDesc("Lcom/fs/starfarer/combat/ai/admiral").byAccess(Opcodes.ACC_PROTECTED).getTypeClass();
        DeploymentManager$ReinforcementType = fieldList(DeploymentManager).bySignature("Ljava/util/List<Lcom/fs/starfarer/combat/ai/admiral").byIndex(ANY).getGenericParametersClass(0);
        Bounds = fieldList(shipNode).byName("visualBounds").getTypeClass();
        BoundsSegment = fieldList(Bounds).bySignature("Ljava/util/List<Lcom/fs/starfarer/combat").byIndex(ANY).getGenericParametersClass(0);
        FileLoader = onwerClass(methodInstructionsByOwner(methodList(glLauncherNode).byName("loadSound").get(), "com/fs/util").get(0));
        FileLoader$ResourceLocation = fieldList(FileLoader).bySignature("Ljava/util/List<Lcom/fs/util").getGenericParametersClass(0);
        FileLoader$ResourceType = fieldList(FileLoader$ResourceLocation).byDesc("Lcom/fs/util").getTypeClass();
        HullSpecStore = onwerClass(methodInstructionsByOwner(methodList(hullVariantSpecNode).byName("createEmptyVariant").get(), "com/fs/starfarer/loading").get(0));
        WeaponSpecStore = onwerClass(methodInstructionsByOwner(methodList(missileNode).byName("setWeaponSpec").get(), "com/fs/starfarer/loading").get(0));
        SecureClassLoader = fieldList(scriptStoreNode).byDesc("Lcom/fs/starfarer/loading/scripts").getTypeClass();
        JavaSourceFinder = onwerClass(methodInstructionsByOwner(methodList(scriptStoreNode).byDesc("(Ljava/lang/ClassLoader;)V").get(), "com/fs/starfarer/loading").get(0));
        ShipHullSpec = methodList(shipNode).byName("getHullSpec").byDesc("()Lcom/fs/starfarer/loading/specs").getReturnTypeClass();
        ShutdownException = onwerClass(methodInstructionsBy(methodList(baseGameStateNode).byName("traverse").get(), "com/fs/starfarer", "<init>").get(0));
        StarfarerSettings$SettingsAPIImpl = readClassNode(starfarerSettingsNode.innerClasses.stream().filter((innerClassNode) -> innerClassNode.access == 0).findFirst().get().name);

        // Methods
        TextureRepository_addTexture = methodList(TextureRepository).byDesc("(Ljava/lang/String;L" + TextureHandler.name + ";)V").get();
        TextureRepository_getTextureLoader = methodList(TextureRepository).byDesc("()L" + textureLoaderNode.name).get();
        FontRepository_defineFont = methodList(FontRepository).byDesc("(Ljava/lang/String;Ljava/lang/String;)V").get();
        StarfarerSettings_getFloatValue = methodList(starfarerSettingsNode).byDesc("(Ljava/lang/String;)F").byInstructionOwner("java/util/Map").get();
        StarfarerSettings_getBooleanValue = methodList(starfarerSettingsNode).byDesc("(Ljava/lang/String;)Z").byInstructionOwner("java/util/Map").get();
        ScriptStore_getScriptList = methodList(scriptStoreNode).bySignature("()Ljava/util/List<Ljava/lang/String;>;").get();
        ScriptStore_getPluginSet = methodList(scriptStoreNode).bySignature("()Ljava/util/Set<Ljava/lang/String;>;").get();
        ScriptStore_startScriptLoadingThread = methodList(scriptStoreNode).byDesc("()V").byInstructionOwner("java/lang/Thread").byInstructionOwner("com/fs/starfarer/loading/scripts").get();
        ScriptStore_queueScript = methodList(scriptStoreNode).byDesc("(Ljava/lang/String;)V").get();
        SpecStore_init = methodList(specStoreNode).byDesc("(Lcom/fs/starfarer/loading/ResourceLoaderState;)V").byInstructionOwner("com/fs/starfarer/campaign/rules/Rules").get();
        final ClassNode soundSpecNode = fieldList(missileNode).byName("explosionSound").getTypeClass();
        SpecStore_loadingSoundSets = methodList(specStoreNode).byInstructionOwner(soundSpecNode.name).get();
        FileLoader_getInstance = methodList(FileLoader).byDesc("()Lcom/fs/util").get();
        FileLoader_getResourceList = methodList(FileLoader).bySignature("()Ljava/util/List<Lcom/fs/util").get();
        FileLoader_loadInputStreams = methodList(FileLoader).bySignature("(Ljava/lang/String;)Ljava/util/List<Lcom/fs/util/container/Pair<Lcom/fs/util").get();
        FileLoader_loadInputStream = methodList(FileLoader).byDesc("(Ljava/lang/String;Z)Ljava/io/InputStream;").get();
        FileLoader_loadInputStreamWithMods = methodList(FileLoader).byDesc("(Ljava/lang/String;)Ljava/io/InputStream;").get();
        FloatingTextManager_render = methodList(FloatingTextManager).byDesc("(F)V").byNotInstructionName("remove").get();
        ProgressBar_setDescription = methodList(ProgressBar).byDesc("(Ljava/lang/String;)V").byNotName("<init>").byIndex(1).get();
        ProgressBar_render = methodList(ProgressBar).byDesc("(F)V").get();
        ProgressBar_renderWithDescription = methodList(ProgressBar).byDesc("(Ljava/lang/String;F)V").get();
        TextureHandler_getTextureID = methodList(TextureHandler).byDesc("()I").byIndex(2).get();
        TextureHandler_getPath = methodList(TextureHandler).byDesc("()Ljava/lang/String;").byIndex(1).get();
        TextureHandler_setStringID = methodList(TextureHandler).byDesc("(Ljava/lang/String;)V").byIndex(0).get();
        TextureHandler_setPath = methodList(TextureHandler).byDesc("(Ljava/lang/String;)V").byIndex(1).get();
        TextureHandler_setImageHeight = methodList(TextureHandler).byDesc("(I)V").byIndex(0).get();
        TextureHandler_setImageWidth = methodList(TextureHandler).byDesc("(I)V").byIndex(1).get();
        TextureHandler_setHeight = methodList(TextureHandler).byDesc("(I)V").byIndex(2).get();
        TextureHandler_setWidth = methodList(TextureHandler).byDesc("(I)V").byIndex(3).get();
        TextureHandler_setColor1 = methodList(TextureHandler).byDesc("(Ljava/awt/Color;)V").byIndex(0).get();
        TextureHandler_setColor0 = methodList(TextureHandler).byDesc("(Ljava/awt/Color;)V").byIndex(1).get();
        TextureHandler_setColor2 = methodList(TextureHandler).byDesc("(Ljava/awt/Color;)V").byIndex(2).get();
        DeploymentManager_pickReinforcement = methodList(DeploymentManager).byDesc("(L" + DeploymentManager$ReinforcementType.name + ";FLjava/util/List;Ljava/util/List;Z)Lcom/fs/starfarer/campaign/fleet/FleetMember;").get();
        TextureLoader_loadTextureSynchronous = methodList(textureLoaderNode).byDesc("(L" + TextureHandler.name + ";Ljava/lang/String;IIIIZ)L" + TextureHandler.name + ";").get();
        SoundStore_getInstance = methodList(SoundStore).byDesc("()Lsound").get();
        SoundStore_loadWav = methodList(SoundStore).byDesc("(Ljava/lang/String;Ljava/io/InputStream;)Lsound").byIndex(1).get();
        SoundStore_getIsInitialized = methodList(SoundStore).byDesc("()Z").byIndex(2).get();
        OggLoader_load = methodList(OggLoader).byDesc("(Ljava/io/InputStream;)Lsound").get();
        AtmosphereRenderer_init = methodList(AtmosphereRenderer).byDesc("()V").byNotName("<init>").get();
        ScreenshotUtil_init = methodList(ScreenshotUtil).byDesc("()V").byInstructionOwner("com/fs/starfarer/settings/StarfarerSettings").byNotInstructionOwner("org/lwjgl/opengl/GL11").get();
        ShipArrowRenderer_init = methodList(ShipArrowRenderer).byDesc("()V").byNotName("<init>", "<clinit>").get();
        ImpactSound_init = methodList(ImpactSound).byDesc("()V").byNotName("<init>", "<clinit>").get();
        LoadingUtils_readStreamAsString = methodList(loadingUtilsNode).byDesc("(Ljava/io/InputStream;)Ljava/lang/String;").byInstructionOwner("java/lang/StringBuffer").get();
        LoadingUtils_filesWithExtensionInDirectory = methodList(loadingUtilsNode).bySignature("(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;").byIsCalled(specStoreNode).get();
        LoadingUtils_filesWithExtensionInDirectoryAbsolute = methodList(loadingUtilsNode).bySignature("(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;").byIsCalled(scriptStoreNode).get();
        LoadingUtils_readPathAsString = methodList(loadingUtilsNode).byDesc("(Ljava/lang/String;)Ljava/lang/String;").byNotInstructionOwner("java/lang/String").get();
        LoadingUtils_getMergedSpreadsheetDataForMod = methodList(loadingUtilsNode).byDesc("(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;").get();
        Tesselator_renderAsPolygon = methodList(tesselatorNode).byDesc("(L" + Bounds.name + ";FFF)V").get();
        HullSpecStore_addHullSpec = methodList(HullSpecStore).byDesc("(Ljava/lang/String;L" + ShipHullSpec.name + ";)V").get();
        HullSpecStore_removeHullSpec = methodList(HullSpecStore).byDesc("(Ljava/lang/String;)V").get();
        WeaponSpecStore_addWeaponSpec = methodList(WeaponSpecStore).byDesc("(Ljava/lang/String;Lcom/fs/starfarer/loading/specs/BaseWeaponSpec;)V").get();
        WeaponSpecStore_addProjectileSpec = methodList(WeaponSpecStore).byDesc("(Ljava/lang/String;Ljava/lang/Object;)V").get();
        final MethodNode FontRenderer_renderGlyphsOuter = methodList(FontRenderer).byDesc("(FFZ)V").get();
        final MethodNode FontRenderer_setFontSize = methodList(FontRenderer).byDesc("(L" + Font.name + ";)V").byNotName("<init>").get();
        final MethodNode FontRenderer_renderGlyphWithOutline = methodList(FontRenderer).byDesc("(FFL" + Glyph.name + ";FZ)V").get();
        FontRenderer_renderGlyphs = methodList(FontRenderer).byDesc("(Z)V").byIsCalled(FontRenderer_renderGlyphsOuter).get();
        FontRenderer_refreshFontFlags = methodList(FontRenderer).byDesc("()V").byIsCalled(FontRenderer_renderGlyphs).get();
        final MethodNode createActivationCodeUI = methodList(glLauncherNode).byName("createActivationCodeUI").get();
        Font_getSize = methodList(Font).byDesc("()I").byIsCalled(FontRenderer_setFontSize).get();
        Font_getGlyph = methodList(Font).byDesc("(I)L" + Glyph.name + ";").get();
        Font_getLineHeight = methodList(Font).byDesc("()I").byIsCalled(createActivationCodeUI).get();
        Font_getKerning = methodList(Font).byDesc("(II)L" + Kerning.name + ";").get();
        Kerning_getAmount = methodList(Kerning).byDesc("()I").byIsCalled(FontRenderer_renderGlyphs).get();
        Glyph_getXOffset = methodList(Glyph).byDesc("()I").byIsCalled(FontRenderer_renderGlyphs).byIndex(1).get();
        Glyph_getYOffset = methodList(Glyph).byDesc("()I").byIsCalled(FontRenderer_renderGlyphWithOutline).byIndex(2).get();
        Glyph_getWidth = methodList(Glyph).byDesc("()I").byIsCalled(FontRenderer_renderGlyphWithOutline).byIndex(1).get();
        Glyph_getHeight = methodList(Glyph).byDesc("()I").byIsCalled(FontRenderer_renderGlyphWithOutline).byIndex(0).get();
        Glyph_getXAdvance = methodList(Glyph).byDesc("()I").byIsCalled(FontRenderer_renderGlyphs).byIndex(0).get();
        Glyph_getTexX = methodList(Glyph).byDesc("()F").byIsCalled(FontRenderer_renderGlyphWithOutline).byIndex(2).get();
        Glyph_getTexY = methodList(Glyph).byDesc("()F").byIsCalled(FontRenderer_renderGlyphWithOutline).byIndex(3).get();
        Glyph_getTexHeight = methodList(Glyph).byDesc("()F").byIsCalled(FontRenderer_renderGlyphWithOutline).byIndex(0).get();
        Glyph_getTexWidth = methodList(Glyph).byDesc("()F").byIsCalled(FontRenderer_renderGlyphWithOutline).byIndex(1).get();

        // Fields
        ScriptStore_objectRepository = fieldList(scriptStoreNode).byDesc("Lcom/fs/util/container/repo/ObjectRepository;").get();
        ScriptStore_javaSourceClassLoader = fieldList(scriptStoreNode).byDesc("Lorg/codehaus/janino/JavaSourceClassLoader;").get();
        final MethodNode SoundStore_getSize = methodList(SoundStore).byDesc("(I)I").get();
        SoundStore_isOpenALInitialized2 = fieldList(SoundStore).byDesc("Z").byIsCalled(SoundStore_getSize).get();
        SoundStore_trackMap = fieldList(SoundStore).bySignature("Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;").get();
        SoundBuffer_buffer = fieldList(SoundBuffer).byDesc("Ljava/nio/ByteBuffer;").get();
        SoundBuffer_freq = fieldList(SoundBuffer).byDesc("I").byIndex(0).get();
        SoundBuffer_channels = fieldList(SoundBuffer).byDesc("I").byIndex(1).get();
        final MethodNode CombatEngine_addHitParticle = methodList(combatEngineNode).byName("addHitParticle").byDesc("(Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFFLjava/awt/Color;)V").get();
        CombatEngine_hitParticlesGroup = fieldList(combatEngineNode).byDesc("Lcom/fs/graphics/particle/DynamicParticleGroup;").byIsCalled(CombatEngine_addHitParticle).get();
        HullSpecStore_hulls = fieldList(HullSpecStore).get();
        WeaponSpecStore_weapons = fieldList(WeaponSpecStore).bySignature("Ljava/util/Map<Ljava/lang/String;Lcom/fs/starfarer/loading/specs/BaseWeaponSpec;>;").get();
        WeaponSpecStore_projectiles = fieldList(WeaponSpecStore).bySignature("Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;").get();
        FontRenderer_multiPassFont = fieldList(FontRenderer).byDesc("Z").byIsCalled(FontRenderer_refreshFontFlags).get();
        FontRenderer_transformMatrix = fieldList(FontRenderer).byDesc("Ljava/nio/FloatBuffer;").get();
        final ClassNode labelNode = fieldList(campaignFloatingTextNode).byName("label").getTypeClass();
        final MethodNode Label_Pop = methodList(labelNode).byName("pop").get();
        final MethodNode Label_SetColor = methodList(labelNode).byName("setColor").get();
        final MethodNode Label_SetHighlight = methodList(labelNode).byDesc("(II)V").byName("setHighlight").get();
        final MethodNode FontRenderer_GetTextSize = methodList(FontRenderer).byDesc("()F").byIsCalled(Label_Pop).get();
        final MethodNode FontRenderer_SetColor = methodList(FontRenderer).byDesc("(Ljava/awt/Color;)V").byIsCalled(Label_SetColor).get();
        final MethodNode StandardTooltipV2_makeExpandable = methodList(standardTooltipV2Node).byName("makeExpandable").get();
        final MethodNode FontRenderer_SetHighlightColor = methodList(FontRenderer).byDesc("(Ljava/awt/Color;)V").byIsCalled(StandardTooltipV2_makeExpandable).get();
        final MethodNode FontRenderer_SetHighlight = methodList(FontRenderer).byDesc("(II)V").byIsCalled(Label_SetHighlight).get();
        FontRenderer_textSize = fieldList(FontRenderer).byDesc("F").byIsCalled(FontRenderer_GetTextSize).get();
        FontRenderer_font = fieldList(FontRenderer).byDesc("L" + Font.name + ";").get();
        FontRenderer_text = fieldList(FontRenderer).byDesc("Ljava/lang/String;").byIsCalled(FontRenderer_renderGlyphs).get();
        FontRenderer_color = fieldList(FontRenderer).byDesc("Ljava/awt/Color;").byIsCalled(FontRenderer_SetColor).get();
        FontRenderer_colorAlpha = fieldList(FontRenderer).byDesc("F").byIsCalled(FontRenderer_renderGlyphs).byIndex(1).get();
        FontRenderer_highlightColor = fieldList(FontRenderer).byDesc("Ljava/awt/Color;").byIsCalled(FontRenderer_SetHighlightColor).get();
        FontRenderer_highlightColorAlpha = fieldList(FontRenderer).byDesc("F").byIsCalled(FontRenderer_renderGlyphs).byIndex(2).get();
        FontRenderer_highlightColors = fieldList(FontRenderer).byDesc("[Ljava/awt/Color;").get();
        FontRenderer_highlightByChar = fieldList(FontRenderer).byDesc("[I").get();
        FontRenderer_underlineEnabled = fieldList(FontRenderer).byDesc("Z").byIsCalled(FontRenderer_renderGlyphs).byIndex(1).get();
        FontRenderer_outlineSize = fieldList(FontRenderer).byDesc("I").byIsCalled(FontRenderer_renderGlyphWithOutline).get();
        FontRenderer_outlineExpansion = fieldList(FontRenderer).byDesc("F").byIsCalled(FontRenderer_renderGlyphWithOutline).get();
        FontRenderer_highlightStart = fieldList(FontRenderer).byDesc("I").byIsCalled(FontRenderer_SetHighlight).byIndex(0).get();
        FontRenderer_highlightEnd = fieldList(FontRenderer).byDesc("I").byIsCalled(FontRenderer_SetHighlight).byIndex(1).get();
        FontRenderer_highlightDisabled = fieldList(FontRenderer).byDesc("Z").byIsCalled(FontRenderer_renderGlyphs).byIndex(2).get();
        ResourceLocation_type = fieldList(FileLoader$ResourceLocation).byDesc("L" + FileLoader$ResourceType.name + ";").get();
        ResourceLocation_path = fieldList(FileLoader$ResourceLocation).byDesc("Ljava/lang/String;").get();
        ResourceLocation_isMod = fieldList(FileLoader$ResourceLocation).byDesc("Z").get();
        FileLoader_locationFilter = fieldList(FileLoader).byDesc("Ljava/lang/String;").get();
        FileLoader_withoutMods = fieldList(FileLoader).byDesc("Z").get();
        Expression_list = fieldList(Expression).bySignature("Ljava/util/List<Ljava/lang/String;>;").get();
        Expression_map = fieldList(Expression).bySignature("Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;").get();
    }

    static ClassNode readClassNode(String className) {
        try {
            ClassLoader loader = ClassLoader.getSystemClassLoader();
            InputStream stream = loader.getResourceAsStream(ClassName.resource(className));
            ClassReader reader = new ClassReader(stream.readAllBytes());
            ClassNode classNode = new ClassNode();
            reader.accept(classNode, 0);

            return classNode;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private MethodList methodList(ClassNode classNode) {
        return new MethodList(classNode);
    }

    private FieldList fieldList(ClassNode classNode) {
        return new FieldList(classNode);
    }

    /**
     * METHODS
     */

    private ClassNode returnTypeClass(MethodNode method) {
        return readClassNode(Type.getReturnType(method.desc).getInternalName());
    }

    private List<MethodInsnNode> methodInstructionsByOwner(MethodNode methodNode, String ownerPrefix) {
        return methodInstructionsBy(methodNode, ownerPrefix, null);
    }

    private List<MethodInsnNode> methodInstructionsBy(MethodNode methodNode, String ownerPrefix, String name) {
        List<MethodInsnNode> inst = new ArrayList<>();
        for (AbstractInsnNode ins : methodNode.instructions) {
            if (!(ins instanceof MethodInsnNode methodIns)) {
                continue;
            }

            if (ownerPrefix != null && !methodIns.owner.startsWith(ownerPrefix)) {
                continue;
            }

            if (name != null && !methodIns.name.equals(name)) {
                continue;
            }

            inst.add(methodIns);
        }

        return inst;
    }

    private ClassNode onwerClass(MethodInsnNode inst) {
        return readClassNode(inst.owner);
    }

    private ClassNode argumentTypeClass(MethodNode method, int idx) {
        return readClassNode(Type.getArgumentTypes(method.desc)[idx].getInternalName());
    }

    private ClassNode getGenericParametersClass(Type type, int idx) {
        return readClassNode(getGenericParameters(type.getDescriptor())[idx].getInternalName());
    }

    public static Type[] getGenericParameters(String signature) {
        String generic = signature.substring(signature.indexOf('<') + 1);
        generic = generic.substring(0, generic.indexOf('>'));

        // Disgiuse generic parameters as method descriptor to use existing Type functionality.
        return Type.getMethodType("(" + generic + ")V").getArgumentTypes();
    }
}
