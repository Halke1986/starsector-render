package com.genir.renderer.bridge;

public class Bridge {
    static String unsupportedOperation;

    static final ListManager listManager = new ListManager();

    static void process(Runnable command) {
        if (listManager.isRecording()) {
            listManager.record(command);
        } else {
            command.run();
        }
    }

    static void processNoList(Runnable command) {
        command.run();
    }

    static void throwUnsupportedOperation(String operation) {
        unsupportedOperation = operation;
        throw new UnsupportedOperationException(operation);
    }

    static void assertNoUnsupportedOperation() {
        if (unsupportedOperation != null) {
            throw new UnsupportedOperationException(unsupportedOperation);
        }
    }
}
