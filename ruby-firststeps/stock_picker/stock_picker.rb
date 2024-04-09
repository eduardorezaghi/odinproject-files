def stock_picker(stocks)
  days = []
  max = 0
  # For each day, compare with the rest of the days
  stocks.each_with_index do |buy, i|
    stocks.each_with_index do |sell, j|
      # If the sell day is greater than the buy day
      if j > i
        # If the difference between the sell and buy days is greater than the max
        if sell - buy > max
          # Update the max and the days
          days = [i, j]
          max = sell - buy
        end
      end
    end
  end
  return days
end
