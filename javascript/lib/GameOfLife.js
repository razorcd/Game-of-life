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
    for (var i = 0; i < this._matrix.length; i++) {
      for (var j = 0; j < this._matrix[0].length; j++) {
        this._matrix[i][j] = false;
      }
    }
  }

  /**
   * Returns the current matrix.
   * returns [boolean[][]] The current matrix.
   */
  GameOfLife.prototype.getMatrix = function() { return this._matrix; }

  return GameOfLife;
})();
