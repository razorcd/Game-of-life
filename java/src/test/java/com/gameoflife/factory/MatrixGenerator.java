package com.gameoflife.factory;

import java.util.Arrays;
import java.util.List;

public class MatrixGenerator {

    static public List<MatrixGeneratorDto> getList() {
        return Arrays.asList(
            new MatrixGeneratorDto(
                "false Cell with no neighbours should change nothing",
                new Boolean[][]{
                        {false, false, false},
                        {false, false, false},
                        {false, false, false}
                },
                new Boolean[][]{
                        {false, false, false},
                        {false, false, false},
                        {false, false, false}
                }
            ),
            new MatrixGeneratorDto(
                "true Cell with no neighbours should die",
                new Boolean[][]{
                        {false, false, false},
                        {false, true,  false},
                        {false, false, false}
                },
                new Boolean[][]{
                        {false, false, false},
                        {false, false, false},
                        {false, false, false}
                }
            )

        );
    }
}
