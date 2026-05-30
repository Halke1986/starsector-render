package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.context.commands.GLCommand;

import java.util.Arrays;

public class Frame {
    public GLCommand[] commands = new GLCommand[1];
    public int commandsSize = 0;

    public float[] args = new float[5];
    public int argsOffset = 0;

    public void add(GLCommand command) {
        if (commands.length <= commandsSize) {
            commands = BufferUtil.reallocate(GLCommand.class, commands.length * 2, commands);
            args = BufferUtil.reallocate(args.length * 2, args);
        }

        commands[commandsSize] = command;
        commandsSize++;
    }

    public void clear() {
        Arrays.fill(commands, null);
        commandsSize = 0;
        argsOffset = 0;
    }
}
