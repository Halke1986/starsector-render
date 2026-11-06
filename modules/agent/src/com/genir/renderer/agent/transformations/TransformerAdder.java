package com.genir.renderer.agent.transformations;

import com.genir.renderer.agent.transformations.bytecode.BytecodeFileTransformer;
import com.genir.renderer.agent.transformations.constants.ConstantFileTransformer;
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
        var constantFileTransformer = new ConstantFileTransformer(transformations, commonTransformers);
        var bytecodeFileTransformer = new BytecodeFileTransformer(commonTransformers);

        // Apply constant transforms before bytecode changes so that target and donor bytecode use compatible constants.
        // Donor bytecode is not loaded here, so its constants must be transformed by its respective loader.
        // Transforming constants after bytecode changes could also cause unintended replacement of OpenGL calls in donor bytecode.
        instrumentation.addTransformer(constantFileTransformer, false);

        instrumentation.addTransformer(bytecodeFileTransformer, false);
    }
}
