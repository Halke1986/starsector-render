package com.genir.renderer.agent.transformations.symbols;

import com.genir.renderer.agent.transformations.constants.ConstantReplacer;

public class CommonTransformers {
    public final ConstantReplacer frTransformer;
    public final ConstantReplacer starfarerTransformer;

    public CommonTransformers(Transformations transformations) {
        this.frTransformer = new ConstantReplacer(
                transformations.overrides,
                transformations.overridesDebug,
                transformations.obfuscation
        );

        this.starfarerTransformer = new ConstantReplacer(
                transformations.overridesDebug,
                transformations.opengl,  // Replace OpenGL calls.
                transformations.scriptLoader  // Replace class loader for loading scripts.
        );
    }
}
