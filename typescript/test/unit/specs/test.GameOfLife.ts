import GameOfLife from '../../../src/GameOfLife';

describe('GameOfLife', () => {
    it('initializes with a board', () => {
        let game:GameOfLife = new GameOfLife([
            [false,true,false],
            [true,false,true],
            [true,false,true]
        ]);
        expect(game).toBeDefined
    });
});
