package com.genir.renderer.bridge.state.stall;

import com.genir.renderer.bridge.state.Executor;
import org.lwjgl.opengl.GL20;

import java.util.HashMap;
import java.util.Map;

public class ShaderTracker {
    private final Executor exec;

    private final Map<Integer, Map<String, Integer>> uniformLocations = new HashMap<>();
    private final Map<Integer, Map<Integer, Integer>> programParameters = new HashMap<>();

    public ShaderTracker(Executor exec) {
        this.exec = exec;
    }

    public void glLinkProgram(int program) {
        uniformLocations.remove(program);
        programParameters.remove(program);
    }

    public int glGetUniformLocation(int program, CharSequence name) {
        Map<String, Integer> locations = uniformLocations.computeIfAbsent(program, k ->
                new HashMap<>()
        );

        return locations.computeIfAbsent(name.toString(), k ->
                exec.get(() -> GL20.glGetUniformLocation(program, name))
        );
    }

    public int glGetProgrami(int program, int pname) {
        Map<Integer, Integer> parameters = programParameters.computeIfAbsent(program, k ->
                new HashMap<>()
        );

        return parameters.computeIfAbsent(pname, k ->
                exec.get(() -> GL20.glGetProgrami(program, pname))
        );
    }
}
