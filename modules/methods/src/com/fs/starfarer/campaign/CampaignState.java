package com.fs.starfarer.campaign;

import com.fs.util.A.class_2767;

public class CampaignState {
    public void advance(float var1, class_2767 var2) {
        com.genir.renderer.overrides.CampaignState.advance(this, var1, var2);
    }

    public void render(float var1) {
        com.genir.renderer.overrides.CampaignState.render(this, var1);
    }

    public void advanceImplCall(float var1, Object var2) {
        advanceImpl(var1, (class_2767) var2);
    }

    public void advanceImpl(float var1, class_2767 var2) {
    }

    public void renderImpl(float var1) {
    }
}
