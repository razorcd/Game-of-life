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
   * returns nothing.
   */
  GameOfLife.prototype.tick = function() {
    this._matrix = this._getNextMatrix();
  }

  /**
   * Get the current matrix.
   * returns [boolean[][]] The current matrix.
   */
  GameOfLife.prototype.getMatrix = function() { return this._matrix; }


  /**
   * Get the matrix of the next iteration.
   * returns [boolean[][]] The next iteration matrix.
   */
  GameOfLife.prototype._getNextMatrix = function() {
    var tempMatrix = JSON.parse(JSON.stringify(this._matrix));

    for (var i = 0; i < this._matrix.length; i++) {
      for (var j = 0; j < this._matrix[0].length; j++) {
        tempMatrix[i][j] = this._getNextCell(i,j);
      }
    }
    return tempMatrix;
  }

  /**
   * Get the cell state of the next iteration.
   * @param x [Integer] The column position of the cell.
   * @param y [Integer] The row position of the cell.
   * returns [Boolean] The next state of the cell.
   */
  GameOfLife.prototype._getNextCell = function(x,y) {
    if (this._getCellNoighbourCount(x,y) < 2) { return false; }
    if (this._getCellNoighbourCount(x,y) == 2) { return this._matrix[x][y]; }
    if (this._getCellNoighbourCount(x,y) == 3) { return true; }
    if (this._getCellNoighbourCount(x,y) > 4) { return false; }
    return false;
  }

  /**
   * Get the alive neighbours count of the specified cell.
   * @param x [Integer] The column position of the cell.
   * @param y [Integer] The row position of the cell.
   * returns [Integer] The number of alive neighbours.
   */
  GameOfLife.prototype._getCellNoighbourCount = function(x,y) {
    return [
      this._getCell(x-1, y-1), this._getCell(x, y-1), this._getCell(x+1, y-1),
      this._getCell(x-1, y),                          this._getCell(x+1, y),
      this._getCell(x-1, y+1), this._getCell(x, y+1), this._getCell(x+1, y+1),
    ].filter((cell) => {return cell == true; } ).length;
  }

  /**
   * Get the current state of the specified cell.
   * @param x [Integer] The column position of the cell.
   * @param y [Integer] The row position of the cell.
   * returns [Boolean] The current state of the cell.
   */
  GameOfLife.prototype._getCell = function(x,y) {
    if (x<0 || y<0 || x>this._matrix.length-1 || y>this._matrix[0].length-1) { return null; }
    return this._matrix[x][y];
  }

  return GameOfLife;
})();
