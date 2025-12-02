package com.fs.starfarer.loading;

import com.fs.starfarer.api.combat.ShipwideAIFlags;
import com.genir.renderer.overrides.loading.ResourceLoader;
import proxy.com.fs.graphics.Sprite;

import java.util.Map;

import static com.genir.renderer.overrides.loading.ScriptLoader.joinScriptLoadingThread;
import static com.genir.renderer.overrides.loading.ScriptLoader.runScriptLoadingThread;

public class ResourceLoaderState {
    private Sprite bar;

    public void queueResource(ShipwideAIFlags.AIFlags flags, String path, int weight) {
        ResourceLoader.loadResource(flags.name(), path);
    }

    public void init(Map var1) throws Exception {
        runScriptLoadingThread();
        joinScriptLoadingThread();
    }

    public void renderProgress(float var1) {
//        float var2 = 48.0F;
//        class_1757.method_17854();
//        float var3 = StarfarerSettings.method_17066();
//        float var4 = StarfarerSettings.method_17068();
//        class_1757.method_17856(0.0F, var3, 0.0F, var4, 1000.0F);
//        this.title.renderAtCenter(var3 / 2.0F, var4 / 2.0F + var2 + 5.0F);
//        this.barBg.renderAtCenter(var3 / 2.0F, var4 / 2.0F);
//        this.bar.renderRegionAtCenter(var3 / 2.0F, var4 / 2.0F, 0.0F, 0.0F, var1, 1.0F);
        ResourceLoader.animateBar(bar);
//        class_1757.method_17857();
//        Display.update();
    }
}
