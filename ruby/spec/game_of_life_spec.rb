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

    describe "for rules" do
        TestCases::CASES.values.each do |test_case|
            # next unless test_case[:title] == "2 neighbours_true" # to run only one test case
            it "should run test case: #{test_case[:title]}, on matrix: #{test_case[:input].to_s}" do
                game = GameOfLife.new(test_case[:input])
                game.tick
                expect(game.board).to eq(test_case[:output])
            end
        end

    end

    it "should run on multiple itterations" do

        game = GameOfLife.new([
            [true,  true,  true, false], 
            [false, true,  false, true], 
            [true,  false, true, false],
            [true,  true, false, true],
        ])
        game.tick
        expect(game.board).to eq([
            [true,  true,  true,  false], 
            [false, false, false, true], 
            [true,  false, false, true],
            [true,  true,  true,  false],
        ])
        game.tick
        expect(game.board).to eq([
            [false, true,  true,  false], 
            [true,  false, false, true], 
            [true,  false, false, true], 
            [true,  true,  true,  false]
        ])
        game.tick
        expect(game.board).to eq([
            [false, true,  true,  false], 
            [true,  false, false, true], 
            [true,  false, false, true], 
            [true,  true,  true,  false]
        ])
    end
end
