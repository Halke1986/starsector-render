package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.context.commands.GLCommand;

import java.util.Arrays;

public class Frame {
    public GLCommand[] commands = new GLCommand[1];
    public int size = 0;

    public int[] args = new int[1];
    public int argsOffset = 0;

    public void add(GLCommand command) {
        if (commands.length <= size) {
            commands = BufferUtil.reallocate(GLCommand.class, commands.length * 2, commands);
        }

        commands[size] = command;
        size++;
    }

    public void ensureAuxDataCapacity(int size) {
        while (args.length <= argsOffset + size) {
            args = BufferUtil.reallocate(args.length * 2, args);
        }
    }

    public void clear() {
        Arrays.fill(commands, null);
        size = 0;
        argsOffset = 0;
    }
}
