# Game-of-life

Game of life in Javascript. Developed using TDD.


## Setup

Run `npm install` to install all the required dependencies.

Developed using node v6.11.4.


## Tests

Run tests by simply calling the `npm run test` command in your shell.

Find more test cases in `spec/matrixCases.json`


## Usage

Initialize game with a matrix (array of arrays).
``` javascript
    var game = new GameOfLife([
            [true, false, true],
            [false, true, false],
            [false, false, true]
        ]);
```


Generate next itteration by calling the `tick` method.
``` javascript
    game.tick();
```


Get current itteration by calling the `board` method.
``` javascript
    game.getMatrix() // =>
        // [
        //     [false, true, false],
        //     [false, true, true],
        //     [false, false, false]
        // ]
```
