class Board
    attr_reader :board
    def initialize 
        @board = [
            ['1', '2', '3'],
            ['4', '5', '6'],
            ['7', '8', '9']
        ] 
    end

    def print
        @board.each do |row|
            puts row.join(" | ")
            puts "---------"
        end
    end

    def make_move(row, col, value)
        @board[row][col] = value
    end
end