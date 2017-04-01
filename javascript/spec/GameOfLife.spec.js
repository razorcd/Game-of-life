'use strict';

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

  describe('rules', function() {
    it('dead cell with no neighbours', function() {
      var game = new GameOfLife([
        [false, false, false],
        [false, false, false],
        [false, false, false]
      ]);
      game.tick();
      expect(game.getMatrix()).toEqual([
          [false, false, false],
          [false, false, false],
          [false, false, false]
        ]);
    });

    it('alive cell with no neighbours', function() {
      var game = new GameOfLife([
        [false, false, false],
        [false, true, false],
        [false, false, false]
      ]);
      game.tick();
      expect(game.getMatrix()).toEqual([
          [false, false, false],
          [false, false, false],
          [false, false, false]
        ]);
    });
  });

});
