dictionary = ["below","down","go","going","going", "horn", "how","howdy","it","i","low","own","part","partner","sit"]

def substring(input, source)
  result = {} # {:going => 1, :go => 1}
  current_input = input # go 
  
  while current_input.length > 0 do # false
    source.each do |word| #
      next if word != current_input # false
        # this if is for first time word has been found
      if result[current_input] == nil #true
        result[current_input] = 1
        # this if is for when this word has been found before
      else
        result[current_input] += 1
      end
    end
    current_input = current_input[0...-1] 
  end
  result
end

answer = substring("going", dictionary)
print answer