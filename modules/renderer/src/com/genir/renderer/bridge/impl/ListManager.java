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

    private final Map<Integer, List<Runnable>> lists = new HashMap<>();

    public boolean isRecording() {
        return mode != 0;
    }

    public void record(Runnable command) {
        newList.add(command);

        if (mode == org.lwjgl.opengl.GL11.GL_COMPILE_AND_EXECUTE) {
            command.run();
        }
    }

    public void glNewList(int list, int mode) {
        asert(!isRecording());
        asert(mode == org.lwjgl.opengl.GL11.GL_COMPILE || mode == org.lwjgl.opengl.GL11.GL_COMPILE_AND_EXECUTE);

        this.newListID = list;
        this.mode = mode;

        newList = new ArrayList<>();
    }

    public void glEndList() {
        lists.put(newListID, newList);

        mode = 0;
    }

    public void glCallList(int list) {
        asert(!isRecording());

        List<Runnable> listToCall = lists.get(list);
        if (listToCall != null) {
            for (Runnable command : listToCall) {
                command.run();
            }
        }
    }
}
