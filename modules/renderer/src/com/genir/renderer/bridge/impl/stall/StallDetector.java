package com.genir.renderer.bridge.impl.stall;

public class StallDetector {
    static final int STALL_FRAMES = 60;
    static final int STALL_THRESHOLD = 30;

    private final StateCache stateCache;

    private boolean stallLastFrame = false;
    private boolean stallThresholdExceeded = false;
    private int stallNumber = 0;
    private int frameNumber = 0;

    private boolean stallDetectionEnabled = false;
    private boolean displayIsActive = true;

    public StallDetector(StateCache stateCache) {
        this.stateCache = stateCache;
    }

    public void enableDetection() {
        stallDetectionEnabled = true;
    }

    public void update() {
        if (stallLastFrame) {
            stallNumber++;
        }

        stallLastFrame = false;
        frameNumber++;

        displayIsActive = stateCache.isAvailable() && stateCache.getDisplayIsActive();

        if (frameNumber >= STALL_FRAMES) {
            if (displayIsActive) {
                if (stallNumber >= STALL_THRESHOLD) {
                    stallThresholdExceeded = true;
                }
            }

            stallNumber = 0;
            frameNumber = 0;
        }
    }

    public void detectStall() {
        if (displayIsActive && stallDetectionEnabled) {
            stallLastFrame = true;
        }

        if (stallThresholdExceeded) {
            stallThresholdExceeded = false;
            throw new RuntimeException("Asynchronous pipeline stall");
        }
    }
}
