require_relative "../app/game_of_life.rb"

RSpec.describe GameOfLife do
    it "should initialize with a board of size x,y" do
        expect(GameOfLife.new(5,4)).not_to eq(nil)
    end

    it "should return the current state of the board" do
        expect(GameOfLife.new(2,3).board).to eq([[false, false], [false, false], [false, false]])
    end
end
