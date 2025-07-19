package com.genir.renderer.bridge.impl;

public class State {
//    public static final ListManager listManager = new ListManager();

//    static void process(Runnable command) {
//        if (listManager.isRecording()) {
//            listManager.record(command);
//        } else {
//            command.run();
//        }
//    }
//
//    static void processNoList(Runnable command) {
//        command.run();
//    }

    //    public static final Processor processor = new Processor();

    public static final Executor exec = new Executor();
    public static final StateCache stateCache = new StateCache();
}
