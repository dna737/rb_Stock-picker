def stock_picker(prices)
    profits = {}
    sorted_prices = prices.sort
    sorted_prices.each do|price| 
        index = prices.find_index(price)
        #We found the index. Find the highest number after that index.
        #this index represents the day we "bought" the stock.
        unless index == prices.size
            #take the decreasing prices:
            decreasing_prices = prices.sort.reverse
            decreasing_prices.each do|highest|
                if prices.find_index(higest) > index then 
                    
                end
            end
        end
    end
end

