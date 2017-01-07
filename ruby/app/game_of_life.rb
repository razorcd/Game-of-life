require "pry"

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
        @length.times do |i|
            @width.times do |j|
                puts "#{i}, #{j}"
                calculate!(i,j)
            end            
        end
    end

    private

    def calculate!(x,y)
        alive_neighbours_count = alive_neighbours_count(x,y)
        if (alive_neighbours_count < 2) then set(x,y,false) end
    end

    def alive_neighbours_count(x,y)
        [get(x-1,y-1), get(x,y-1), get(x+1,y-1),
         get(x-1,y),               get(x+1,y),
         get(x-1,y+1), get(x,y+1), get(x+1,y+1)
    ].select{|v| v==true}.count
    end

    def get(x,y)
        @board&.[](x)&.[](y)
    end

    def set(x,y,val)
        @board[x][y] = val
    end
end