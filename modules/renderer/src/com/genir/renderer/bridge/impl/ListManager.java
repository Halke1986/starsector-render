package com.genir.renderer.bridge.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.genir.renderer.Debug.asert;

public class ListManager {
    private int mode = 0;
    private int newListID;
    private List<Runnable> newList;

    private final Map<Integer, Runnable[]> lists = new HashMap<>();

    public boolean isRecording(Runnable command) {
        if (mode != 0) {
            record(command);
        }

        return mode != 0;
    }

    public boolean isNotRecording() {
        return mode == 0;
    }

    public void record(Runnable command) {
        newList.add(command);

        if (mode == org.lwjgl.opengl.GL11.GL_COMPILE_AND_EXECUTE) {
            mode = 0;
            command.run();
            mode = org.lwjgl.opengl.GL11.GL_COMPILE_AND_EXECUTE;
        }
    }

    public void glNewList(int list, int mode) {
        asert(isNotRecording());
        asert(mode == org.lwjgl.opengl.GL11.GL_COMPILE || mode == org.lwjgl.opengl.GL11.GL_COMPILE_AND_EXECUTE);

        this.newListID = list;
        this.mode = mode;

        newList = new ArrayList<>();
    }

    public void glEndList() {
        lists.put(newListID, newList.toArray(new Runnable[0]));

        mode = 0;
    }

    public void glCallList(int list) {
        asert(isNotRecording());

        Runnable[] listToCall = lists.get(list);
        if (listToCall != null) {
            // for-each loop over a list is a performance bottleneck, according to a profiler.
            // Simple for loop over an array is much faster.
            for (int i = 0; i < listToCall.length; i++)
                listToCall[i].run();
        }
    }
}
