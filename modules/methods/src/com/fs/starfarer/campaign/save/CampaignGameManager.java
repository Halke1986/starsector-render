package com.fs.starfarer.campaign.save;

import com.thoughtworks.xstream.XStream;

public class CampaignGameManager {
    // $FF: renamed from: new (java.lang.String) com.thoughtworks.xstream.XStream
    public static XStream getXSteam_vanilla(String var0) {
        return null;
    }

    // $FF: renamed from: new (java.lang.String) com.thoughtworks.xstream.XStream
    public static XStream getXSteam_override(String var0) {
        return com.genir.renderer.overrides.CampaignGameManager.getXStream(var0);
    }
}
