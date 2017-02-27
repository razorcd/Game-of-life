'use strict';

describe('GameOfLife', function() {

  var GameOfLife;
  beforeEach(function() {
    GameOfLife = require('../lib/GameOfLife');
  });

  describe('Your first test', function() {

    it('does something meaningful', function() {
      expect(GameOfLife.prop1).toEqual('prop1');
    });

  });

});
