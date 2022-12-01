def stock_picker(prices)
    if prices == prices.sort.reverse then
        return 0 #since there's no point in buying stocks now
    end 
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
                if prices.find_index(highest) > index then 
                    difference = highest-price
                    unless profits.has_key?(difference)
                    profits[difference] = Array.new(0).push(index).push(prices.find_index(highest))
                    end
                end
            end
        end
    end
    #After we've implemented that for each stock, find the maximum key and return its corresponding value
    profits.max_by(&:first).last
    #Credit to @mahemoff for the statement above: https://stackoverflow.com/questions/6040494/how-to-find-the-key-of-the-largest-value-hash#comment52054725_6040733
end

def new_stock_picker(prices)
    if prices == prices.sort.reverse then
        return 0 #no point in trading if you won't have any profit
    end

    sorted_prices = prices.sort
    reverse_prices = prices.sort.reverse
    result = Array.new(0)
    sorted_prices.each do|curr_price|
        reverse_prices.each do|highest|
            if(prices.find_index(curr_price) < prices.find_index(highest)) then
                if(result[0] != nil) then 
                    result.pop                    
                end
                result.push(highest - curr_price).push(Array.new(0).push(prices.find_index(curr_price)).push(prices.find_index(highest)))
            end
        end
    end
end
p new_stock_picker([17,3,6,9,15,8,6,1,10])

