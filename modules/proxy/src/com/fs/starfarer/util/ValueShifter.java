package com.fs.starfarer.util;

import com.fs.starfarer.api.util.ValueShifterAPI;

public class ValueShifter implements ValueShifterAPI {
    @Override
    public float getBase() {
        return 0;
    }

    @Override
    public void setBase(float v) {
    }

    @Override
    public float getCurr() {
        return 0;
    }

    @Override
    public void shift(Object o, float v, float v1, float v2, float v3) {
    }

    @Override
    public void advance(float v) {
    }

    public float getShiftProgress(Object var1) {
        return 0;
    }

    public boolean isShifted() {
        return false;
    }
}
