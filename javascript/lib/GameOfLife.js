'use strict';

module.exports = (function() {

  /**
   * Initializes the game.
   * @param {boolean[][]} matrix
   */
  var GameOfLife = function(matrix) {
    this._matrix = matrix;
  };

  /**
   * Generates a new game iteration.
   */
  GameOfLife.prototype.tick = function() {
    this._matrix = this._getNextMatrix();
  }

  /**
   * Returns the current matrix.
   * returns [boolean[][]] The current matrix.
   */
  GameOfLife.prototype.getMatrix = function() { return this._matrix; }


  GameOfLife.prototype._getNextMatrix = function() {
    var tempMatrix = JSON.parse(JSON.stringify(this._matrix));

    for (var i = 0; i < this._matrix.length; i++) {
      for (var j = 0; j < this._matrix[0].length; j++) {
        tempMatrix[i][j] = this._getNextCell(i,j);
      }
    }
    return tempMatrix;
  }

  GameOfLife.prototype._getNextCell = function(x,y) {
    if (this._getCellNoighbourCount(x,y) < 2) { return false; }
    if (this._getCellNoighbourCount(x,y) == 2) { return this._matrix[x][y]; }
    return false;
  }

  GameOfLife.prototype._getCellNoighbourCount = function(x,y) {
    return [
      this._getCell(x-1, y-1), this._getCell(x, y-1), this._getCell(x+1, y-1),
      this._getCell(x-1, y),                          this._getCell(x+1, y),
      this._getCell(x-1, y+1), this._getCell(x, y+1), this._getCell(x+1, y+1),
    ].filter((cell) => {return cell == true; } ).length;
  }

  GameOfLife.prototype._getCell = function(x,y) {
    if (x<0 || y<0 || x>this._matrix.length-1 || y>this._matrix[0].length-1) { return null; }
    return this._matrix[x][y];
  }

  return GameOfLife;
})();
