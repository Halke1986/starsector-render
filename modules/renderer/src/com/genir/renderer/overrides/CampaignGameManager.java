package com.genir.renderer.overrides;

import proxy.com.fs.starfarer.campaign.CampaignEngine;

import java.io.File;

import static com.genir.renderer.state.AppState.state;

public class CampaignGameManager {
    public static String saveGame(CampaignEngine.CampaignUI var0, long var1, boolean var3) {
        long unixTimestamp = System.currentTimeMillis() / 1000L;
        String profileDir = "profiles-" + unixTimestamp;
        new File(profileDir).mkdirs();

        state.profiler.startProfiler(profileDir);

        try {
            return proxy.com.fs.starfarer.campaign.save.CampaignGameManager.CampaignGameManager_vanilla_saveGame(var0, var1, var3);
        } finally {
            state.profiler.stopProfiler();
        }
    }
}
