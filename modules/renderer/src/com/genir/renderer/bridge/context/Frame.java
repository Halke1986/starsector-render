package com.genir.renderer.bridge.context;

import java.util.Arrays;

public class Frame {
    public Runnable[] commands = new Runnable[1];
    public int size = 0;

    public void add(Runnable command) {
        if (commands.length <= size) {
            commands = BufferUtil.reallocate(Runnable.class, commands.length * 2, commands);
        }

        commands[size] = command;
        size++;
    }

    public void clear() {
        Arrays.fill(commands, null);
        size = 0;
    }
}
