require_relative "../app/game_of_life.rb"
require_relative "fixtures/test_cases"

RSpec.describe GameOfLife do
    it "should initialize with a board" do
        expect(GameOfLife.new([[false, true], [true, false]])).not_to eq(nil)
    end

    it "should return the current state of the board" do
        game = GameOfLife.new([[false, false], [false, false], [false, false]])
        expect(game.board).to eq([[false, false], [false, false], [false, false]])
    end

    describe "rules" do
        TestCases::CASES.values.each do |test_case|
            it "should run test case: #{test_case[:title]}" do
                game = GameOfLife.new(test_case[:input])
                game.tick
                expect(game.board).to eq(test_case[:output])
            end
        end

    end

end
