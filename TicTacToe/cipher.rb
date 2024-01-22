def caesar_cipher(input, offset)
    alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
    result = []
  
    if !input.is_a?(String)
      puts "#{input} is not a string"
      return
    end
    input.chars.each do |letter|
      if letter == " "
        result.push(" ")
        next
      end
      letter_index = alphabet.index(letter) # letter_index = 7
      if letter_index == nil
        result.push(letter)
        next
      end
      target_index = letter_index + offset
      alphabet[target_index]
      result.push(alphabet[target_index % alphabet.length])
    end
    result.join
  end
  
  puts caesar_cipher("hello there", 2)
  