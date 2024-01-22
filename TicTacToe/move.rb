class Move
    def make_move(player, board)
        puts "where would you like to move?"
        move = gets.chomp.to_i
        move -= 1
        row = move / 3
        col = move % 3
        puts "[#{row}, #{col}]"
        board.board[row][col] = player.symbol
    end
end
