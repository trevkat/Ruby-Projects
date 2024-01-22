# enter name and move
class Player
    attr_reader :name, :symbol
    @@player_num = 0
    def initialize
        if @@player_num == 0 
            @symbol = "X"
        else 
            @symbol = "O"
        end 
        @@player_num += 1 
    end

    def set_name
        puts "What is your name?"
        @name = gets.chomp
        puts "Hello, #{@name}!"
    end
end