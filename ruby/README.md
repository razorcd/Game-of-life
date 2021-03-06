# Game-of-life

Game of life in Ruby. Developed using TDD.


## Setup

Run `bundle` to install all required dependencies.


## Tests

Run tests by simply running the `rspec` command.

Find more test cases in `spec/fixtures/test_cases.rb`

## Usage


Initialize game with a matrix (array of arrays).
``` ruby
game = GameOfLife.new([
        [true,  true,  true, false],
        [false, true,  false, true],
        [true,  false, true, false],
        [true,  true, false, true],
    ])
```


Generate next itteration by calling the `tick` method.
``` ruby
    game.tick
```


Get current itteration by calling the `board` method.
``` ruby
game.board # =>
        # [
        #     [true,  true,  true,  false],
        #     [false, false, false, true],
        #     [true,  false, false, true],
        #     [true,  true,  true,  false],
        # ]
```
