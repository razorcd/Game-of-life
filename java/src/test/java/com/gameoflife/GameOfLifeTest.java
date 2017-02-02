package com.gameoflife;

import org.junit.Before;
import org.junit.Test;
import static org.hamcrest.CoreMatchers.*;


import static org.junit.Assert.*;

public class GameOfLifeTest {

    @Before
    public void setUp() throws Exception {
    }

    @Test
    public void gameInitializer() throws Exception {
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
    public void doesATick() {
        Boolean[][] matrix = new Boolean[][]{
                {false, false, false},
                {false, false, false},
                {false, false, false}
        };

        GameOfLife game = new GameOfLife(matrix);
        game.tick();

        assertThat(game.getMatrix(), is(new Boolean[][]{
                {false, false, false},
                {false, false, false},
                {false, false, false}
        }));
    }

    @Test
    public void cellWithLessThenTwoNeighboaursDies() {
        Boolean[][] matrix = new Boolean[][]{
                {false, false, false},
                {false, true,  false},
                {false, false, false}
        };

        GameOfLife game = new GameOfLife(matrix);
        game.tick();

        assertThat(game.getMatrix(), is(new Boolean[][]{
                {false, false, false},
                {false, false, false},
                {false, false, false}
        }));
    }
}