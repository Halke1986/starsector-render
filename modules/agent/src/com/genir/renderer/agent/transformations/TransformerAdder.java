package com.genir.renderer.agent.transformations;

import com.genir.renderer.agent.transformations.bytecode.BytecodeClassTransformer;
import com.genir.renderer.agent.transformations.constants.ConstantClassTransformer;
import com.genir.renderer.agent.transformations.constants.IllegalClassTransformer;
import com.genir.renderer.agent.transformations.symbols.CommonTransformers;
import com.genir.renderer.agent.transformations.symbols.Symbols;
import com.genir.renderer.agent.transformations.symbols.Transformations;

import java.lang.instrument.Instrumentation;
import java.util.function.Consumer;

public class TransformerAdder implements Consumer<Object> {
    @Override
    public void accept(Object o) {
        Instrumentation instrumentation = (Instrumentation) o;

        var symbols = new Symbols();
        var transformations = new Transformations(symbols);
        var commonTransformers = new CommonTransformers(transformations);

        var constantClassTransformer = new ConstantClassTransformer(transformations, commonTransformers);
        var bytecodeClassTransformer = new BytecodeClassTransformer(symbols, commonTransformers);
        var illegalClassTransformer = new IllegalClassTransformer();

        // Apply constant transforms before bytecode changes so that target and donor bytecode use compatible constants.
        // Transforming constants after bytecode changes could also cause unintended replacement of OpenGL calls in donor bytecode.
        instrumentation.addTransformer(constantClassTransformer, false);

        instrumentation.addTransformer(bytecodeClassTransformer, false);

        // Sanitize illegal obf symbols.
        instrumentation.addTransformer(illegalClassTransformer, false);
    }
}
