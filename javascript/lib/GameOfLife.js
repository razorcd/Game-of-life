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
   * Returns the current matrix.
   * returns [boolean[][]] The current matrix.
   */
  GameOfLife.prototype.getMatrix = function() { return this._matrix; }

  return GameOfLife;
})();
