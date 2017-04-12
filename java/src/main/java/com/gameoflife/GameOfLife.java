package com.gameoflife;

import java.util.Arrays;
import java.util.Optional;

public class GameOfLife {

    private Boolean[][] matrix;

    public GameOfLife(Boolean[][] matrix) {
        this.matrix = matrix;
    }

    /**
     * Return the matrix in it's current state
     * @return [Boolea[][]] the matrix in it's current state
     */
    public Boolean[][] getMatrix() {
        return matrix;
    }

    /**
     * Generate the matrix with the new states
     *
     * @return [Boolean[][]] The matrix with the new states
     */
    public void tick() {
        matrix = generateNewMatrix();
    }

    /**
     * Generate the matrix with the new states
     *
     * @return [Boolean[][]] The matrix with the new states
     */
    private Boolean[][] generateNewMatrix() {
        Boolean[][] tempMatrix = new Boolean[matrix.length][matrix[0].length];

        for(int i=0;i<matrix.length;i++) {
            for(int j=0;j<matrix[0].length;j++){
                tempMatrix[i][j] = getNextCellState(i, j);
            }
        }
        return tempMatrix;
    }

    /**
     *  Generate the next state of specified cell
     *
     * @param x the column position of the cell
     * @param y the row position of the cell
     * @return [Boolean] the next state of the specified cell
     */
    private Boolean getNextCellState(int x, int y) {
        Integer aliveNeighboursCount = getNeighboursFor(x,y);
        Boolean currentCell = matrix[x][y];

        return (currentCell && (aliveNeighboursCount == 2 || aliveNeighboursCount == 3)) ||
                !currentCell && (aliveNeighboursCount == 3);
    }

//    // Explicit version of getNextCellState()
//    private Boolean getNextCellState(int x, int y) {
//        if (matrix[x][y] == false && getNeighboursFor(x, y) == 3) { return true; }
//        if (getNeighboursFor(x, y) < 2) { return false; }
//        if (getNeighboursFor(x, y) == 2) { return matrix[x][y]; }
//        if (getNeighboursFor(x, y) == 3) { return matrix[x][y]; }
//        if (getNeighboursFor(x, y) > 3) { return false; }
//        return matrix[x][y];
//    }

    private Integer getNeighboursFor(int x, int y) {
        return (int) Arrays.asList(
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
