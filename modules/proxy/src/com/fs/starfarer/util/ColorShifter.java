package com.fs.starfarer.util;

import com.fs.starfarer.api.util.ColorShifterAPI;

import java.awt.*;

public class ColorShifter implements ColorShifterAPI {
    @Override
    public Color getBase() {
        return null;
    }

    @Override
    public void setBase(Color color) {
    }

    @Override
    public Color getCurr() {
        return null;
    }

    @Override
    public void shift(Object o, Color color, float v, float v1, float v2) {
    }

    @Override
    public Color getCurrForBase(Color color) {
        return null;
    }

    public boolean isShifted() {
        return false;
    }
}
