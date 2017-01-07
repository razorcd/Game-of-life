require_relative "../app/game_of_life.rb"

RSpec.describe GameOfLife do
    it "should initialize with a board" do
        expect(GameOfLife.new([[false, true], [true, false]])).not_to eq(nil)
    end

    it "should return the current state of the board" do
        game = GameOfLife.new([[false, false], [false, false], [false, false]])
        expect(game.board).to eq([[false, false], [false, false], [false, false]])
    end

    it "should generate: Any live cell with fewer than two live neighbours dies" do
        game = GameOfLife.new([
            [false, false, false], 
            [false, true, false], 
            [false, false, false]
        ])
        game.tick
        expect(game.board).to eq([
            [false, false, false], 
            [false, false, false], 
            [false, false, false]
        ])
    end 
end
