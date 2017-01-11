require "pry"
require "json"

class GameOfLife

    def initialize board
        @board = board
        @length = board.first.size
        @width = board.size
    end

    def board
        @board
    end

    def tick
        @board = generate_next_board
    end

    private

    def generate_next_board
        temp_board = JSON.parse(([[nil]*@length]*@width).to_json) #JSON.parse(@board.to_json)
        @length.times do |i|
            @width.times do |j|
                # puts "#{i}, #{j}"
                temp_board[i][j] = generate_next_cell(i,j)
            end            
        end
        temp_board
    end

    def generate_next_cell(x,y)
        alive_neighbours_count = alive_neighbours_count(x,y)
        if (alive_neighbours_count < 2) then return false end
        if (alive_neighbours_count == 2) then return @board[x][y] end
        if (alive_neighbours_count == 3) then return @board[x][y] end
        if (alive_neighbours_count > 3) then return false end
        return @board[x][y]
    end

    def alive_neighbours_count(x,y)
        [get(x-1,y-1), get(x,y-1), get(x+1,y-1),
         get(x-1,y),               get(x+1,y),
         get(x-1,y+1), get(x,y+1), get(x+1,y+1)
    ].select{|v| v==true}.count
    end

    def get(x,y)
        return nil if (x<0 || y<0 || x>@length-1 || y>@width-1)
        @board&.[](x)&.[](y)
    end

    # def set(x,y,val)
    #     @board[x][y] = val
    # end
end