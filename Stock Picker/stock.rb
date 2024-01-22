def stock_picker(prices_per_day)
    prices_per_day.each_with_index do |buy_price, index|
      i = index
      while i < prices_per_day.length
        print "[#{buy_price}, #{prices_per_day[i]}]"
        i += 1
      end
    end
  end
  
  stock_picker([17,3,6,9,15,8,6,1,10])