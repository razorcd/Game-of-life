package com.gameoflife.factory;

import java.util.Arrays;

public class MatrixGeneratorDto {

    private String reason;
    private Boolean[][] input;
    private Boolean[][] output;

    public MatrixGeneratorDto(String reason, Boolean[][] input, Boolean[][] output) {
        this.reason = reason;
        this.input = input;
        this.output = output;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public Boolean[][] getInput() {
        return input;
    }

    public void setInput(Boolean[][] input) {
        this.input = input;
    }

    public Boolean[][] getOutput() {
        return output;
    }

    public void setOutput(Boolean[][] output) {
        this.output = output;
    }
}
