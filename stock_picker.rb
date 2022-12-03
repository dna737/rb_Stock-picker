def stock_picker(prices)
    if(prices == prices.sort.reverse) then return "This is not the time to buy stocks :(" end
    result = {}
    prices.each_with_index do|price, i|
        #use index to slice the array from that part to the end.
        subarray = prices.slice(prices.find_index(price), prices.size)
        result[subarray.max - price] = [i, prices.find_index(subarray.max)] #storing the array of indices in the hash
    end
    #send the value corresponding to the highest key by uing hash[hash.keys.max]
    result[result.keys.max]
end

puts "Case #1:"
p stock_picker([17,3,6,9,15,8,6,1,10])
#Outputs [1,4] because that's when the profit is the highest ($15 -  $3 == $12)

puts "\nCase #2:"
p stock_picker([9,7,3,2,4,8,1,3])
#Outputs [3,5] because that's when the profit is the highest ($8 - $2 == $6)
