require "./player.rb"
require "./board.rb"
require "./move.rb"

class Game
    def initialize
        @current_player = 0
        @win_condition_reached = false
    end

    def start_game
        player_one = Player.new
        player_one.set_name
        player_two = Player.new
        player_two.set_name
        @players = [player_one, player_two]
        puts "Welcome #{player_one.name} and #{player_two.name}. Let's play!"
        @board = Board.new
        @board.print
        turn while !@win_condition_reached 
    end   
    
    def turn
        move = Move.new
        move.make_move(@players[@current_player], @board)
        if @current_player == 0
            @current_player += 1
        else 
            @current_player -= 1
        end
        @board.print
    end
    
    def compute_win_dec
        [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 5, 9],
    [3, 5, 7],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9]
]
    end
    
    def winner

    end
end

game = Game.new
game.start_game