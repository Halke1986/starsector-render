package com.genir.renderer.overrides;

import com.thoughtworks.xstream.XStream;

import static com.fs.starfarer.campaign.save.CampaignGameManager.getXSteam_vanilla;

public class CampaignGameManager {
    // $FF: renamed from: new (java.lang.String) com.thoughtworks.xstream.XStream
    public static XStream getXStream(String var0) {
        XStream xStream = getXSteam_vanilla(var0);
        XStreamDebugWriter.wrap(xStream);
        return xStream;
    }
}
