import GameOfLife from '../../../src/GameOfLife';

describe('GameOfLife', () => {
    it('initializes with a board', () => {
        let game:GameOfLife = new GameOfLife([
            [false,true,false],
            [true,false,true],
            [true,false,true]
        ]);
        expect(game).toBeDefined;
    });

    it('can read the set board', () => {
        let matrix:Boolean[][] = [
            [false,true,false],
            [true,false,true],
            [true,false,true]
        ];
        let game:GameOfLife = new GameOfLife(matrix);
        expect(game.getBoard()).toBe(matrix)
    });

});
