package com.genir.renderer.agent;

import java.io.IOException;
import java.lang.instrument.Instrumentation;
import java.nio.file.Files;
import java.nio.file.Path;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HexFormat;

import org.apache.log4j.Logger;

public final class Agent {
    public static void premain(String agentArgs, Instrumentation instrumentation) {
        String checksum = getSha256(Path.of("starfarer_obf.jar"));
        Logger.getLogger(Agent.class).info("starfarer_obf.jar SHA-256 checksum: " + checksum);

        instrumentation.addTransformer(new ClassTransformer(), false);
    }

    public static String getSha256(Path path) {
        try {
            byte[] bytes = Files.readAllBytes(path);

            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            digest.update(bytes, 0, bytes.length);

            return HexFormat.of().formatHex(digest.digest());
        } catch (IOException | NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}
