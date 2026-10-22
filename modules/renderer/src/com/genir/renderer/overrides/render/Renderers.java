package com.genir.renderer.overrides.render;

import com.genir.renderer.overrides.render.font.FontRendererImpl;

public class Renderers {
    public FontRendererImpl font = new FontRendererImpl();

    public void update() {
        font.update();
    }
}
