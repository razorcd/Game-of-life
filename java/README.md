# Game-of-life

Game of life in Java. Developed using TDD.


## Usage


Initialize game with a matrix (array of arrays).
``` java
GameOfLife game = new GameOfLife(new Boolean[][]{
          {false, false, true},
          {false, true,  false},
          {true,  false, false}
      })
```


Generate next iteration by calling the `tick` method.
``` java
    game.tick()
```


Get current iteration by calling the `board` method.
``` java
game.getMatrix() // =>
        [
            [true,  true,  true,  false],
            [false, false, false, true],
            [true,  false, false, true],
            [true,  true,  true,  false],
        ]
```

Find more test cases in `/test/java/com/gameoflife/factory/MatrixGenerator.java`

## Tests

Run tests by simply running the following command.

``` java
mvn test
```
