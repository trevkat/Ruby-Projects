def hi(how_many)
    i = 0
    while i < how_many
      puts "Hello there!"
      i += 1
    end
  end
  
  answer = 0
  while answer < 5
    print "How many times do you want to say hello?"
    answer = gets.chomp.to_i
    hi(answer)
  end
  