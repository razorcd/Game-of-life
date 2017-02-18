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
                "true Cell with no neighbours",
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
            ),
            new MatrixGeneratorDto(
                "true Cell with one neighbour",
                new Boolean[][]{
                        {false, false, false},
                        {false, true,  false},
                        {true,  false, false}
                },
                new Boolean[][]{
                        {false, false, false},
                        {false, false, false},
                        {false, false, false}
                }
            ),
            new MatrixGeneratorDto(
                "true Cell with two neighbours",
                new Boolean[][]{
                        {false, false, true},
                        {false, true,  false},
                        {true,  false, false}
                },
                new Boolean[][]{
                        {false, false, false},
                        {false, true,  false},
                        {false, false, false}
                }
            ),
            new MatrixGeneratorDto(
                "true Cell with three neighbours",
                new Boolean[][]{
                        {true,  false, true},
                        {false, true,  false},
                        {true,  false, false}
                },
                new Boolean[][]{
                        {false, false, false},
                        {false, true,  false},
                        {false, false, false}
                }
            ),
            new MatrixGeneratorDto(
                "true Cell with four neighbours",
                new Boolean[][]{
                        {true,  false, true},
                        {false, true,  false},
                        {true,  false, true}
                },
                new Boolean[][]{
                        {false, false, false},
                        {false, false, false},
                        {false, false, false}
                }
            ),
            new MatrixGeneratorDto(
                "true Cell with five neighbours",
                new Boolean[][]{
                        {true,  false, true},
                        {false, true,  false},
                        {true,  true, true}
                },
                new Boolean[][]{
                        {false, false, false},
                        {false, false, false},
                        {true,  true,  true}
                }
            ),
            new MatrixGeneratorDto(
                "true Cell with six neighbours",
                new Boolean[][]{
                        {true,  true, true},
                        {false, true,  false},
                        {true,  true, true}
                },
                new Boolean[][]{
                        {true,  true,  true},
                        {false, false, false},
                        {true,  true,  true}
                }
            ),
            new MatrixGeneratorDto(
                "true Cell with all neighbours",
                new Boolean[][]{
                        {true, true, true},
                        {true, true, true},
                        {true, true, true}
                },
                new Boolean[][]{
                        {true,  false, true},
                        {false, false, false},
                        {true,  false, true}
                }
            ),
            new MatrixGeneratorDto(
                "true Cell with random neighbours on big matrix",
                new Boolean[][]{
                        {true,  false, true,  false, false, true},
                        {false, true,  false, true,  false, true},
                        {true,  false,  true,  false,  true, false},
                        {true,  true,  true,  true,  false, false}
                },
                new Boolean[][]{
                        {false,  false, true,  false, false, false},
                        {false, false,  false, true,  false, true},
                        {true,  false, false, false,  true, false},
                        {true,  false,  true,  true,  false, false}
                }
            )
        );
    }
}
