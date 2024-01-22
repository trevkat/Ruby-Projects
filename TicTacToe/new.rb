
board = [['1', '2', '3'], ['4', '5', '6'], ['7', '8', '9']]

board.each do |row|
    puts row.join(" | ")
    puts "---------"
end

def player_move
    puts "where would you like to move?"
    move = gets.chomp.to_i
    move -= 1
    row = move / 3
    col = move % 3
    puts "[#{row}, #{col}]"
    board[row][col] = "X"
    board.each do |row|
        puts row.join(" | ")
        puts "---------"
    end
end
# how to take input for row and column

row = 1
col = 1
puts "What is your move?"
move = gets.chomp
move = "x"
board[row][col] = move


