package com.genir.renderer.overrides;

import com.genir.renderer.state.Profiler;

public class CampaignState {
    public static void advance(com.fs.starfarer.campaign.CampaignState state, float var1, Object var2) {
        long start = System.nanoTime();
        try {
            state.advanceImplCall(var1, var2);
        } finally {
            Profiler.FrameMark.markCampaignAdvance(start);
        }
    }

    public static void render(com.fs.starfarer.campaign.CampaignState state, float var1) {
        long start = System.nanoTime();
        try {
            state.renderImpl(var1);
        } finally {
            Profiler.FrameMark.markCampaignRender(start);
        }
    }
}
