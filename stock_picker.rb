def stock_picker(prices)
    arr = Array.new(0)
    prices.each do |price|
        arr.push(modify_prices(prices, price))
    end
    arr
end

def modify_prices(prices, price)
    prices.map{|element| element-price}
end

p stock_picker([17,3,6,9,15,8,6,1,10])
