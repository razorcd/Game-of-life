export default class GameOfLife {
    private matrix:Boolean[][];

    constructor(matrix:Boolean[][]) {
        this.matrix = matrix;
    }

    getBoard():Boolean[][] {
        return this.matrix;
    }

    tick():void {
       this.matrix = this.generateNextMatrix(); 
    }

    private generateNextMatrix():Boolean[][] {
        let tempMatrix:Boolean[][] = JSON.parse(JSON.stringify(this.matrix));
        for (var i = 0; i < this.matrix.length-1; i++) {
            for (var j = 0; j < this.matrix[0].length-1; j++) {
                tempMatrix[i][j] = false;                
            }
        }
        return tempMatrix;
    }
}
