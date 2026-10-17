package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.commands.GLSync;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.debug.Debug;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Frame {
    public final static int ARGS_NUM = 4;

    private GLCommand[] commands = new GLCommand[1];
    private float[] args = new float[ARGS_NUM];
    private int commandsSize = 0;

    private final List<GLSync> fences = new ArrayList<>();

    public void add(GLCommand command) {
        try {
            commands[commandsSize] = command;
        } catch (ArrayIndexOutOfBoundsException e) {
            resizeArrays();

            commands[commandsSize] = command;
        }

        commandsSize++;
    }

    public void add(GLCommand command, float[] inArgs) {
        try {
            commands[commandsSize] = command;
            System.arraycopy(inArgs, 0, args, commandsSize * ARGS_NUM, ARGS_NUM);
        } catch (ArrayIndexOutOfBoundsException e) {
            resizeArrays();

            commands[commandsSize] = command;
            System.arraycopy(inArgs, 0, args, commandsSize * ARGS_NUM, ARGS_NUM);
        }

        commandsSize++;
    }

    public void add(GLCommand command, GLSync fence) {
        add(command);
        fences.add(fence);
    }

    public void clear() {
        commandsSize = 0;
        fences.clear();
    }

    private void resizeArrays() {
        Debug.asert(commands.length <= commandsSize);

        commands = Arrays.copyOf(commands, commands.length * 2);
        args = Arrays.copyOf(args, args.length * 2);
    }

    public GLCommand[] getCommands() {
        return commands;
    }

    public int getCommandsSize() {
        return commandsSize;
    }

    public float[] getArgs() {
        return args;
    }

    public List<GLSync> getFences() {
        return fences;
    }
}
