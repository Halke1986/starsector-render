package com.genir.renderer.agent.transformations.symbols;

import com.genir.renderer.agent.ClassName;
import org.objectweb.asm.ClassReader;
import org.objectweb.asm.Type;
import org.objectweb.asm.tree.*;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import static org.objectweb.asm.Type.getReturnType;

public class Symbols {
    // Classes
    public final String textureHandler;
    public final String textureRepository;
    public final String fileLoader;
    public final String fileLoader$resourceLocation;
    public final String fileLoader$resourceType;
    public final String hullSpecStore;
    public final String weaponSpecStore;
    public final String secureClassLoader;
    public final String javaSourceFinder;
    public final String shipHullSpec;
    public final String shutdownException;

    public final String floatingTextManager;
    public final String fps;

    public final String fontRepository;
    public final String fontRenderer;
    public final String font;
    public final String glyph;
    public final String kerning;

    public final String soundStore;
    public final String soundTrack;
    public final String oggLoader;
    public final String soundBuffer;

    public final String atmosphereRenderer;
    public final String shipArrowRenderer;
    public final String screenshotUtil;
    public final String impactSound;
    public final String resourceLoaderState$resourceType;
    public final String expression;
    public final String progressBar;
    public final String deploymentManager;
    public final String deploymentManager$ReinforcementType;
    public final String bounds;
    public final String boundsSegment;


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

        textureHandler = typeString(fieldByName(spriteNode, "texture"));
        textureRepository = methodInstructionsByOwner(methodsBy(spriteNode, "<init>", "(Ljava/lang/String;)", null, null).get(0), "com/fs/graphics").get(0).owner;
        fps = typeString(fieldByName(baseGameStateNode, "fps"));
        final ClassNode fpsNode = readClassNode(fps);
        floatingTextManager = returnTypeString(methodByName(combatEngineNode, "getFloatingTextManager"));

        fontRepository = methodInstructionsByOwner(methodByName(versionNode, "<init>"), null).get(1).owner;
        fontRenderer = returnTypeString(methodsBy(fpsNode, null, "()", Type.OBJECT, null).get(0));
        final ClassNode fontRepositoryNode = readClassNode(fontRepository);
        font = getGenericParametersString(fieldByDescPrefix(fontRepositoryNode, "Ljava/util/HashMap;"), 1);
        final ClassNode fontNode = readClassNode(font);
        glyph = returnTypeString(methodsBy(fontNode, null, "(I)", Type.OBJECT, null).get(0));
        kerning = returnTypeString(methodByDescPrefix(fontNode, "(II)"));

        soundStore = methodInstructionsByOwner(methodsBy(soundNode, "<init>", "(Ljava/lang/String;)", null, null).get(0), "sound").get(0).owner;
        final ClassNode soundStoreNode = readClassNode(soundStore);
        final MethodNode loadOggSoundtrack = methodsByDescPrefix(soundStoreNode, "(Ljava/lang/String;Ljava/io/InputStream;)").get(2);
        soundTrack = returnTypeString(loadOggSoundtrack);
        oggLoader = methodInstructionsByOwner(loadOggSoundtrack, "sound").get(1).owner;
        final ClassNode oggLoaderNode = readClassNode(oggLoader);
        soundBuffer = returnTypeString(methodByDescPrefix(oggLoaderNode, "(Ljava/io/InputStream;)"));

