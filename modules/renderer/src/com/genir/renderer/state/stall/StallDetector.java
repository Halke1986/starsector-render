package com.genir.renderer.state.stall;

public class StallDetector {
    static final int STALL_FRAMES = 60;
    static final int STALL_THRESHOLD = 30;

    private boolean stallLastFrame = false;
    private boolean stallThresholdExceeded = false;
    private int stallNumber = 0;
    private int frameNumber = 0;

    private boolean stallDetectionEnabled = false;

    public void enableDetection() {
        stallDetectionEnabled = true;
    }

    public void update() {
        if (stallLastFrame) {
            stallNumber++;
        }

        stallLastFrame = false;
        frameNumber++;

        if (frameNumber >= STALL_FRAMES) {
            if (stallNumber >= STALL_THRESHOLD) {
                stallThresholdExceeded = true;
            }

            stallNumber = 0;
            frameNumber = 0;
        }
    }

    public void detectStall() {
        if (stallDetectionEnabled) {
            stallLastFrame = true;
        }

        if (stallThresholdExceeded) {
            stallThresholdExceeded = false;
            throw new RuntimeException("Asynchronous pipeline stall");
        }
    }
}
