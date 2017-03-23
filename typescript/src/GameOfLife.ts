export default class GameOfLife {
    private matrix:Boolean[][];

    /**
     * Initialises a new game.
     * @param matrix [Boolean[][]] The initial matrix.
     */
    constructor(matrix:Boolean[][]) {
        this.matrix = matrix;
    }

    /**
     * Returns the matrix in the current state.
     */
    getBoard():Boolean[][] {
        return this.matrix;
    }

    /**
     * Generate an iteration of the game.
     */
    tick():void {
       this.matrix = this.generateNextMatrix(); 
    }

    private generateNextMatrix():Boolean[][] {
        let tempMatrix:Boolean[][] = JSON.parse(JSON.stringify(this.matrix));
        for (var i = 0; i < this.matrix.length; i++) {
            for (var j = 0; j < this.matrix[0].length; j++) {
                tempMatrix[i][j] = this.getNexyCellState(i,j);                
            }
        }
        return tempMatrix;
    }

    private getNexyCellState(x:number, y:number):Boolean {
        if (this.getNeighbourCount(x,y) < 2) { return false; }
        if (this.getNeighbourCount(x,y) == 2) { return this.matrix[x][y]; }
        if (this.getNeighbourCount(x,y) == 3) { return true; }
        if (this.getNeighbourCount(x,y) > 3) { return false; }
        return false;
    }

    private getNeighbourCount(x:number, y:number):number {
        return [
            this.getCell(x-1,y-1), this.getCell(x,y-1), this.getCell(x+1,y-1),
            this.getCell(x-1,y),                        this.getCell(x+1,y),
            this.getCell(x-1,y+1), this.getCell(x,y+1), this.getCell(x+1,y+1)
        ].filter((val:Boolean) => {return val == true}).length
    }

    private getCell(x:number, y:number):Boolean {
        if (x<0 || y<0 || x>this.matrix.length-1 || y>this.matrix[0].length-1) {return null;}
        return this.matrix[x][y];
    }
}
