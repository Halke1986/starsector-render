package com.genir.renderer.overrides;

import proxy.com.fs.starfarer.campaign.CampaignEngine;

public class CampaignGameManager {
    public static String saveGame(CampaignEngine.CampaignUI var0, long var1, boolean var3) {
        return proxy.com.fs.starfarer.campaign.save.CampaignGameManager.CampaignGameManager_saveGame_vanilla(var0, var1, var3);
    }
}
