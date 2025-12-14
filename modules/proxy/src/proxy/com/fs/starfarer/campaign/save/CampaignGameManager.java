package proxy.com.fs.starfarer.campaign.save;

import proxy.com.fs.starfarer.campaign.CampaignEngine;

public class CampaignGameManager {
    // $FF: renamed from: o00000 (com.fs.starfarer.campaign.CampaignEngine.o, long, boolean) java.lang.String
    public static String CampaignGameManager_saveGame_vanilla(CampaignEngine.CampaignUI var0, long var1, boolean var3) {
        return com.genir.renderer.overrides.CampaignGameManager.saveGame(var0, var1, var3);
    }

    // $FF: renamed from: o00000 (com.fs.starfarer.campaign.CampaignEngine.o, long, boolean) java.lang.String
    public static String CampaignGameManager_saveGame(CampaignEngine.CampaignUI var0, long var1, boolean var3) {
        return com.genir.renderer.overrides.CampaignGameManager.saveGame(var0, var1, var3);
    }
    //.method public static CampaignGameManager_saveGame : (Lproxy/com/fs/starfarer/campaign/CampaignEngine$CampaignUI;JZ)Ljava/lang/String;
    //    .code stack 4 locals 4
    //L0:     aload_0
    //L1:     lload_1
    //L2:     iload_3
    //L3:     invokestatic Method com/genir/renderer/overrides/CampaignGameManager saveGame (Lproxy/com/fs/starfarer/campaign/CampaignEngine$CampaignUI;JZ)Ljava/lang/String;
    //L6:     areturn
    //L7:
    //        .linenumbertable
    //            L0 8
    //        .end linenumbertable
    //        .localvariabletable
    //            0 is var0 Lproxy/com/fs/starfarer/campaign/CampaignEngine$CampaignUI; from L0 to L7
    //            1 is var1 J from L0 to L7
    //            3 is var3 Z from L0 to L7
    //        .end localvariabletable
    //    .end code
    //.end method
}
