'use strict';
var matrixCases = require("./matrixCases.json");

describe('GameOfLife', function() {

  var GameOfLife;
  beforeEach(function() {
    GameOfLife = require('../lib/GameOfLife');
  });

  describe('initialization', function() {
    it('should set the initial matrix', function() {
      var game = new GameOfLife([[true], [false]]);
      expect(game.getMatrix()).toEqual([[true], [false]]);
    });
  });

  describe('with rules', function() {
    matrixCases.forEach(function(matrixCase) {
      it(matrixCase.name, function() {
        var game = new GameOfLife(matrixCase.input);
        game.tick();
        expect(game.getMatrix()).toEqual(matrixCase.output);
      });
    }, this);
  });

});
