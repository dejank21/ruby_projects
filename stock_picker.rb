def stock_picker(price_array) #This method returns the best day to buy and the best day to sell from a provided list of prices, with each price representing one day.
  
  return [] if price_array.length < 2 #This returns an empty array if there are less than two values since this is our minimum for a buy and sell day
  
  #Here we set the default for the best days to buy and sell.
  best_days = [0, 1]
  best_profit = price_array[1] - price_array[0]
  
  0.upto(price_array.length - 2) do |buy_day| #This specifies the number of times we will iterate to determine a buy day
    (buy_day + 1).upto(price_array.length - 1) do |sell_day| #This uses each buy day to iterate up to the last value in the array as a possible sell day.
      profit = price_array[sell_day] - price_array[buy_day]
      
      if profit > best_profit
        best_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end
  best_days
end

puts stock_picker([6,11,24,4,2,69,22,10,45])
