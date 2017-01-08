require_relative "../app/game_of_life.rb"

RSpec.describe GameOfLife do
    it "should initialize with a board" do
        expect(GameOfLife.new([[false, true], [true, false]])).not_to eq(nil)
    end

    it "should return the current state of the board" do
        game = GameOfLife.new([[false, false], [false, false], [false, false]])
        expect(game.board).to eq([[false, false], [false, false], [false, false]])
    end

    describe "rules" do
        test_cases = {
            all_false: {
                title: "All false.",
                input: 
                    [
                        [false, false, false], 
                        [false, false, false], 
                        [false, false, false]
                    ],
                output:    
                    [
                        [false, false, false], 
                        [false, false, false], 
                        [false, false, false]
                    ]
            },
            middle_true: {
                title: "Middle true",
                input: 
                    [
                        [false, false, false], 
                        [false, true,  false], 
                        [false, false, false]
                    ],
                output:    
                    [
                        [false, false, false], 
                        [false, false, false], 
                        [false, false, false]
                    ]
            },
        }

        test_cases.values.each do |test_case|
            it "should run test case: #{test_case[:title]}" do
                game = GameOfLife.new(test_case[:input])
                game.tick
                expect(game.board).to eq(test_case[:output])
            end
        end

    end

end