        final MethodNode resourceLoaderStateInit = methodByName(resourceLoaderStateNode, "init");
        final List<MethodInsnNode> rendereresList = methodInstructionsByOwner(resourceLoaderStateInit, "com/fs/starfarer/renderers");
        atmosphereRenderer = rendereresList.get(0).owner;
        shipArrowRenderer = rendereresList.get(1).owner;
        screenshotUtil = methodInstructionsByOwner(resourceLoaderStateInit, "com/fs/starfarer/util").get(0).owner;
        impactSound = methodInstructionsByOwner(resourceLoaderStateInit, "com/fs/starfarer/combat/entities/ship").get(0).owner;
        resourceLoaderState$resourceType = argumentTypeString(methodByName(resourceLoaderStateNode, "queueResource"), 0);
        final String rules = returnTypeString(methodsBy(rulesNode, null, null, Type.OBJECT, "Lcom/fs/starfarer/campaign/rules").get(0));
        final ClassNode ruleNode = readClassNode(rules);
        expression = getGenericParametersString(Type.getReturnType(methodsByName(ruleNode, "getConditions").get(0).signature), 0);

        final String saveStream = typeString(fieldByDescPrefix(campaignGameManagerNode, "Lcom/fs/starfarer/util"));
        final ClassNode saveStreamNode = readClassNode(saveStream);
        progressBar = typeString(fieldByDescPrefix(saveStreamNode, "Lcom/fs/starfarer/campaign/save"));

        deploymentManager = typeString(fieldsByDescPrefix(baseBattleStrategyNode, "Lcom/fs/starfarer/combat/ai/admiral").get(0));
        final ClassNode deploymentManagerNode = readClassNode(deploymentManager);
        deploymentManager$ReinforcementType = getGenericParametersString(fieldsByDescPrefix(deploymentManagerNode, "Ljava/util/List<Lcom/fs/starfarer/combat/ai/admiral").get(0), 0);

        bounds = typeString(fieldByName(shipNode, "visualBounds"));
        final ClassNode boundsNode = readClassNode(bounds);
        boundsSegment = getGenericParametersString(fieldsByDescPrefix(boundsNode, "Ljava/util/List<Lcom/fs/starfarer/combat").get(0), 0);

        fileLoader = methodInstructionsByOwner(methodByName(glLauncherNode, "loadSound"), "com/fs/util").get(0).owner;
        final ClassNode fileLoaderNode = readClassNode(fileLoader);
        fileLoader$resourceLocation = getGenericParametersString(fieldByDescPrefix(fileLoaderNode, "Ljava/util/List<Lcom/fs/util"), 0);
        final ClassNode fileLoader$resourceLocationNode = readClassNode(fileLoader$resourceLocation);
        fileLoader$resourceType = typeString(fieldByDescPrefix(fileLoader$resourceLocationNode, "Lcom/fs/util"));
        hullSpecStore = methodInstructionsByOwner(methodByName(hullVariantSpecNode, "createEmptyVariant"), "com/fs/starfarer/loading").get(0).owner;
        weaponSpecStore = methodInstructionsByOwner(methodByName(missileNode, "setWeaponSpec"), "com/fs/starfarer/loading").get(0).owner;
        secureClassLoader = typeString(fieldsByDescPrefix(scriptStoreNode, "Lcom/fs/starfarer/loading/scripts").get(0));
        javaSourceFinder = methodInstructionsByOwner(methodsByDescPrefix(scriptStoreNode, "(Ljava/lang/ClassLoader;)V").get(0), "com/fs/starfarer/loading").get(0).owner;
        shipHullSpec = returnTypeString(methodsByName(shipNode, "getHullSpec").get(0));
        shutdownException = methodInstructionsBy(methodByName(baseGameStateNode, "traverse"), "com/fs/starfarer", "<init>").get(0).owner;

