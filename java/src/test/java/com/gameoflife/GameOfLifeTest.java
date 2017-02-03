package com.gameoflife;

import com.gameoflife.factory.MatrixGenerator;
import org.junit.Test;
import static org.hamcrest.CoreMatchers.*;

import static org.junit.Assert.*;

public class GameOfLifeTest {

    @Test
    public void testGameInitializer() throws Exception {
        Boolean[][] matrix = new Boolean[][]{
            {false, false, true},
            {false, true,  false},
            {true,  false, false}
        };

        GameOfLife game = new GameOfLife(matrix);
        assertThat(game.getMatrix(), is(new Boolean[][]{
                {false, false, true},
                {false, true,  false},
                {true,  false, false}
        }));
    }

    @Test
    public void testGameRules() {
        MatrixGenerator.getList().forEach(
                matrixGeneratorDto -> {
                    System.out.println("Running testGameRules(): " + matrixGeneratorDto.getReason());
                    GameOfLife game = new GameOfLife(matrixGeneratorDto.getInput());
                    game.tick();
                    assertThat(matrixGeneratorDto.getReason(), game.getMatrix(), is(matrixGeneratorDto.getOutput()));
                }
        );
    }
}