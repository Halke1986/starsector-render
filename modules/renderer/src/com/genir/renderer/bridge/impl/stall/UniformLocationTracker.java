package com.genir.renderer.bridge.impl.stall;

import com.genir.renderer.bridge.impl.Executor;
import org.lwjgl.opengl.GL20;

import java.util.HashMap;
import java.util.Map;

public class UniformLocationTracker {
    private final Executor exec;
    private final Map<Integer, Map<String, Integer>> locations = new HashMap<>();

    public UniformLocationTracker(Executor exec) {
        this.exec = exec;
    }

    public void glLinkProgram(int program) {
        locations.remove(program);
    }

    public int glGetUniformLocation(int program, CharSequence name) {
        Map<String, Integer> programLocations = locations.get(program);

        if (programLocations == null) {
            programLocations = new HashMap<>();
            locations.put(program, programLocations);
        }

        Integer locationName = programLocations.get(name.toString());

        if (locationName == null) {
            locationName = exec.get(() -> GL20.glGetUniformLocation(program, name));
            programLocations.put(name.toString(), locationName);
        }

        return locationName;
    }
}
