package com.genir.renderer.bridge.context.stall;

import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.context.Executor;
import org.lwjgl.opengl.GL20;

import java.util.HashMap;
import java.util.Map;

public class ShaderTracker { // Context-shared object.
    private final Map<Integer, Map<String, Integer>> uniformLocations = new HashMap<>();
    private final Map<Integer, Map<Integer, Integer>> programParameters = new HashMap<>();

    //
    // GL calls.
    //

    public void glLinkProgram(int program) {
        // Clean previous program data.
        uniformLocations.remove(program);
        programParameters.remove(program);
    }

    public int glGetUniformLocation(int program, CharSequence name) {
        Map<String, Integer> locations = uniformLocations.computeIfAbsent(program, k ->
                new HashMap<>()
        );

        final Executor exec = getContextExecutor();
        return locations.computeIfAbsent(name.toString(), k ->
                exec.get(context -> GL20.glGetUniformLocation(program, name))
        );
    }

    public int glGetProgrami(int program, int pname) {
        Map<Integer, Integer> parameters = programParameters.computeIfAbsent(program, k ->
                new HashMap<>()
        );

        final Executor exec = getContextExecutor();
        return parameters.computeIfAbsent(pname, k ->
                exec.get(context -> GL20.glGetProgrami(program, pname))
        );
    }

    private Executor getContextExecutor() {
        // ShaderTracker object is shared between contexts, therefore
        // it cannot have a static reference to the context-local Executor.
        return ContextManager.getThreadContext().exec;
    }
}
