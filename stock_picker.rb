def stock_picker(price_array) #This method returns the best day to buy and the best day to sell from a provided list of prices, with each price representing one day.
  
  return [] if price_array.length < 2 #this returns an empty array if there are less than two values since this is our minimum for a buy and sell day
  
  #Here we set the initial buy and sell day index as well as calculate the difference between the two values.
  buy_day = 0
  sell_day = 1
  max_difference = price_array[sell_day] - price_array[buy_day]
  
  price_array.each_with_index do |buy_price, current_buy_day| #each_with_index uses two inputs |value, index|
    ((current_buy_day + 1)...price_array.length).each do |current_sell_day| # ... is used to to ensure length uses an appropriate value since the first index is technically 0 which is not valid with the .length method
      #This is  
    end
end

puts stock_picker([6,11,24,4,2,69,22,10,45])
