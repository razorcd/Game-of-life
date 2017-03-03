export default class GameOfLife {
    private matrix:Boolean[][];

    constructor(matrix:Boolean[][]) {
        this.matrix = matrix;
    }

    getBoard():Boolean[][] {
        return this.matrix;
    }

    tick():void {
        
    }
}
