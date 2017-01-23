require "pry"
require "json"

class GameOfLife

    # Initialize game with a predefined board state.
    # board [Array<Array<Boolean>>] The board defined by an Array of Arrays. 
    #                               Cell values are booleans. allive = true, dead =false.
    #        E.g: [
    #                [true,  true,  true,  false], 
    #                [false, false, false, true], 
    #                [true,  false, false, true],
    #                [true,  true,  true,  false],
    #             ]
    def initialize board
        @board = board
        @length = board.first.size
        @width = board.size
    end

    # Returns the board game in currate state
    def board
        @board
    end

    # Generates a new itteration of the game
    def tick
        @board = generate_next_board
    end

    private

    # Returns the value of the next itteration for the entire board.
    def generate_next_board
        temp_board = JSON.parse(([[nil]*@length]*@width).to_json)
        @length.times do |i|
            @width.times do |j|
                temp_board[i][j] = generate_next_cell(i,j)
            end            
        end
        temp_board
    end

    # Returns the value of the next itteration for once cell defined by x,y coordinates.
    def generate_next_cell(x,y)
        alive_neighbours_count = alive_neighbours_count(x,y)
        if (alive_neighbours_count < 2) then return false end         #rule 1
        if (alive_neighbours_count == 2) then return @board[x][y] end #rule 2
        if (alive_neighbours_count == 3) then return true end         #rule 2 and 4
        if (alive_neighbours_count > 3) then return false end         #rule 3
        return @board[x][y]
    end

    # Counts the allive neighbours that surround the cell defined by the x,y coordinates.
    def alive_neighbours_count(x,y)
        [get(x-1,y-1), get(x,y-1), get(x+1,y-1),
         get(x-1,y),               get(x+1,y),
         get(x-1,y+1), get(x,y+1), get(x+1,y+1)
        ].select{|v| v==true}.count
    end

    # Gets the value of a cell by it's x,y coordinates. Returns nil if coordianates are off.
    def get(x,y)
        return nil if (x<0 || y<0 || x>@length-1 || y>@width-1)
        @board&.[](x)&.[](y)
    end
end