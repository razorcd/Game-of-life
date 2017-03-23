# Game-of-life

Game of life in Typescript. Developed using TDD.


## Setup

- Run `npm install` to install all the required dependencies.
- Run `npm run postinstall` to install all required Typescript typings.

Developed using node v6.11.4.


## Usage


Initialize game with a matrix (array of arrays).
``` typescript
let game:GameOfLife = new GameOfLife([
        [true,false,true],
        [true,true,false],
        [true,false,true]
    ]);
```


Generate next itteration by calling the `tick` method.
``` typescript
    game.tick()
```


Get current itteration by calling the `board` method.
``` typescript
game.getBoard() # =>
        [
            [true,  true,  true,  false], 
            [false, false, false, true], 
            [true,  false, false, true],
            [true,  true,  true,  false],
        ]
```

## Tests

Run tests by simply calling the `npm run test` command in your shell.
