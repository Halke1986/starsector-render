package com.genir.renderer.bridge.context.stall;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLGetter;
import com.genir.renderer.debug.Debug;
import org.apache.log4j.Logger;

import java.util.HashMap;
import java.util.Map;

import static com.genir.renderer.debug.Debug.asertEqual;

public class ShaderTracker { // Context-shared object.
    private final Map<Integer, Map<String, Integer>> uniformLocations = new HashMap<>();
    private final Map<Integer, Map<Integer, Integer>> programParameters = new HashMap<>();

    synchronized public void invalidateCache(int program) {
        Logger.getLogger(ShaderTracker.class).info("invalidateCache " + program);

        Debug.logStack();

        uniformLocations.remove(program);
        programParameters.remove(program);
    }

    synchronized public int glGetUniformLocation(int program, CharSequence name) {
        record glGetUniformLocation(int program, String name, int expected) implements GLCommand, GLGetter<Integer> {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                // Assert the simulated value reflects the OpenGL state.
                int actual = org.lwjgl.opengl.GL20.glGetUniformLocation(program, name);
                asertEqual(expected, actual, this);
            }

            @Override
            public Integer call(Context context) {
                return org.lwjgl.opengl.GL20.glGetUniformLocation(program, name);
            }
        }

        // ShaderTracker object is shared between contexts, therefore
        // it cannot have a static reference to a context.
        final Context context = ContextManager.getThreadContext();

        Map<String, Integer> locations = uniformLocations.computeIfAbsent(program, k ->
                new HashMap<>()
        );

        String nameStr = name.toString();

        Integer expected = locations.get(nameStr);
        if (expected == null) {
            int result = context.exec.get(new glGetUniformLocation(program, nameStr, 0));
            locations.put(nameStr, result);
            return result;
        }

        context.exec.execute(new glGetUniformLocation(program, nameStr, expected));
        return expected;
    }

    synchronized public int glGetProgrami(int program, int pname) {
        record glGetProgrami(int program, int pname, int expected) implements GLCommand, GLGetter<Integer> {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                // Assert the simulated value reflects the OpenGL state.
                int actual = org.lwjgl.opengl.GL20.glGetProgrami(program, pname);
                asertEqual(expected, actual, this);
            }

            @Override
            public Integer call(Context context) {
                return org.lwjgl.opengl.GL20.glGetProgrami(program, pname);
            }
        }

        final Context context = ContextManager.getThreadContext();

        Map<Integer, Integer> parameters = programParameters.computeIfAbsent(program, k ->
                new HashMap<>()
        );

        Integer expected = parameters.get(pname);
        if (expected == null) {
            int result = context.exec.get(new glGetProgrami(program, pname, 0));
            parameters.put(pname, result);
            return result;
        }

        context.exec.execute(new glGetProgrami(program, pname, expected));
        return expected;
    }
}
