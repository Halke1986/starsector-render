package com.genir.renderer.overrides;

import com.genir.renderer.async.ExecutorFactory;
import proxy.com.fs.starfarer.campaign.CampaignEngine;

import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

import static com.genir.renderer.state.AppState.state;

public class CampaignGameManager {
    public static String saveGame(CampaignEngine.CampaignUI var0, long var1, boolean var3) {
        long unixTimestamp = System.currentTimeMillis() / 1000L;
        String profileDir = "profiles-" + unixTimestamp;
        new File(profileDir).mkdirs();

        ExecutorService exec = ExecutorFactory.newSingleThreadExecutor("FR-profiler");

        exec.execute(() -> {
            while (true) {
                state.profiler.startProfiler(profileDir + "/");

                try {
                    Thread.sleep(10 * 1000);
                } catch (InterruptedException e) {
                    state.profiler.stopProfiler();
                    return;
                }

                state.profiler.stopProfiler();
            }
        });

        try {
            return proxy.com.fs.starfarer.campaign.save.CampaignGameManager.CampaignGameManager_vanilla_saveGame(var0, var1, var3);
        } finally {
            exec.shutdownNow();
            try {
                exec.awaitTermination(30, TimeUnit.MINUTES);
            } catch (InterruptedException ignored) {
            }
        }
    }
}
