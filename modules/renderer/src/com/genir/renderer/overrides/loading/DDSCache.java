package com.genir.renderer.overrides.loading;

import com.fs.starfarer.api.Global;
import com.fs.starfarer.api.ModSpecAPI;
import com.genir.renderer.overrides.PathUtil;
import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.lwjgl.BufferUtils;

import java.awt.*;
import java.io.File;
import java.io.FileNotFoundException;
import java.nio.charset.StandardCharsets;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.*;

public class DDSCache {
    private static Map<String, DDSTextureData> cache = null;

    public static void initializeCache() {
        if (!vramOptimizerEnabled()) {
            return;
        }

        List<File> metadataFiles = findDDSMetadata();
        cache = readDDSMetadata(metadataFiles);

        int x = 0;
    }

    public static TextureData getTexture(Path path) {
        if (cache == null) {
            return null;
        }

        String strPath = PathUtil.normalize(path.toString());
        DDSTextureData ddsTexData = cache.get(strPath);


        if (ddsTexData == null) {
//            Logger.getLogger(DDSCache.class).info(strPath);
            return null;
        }

        TextureData texData = ddsTexData.texData;

        synchronized (texData) {
            if (texData.buffer == null) {
                byte[] bytes;
                try {
                    bytes = Files.readAllBytes(ddsTexData.ddsFile.toPath());
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }

                texData.buffer = BufferUtils.createByteBuffer(bytes.length);
                texData.buffer.put(bytes);
                texData.buffer.clear();
            }
        }

        return texData;
    }

    private static boolean vramOptimizerEnabled() {
        for (ModSpecAPI mod : Global.getSettings().getModManager().getEnabledModsCopy()) { // TODO check version
            if (Objects.equals(mod.getId(), "VramOptimizer")) {
                return true;
            }
        }

        return false;
    }

    private static List<File> findDDSMetadata() {
        String ddsDir = PathUtil.normalize(PathUtil.modDir + "/DDSCache");

        List<File> metadataFiles = new ArrayList<>();

        // Iterate over dds cache.
        try (DirectoryStream<Path> ddsDirStream = Files.newDirectoryStream(Path.of(ddsDir))) {
            for (Path ddsModDirPath : ddsDirStream) {
                if (!ddsModDirPath.toFile().isDirectory()) {
                    continue;
                }

                // Find mod-specific dds metadata file.
                try (DirectoryStream<Path> ddsModDirStream = Files.newDirectoryStream(ddsModDirPath)) {
                    for (Path filePath : ddsModDirStream) {
                        File file = filePath.toFile();
                        if (file.isFile() && filePath.toString().endsWith("dds_metadata.json")) {
                            metadataFiles.add(file);
                        }
                    }
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return metadataFiles;
    }

    private static Map<String, DDSTextureData> readDDSMetadata(List<File> metadataFiles) {
        Map<String, DDSTextureData> cache = new HashMap<>();

        for (File file : metadataFiles) {
            try {
                String jsonString = Files.readString(file.toPath(), StandardCharsets.UTF_8);
                JSONArray modImages = new JSONArray(jsonString);

                for (int i = 0; i < modImages.length(); ++i) {
                    JSONObject dds = modImages.getJSONObject(i);

                    String relPath = dds.getString("RelativeImagePath");
                    String modDir = dds.getString("ModFolderName");

                    String ddsFilePath = ".." + dds.getString("DDSFilePath");
                    File ddsFile = new File(ddsFilePath);

                    if (!Files.exists(ddsFile.toPath())) {
                        throw new FileNotFoundException(ddsFilePath);
                    }

                    String absolutePath;
                    if (Objects.equals(modDir, "starsector-core")) {
                        absolutePath = relPath;
                    } else {
                        absolutePath = PathUtil.modDir + "/" + modDir + "/" + relPath;
                    }

                    String normalizedPath = PathUtil.normalize(Path.of(absolutePath).normalize().toString());
                    cache.put(normalizedPath, new DDSTextureData(readTextureData(dds), ddsFile));
                }
            } catch (Exception e) {
                Logger.getLogger(DDSCache.class).info(e);
            }
        }

        return cache;
    }

    private static TextureData readTextureData(JSONObject dds) throws JSONException {
        TextureData texData = new TextureData();

        texData.width = dds.getInt("Width");
        texData.height = dds.getInt("Height");
        texData.hasAlpha = true;
        texData.isDDS = true;

        JSONArray mean = dds.getJSONArray("Mean");
        JSONArray weighted = dds.getJSONArray("Mean");
        JSONArray median = dds.getJSONArray("Median");

        texData.color0 = new Color((float) mean.getDouble(0), (float) mean.getDouble(1), (float) mean.getDouble(2));
        texData.color1 = new Color((float) weighted.getDouble(0), (float) weighted.getDouble(1), (float) weighted.getDouble(2));
        texData.color2 = new Color((float) median.getDouble(0), (float) median.getDouble(1), (float) median.getDouble(2));

        return texData;
    }

    private record DDSTextureData(TextureData texData, File ddsFile) {
    }
}
