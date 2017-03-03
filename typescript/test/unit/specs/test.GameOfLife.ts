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
        expect(game.getBoard()).toEqual(matrix)
    });

    describe('with rules', ()=>{
        it('cell should live when it is a false cell with no neighbours', ()=>{
            let game:GameOfLife = new GameOfLife([
                    [false,false,false],
                    [false,false,false],
                    [false,false,false]
                ]);
            game.tick();
            expect(game.getBoard()).toEqual([
                    [false,false,false],
                    [false,false,false],
                    [false,false,false]
                ])
        });

        it('cell should die when it is a true cell with no neighbours', ()=>{
            let game:GameOfLife = new GameOfLife([
                    [false,false,false],
                    [false,true,false],
                    [false,false,false]
                ]);
            game.tick();
            expect(game.getBoard()).toEqual([
                    [false,false,false],
                    [false,false,false],
                    [false,false,false]
                ])
        });
    })

});
