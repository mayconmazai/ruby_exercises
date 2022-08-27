price_by_day = [17,3,6,9,15,8,6,1,10] # => Find the best prices betwen day 0 and 8.

def stock_picker(price_by_day)
  best_gain = 0
  best_days = []
    price_by_day.each_with_index do |price, day|
        price_by_day.each_with_index do |price2, day2|     
            if day2 > day && price2 - price > best_gain
                best_gain = price2 - price
                best_days = [day, day2]
            end
        end
    end
    puts "Best days to buy: #{best_days[0]}, sell: #{best_days[1]}"    
end

stock_picker(price_by_day)