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

});
