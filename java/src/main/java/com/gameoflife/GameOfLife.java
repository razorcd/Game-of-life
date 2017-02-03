package com.gameoflife;

import java.util.Arrays;
import java.util.Optional;

public class GameOfLife {

    private Boolean[][] matrix;

    public GameOfLife(Boolean[][] matrix) {
        this.matrix = matrix;
    }

    public Boolean[][] getMatrix() {
        return matrix;
    }

    public void tick() {
        matrix = generateNewMatrix();
    }

    private Boolean[][] generateNewMatrix() {
        Boolean[][] tempMatrix = new Boolean[matrix.length][matrix[0].length];

        for(int i=0;i<matrix.length;i++) {
            for(int j=0;j<matrix[0].length;j++){
                tempMatrix[i][j] = getNextCellState(i, j);
            }
        }
        return tempMatrix;
    }

    private Boolean getNextCellState(int i, int j) {
            if (getNeighboursFor(i,j) < 2 ) { return false; }
            return matrix[i][j];
    }

    private Long getNeighboursFor(int x, int y) {
        return Arrays.asList(
                getCell(x-1, y-1), getCell(x, y-1), getCell(x+1, y-1),
                getCell(x-1, y),                            getCell(x+1, y),
                getCell(x-1, y+1), getCell(x, y+1), getCell(x+1, y+1)
        ).stream().filter(value -> (value.isPresent() && value.get() == true)).count();
    }

    private Optional<Boolean> getCell(int x, int y) {
        if (x<0 || y<0 || x>matrix.length-1 || y>matrix[0].length-1) { return Optional.empty(); }
        return Optional.of(matrix[x][y]);
    }
}