        int x = 0;
    }

    private ClassNode readClassNode(String className) {
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

    /**
     * FIELDS
     */

    private FieldNode fieldByName(ClassNode classNode, String name) {
        return fieldsByName(classNode, name).get(0);
    }

    private FieldNode fieldByDescPrefix(ClassNode classNode, String desc) {
        return fieldsByDescPrefix(classNode, desc).get(0);
    }

    private List<FieldNode> fieldsByName(ClassNode classNode, String name) {
        return fieldsBy(classNode, name, null);
    }

    private List<FieldNode> fieldsByDescPrefix(ClassNode classNode, String descPrefix) {
        return fieldsBy(classNode, null, descPrefix);
    }

    private List<FieldNode> fieldsBy(ClassNode classNode, String name, String descPrefix) {
        List<FieldNode> filtered = new ArrayList<>();
        for (FieldNode field : classNode.fields) {
            if (name != null && !field.name.equals(name)) {
                continue;
            }

            if (descPrefix != null && !field.desc.startsWith(descPrefix) && (field.signature == null || (field.signature != null && !field.signature.startsWith(descPrefix)))) {
                continue;
            }

            filtered.add(field);
        }

        return filtered;
    }

    /**
     * METHODS
     */

    private MethodNode methodByName(ClassNode classNode, String name) {
        return methodsByName(classNode, name).get(0);
    }

    private MethodNode methodByDescPrefix(ClassNode classNode, String descPrefix) {
        return methodsByDescPrefix(classNode, descPrefix).get(0);
    }

    private List<MethodNode> methodsByName(ClassNode classNode, String name) {
        return methodsBy(classNode, name, null, null, null);
    }

    private List<MethodNode> methodsByDescPrefix(ClassNode classNode, String descPrefix) {
        return methodsBy(classNode, null, descPrefix, null, null);
    }

//    private List<MethodNode> methodsByReturnSort(ClassNode classNode, int returnSort) {
//        return methodsBy(classNode, null, null, returnSort, null);
//    }

    private List<MethodNode> methodsBy(ClassNode classNode, String name, String descPrefix, Integer returnSort, String returnDescPrefix) {
        List<MethodNode> filtered = new ArrayList<>();
        for (MethodNode method : classNode.methods) {
            if (name != null && !method.name.equals(name)) {
                continue;
            }

            if (descPrefix != null && !method.desc.startsWith(descPrefix)) {
                continue;
            }

            Type returnType = getReturnType(method.desc);
            if (returnSort != null && returnType.getSort() != returnSort) {
                continue;
            }

            if (returnDescPrefix != null && !returnType.getDescriptor().startsWith(returnDescPrefix)) {
                continue;
            }

            filtered.add(method);
        }

        return filtered;
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

//    private Type[] returnTypes(List<MethodNode> methods){
//        List<MethodInsnNode> inst = new ArrayList<>();
//    }

    /**
     * TYPE
     */

//    private List<Type> typeBySort(List<Type> types, int sort) {
//
//    }
//
//    private List<Type> typeByDesc(List<Type> types, String descPrefix) {
//
//    }
//
//    private List<Type> typeBy(List<Type> types, String descPrefix, Integer sort) {
//        List<Type> filtered = new ArrayList<>();
//        for (Type type : types) {
//            if (descPrefix != null &&
//        }
//
//        return filtered;
//    }

    /**
     * DESCRIPTION
     */

    private String typeString(FieldNode field) {
        return Type.getType(field.desc).getInternalName();
    }

    private String returnTypeString(MethodNode method) {
        return Type.getReturnType(method.desc).getInternalName();
    }

    private String argumentTypeString(MethodNode method, int idx) {
        return Type.getArgumentTypes(method.desc)[idx].getInternalName();
    }

//    private String ownerString(MethodInsnNode inst) {
//        return Type.getType(inst.owner).getInternalName();
//    }

    private Type[] getGenericParameters(String signature) {
        String generic = signature.substring(signature.indexOf('<') + 1);
        generic = generic.substring(0, generic.indexOf('>'));

        // Disgiuse generic parameters as method descriptor to use existing Type functionality.
        return Type.getMethodType("(" + generic + ")V").getArgumentTypes();
    }

    private String getGenericParametersString(FieldNode field, int idx) {
        return getGenericParameters(field.signature)[idx].getInternalName();
    }

    private String getGenericParametersString(Type type, int idx) {
        return getGenericParameters(type.getDescriptor())[idx].getInternalName();
    }
}
