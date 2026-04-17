package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.context.commands.GLCommand;

import java.util.Arrays;

public class Frame {
    public GLCommand[] commands = new GLCommand[1];
    public int size = 0;

    public void add(GLCommand command) {
        if (commands.length <= size) {
            commands = BufferUtil.reallocate(GLCommand.class, commands.length * 2, commands);
        }

        commands[size] = command;
        size++;
    }

    public void clear() {
        Arrays.fill(commands, null);
        size = 0;
    }
}
