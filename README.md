# rb_Stock-picker
A simple ruby program that gives the best day to buy and sell a stock whenever an array of prices is provided.

![image](https://user-images.githubusercontent.com/102070227/205466595-d15eb848-2284-4db3-a46c-e7e9c0786e96.png)

### Input:

The input provided is an array where each element indicates the price of a specific stock on each day.

### Objective:

Find the best day to buy and sell the stock. The main objective here is to maximize profit.

### Thought process:

While iterating through the elements of the array, the current element will be considered as the day we're "buying" the stock, and the elements after that will be our choices to sell the stock. We'll pick the highest element out of these and that will be our best day to "sell" (since we want to maximize our profit).

###### [BASE CASE] If the given stock prices are all in descending order, there's no point in buying the stock since we won't get any profit from it.

##### Ruby methods used: I used ```array#slice``` to create a subarray from the current element to the end of the given array (inclusive).

```prices.slice(index_of_current_element_in_the_given_array, size_of_the_given_array)```

###### Note: the provided arguments above are only for the sake of understanding. I've used the abridged versions of these sentences in the actual code.

###### Using ```array#slice``` also takes care of edge cases where the current element is the last element of the given array.

I then used ```array#max``` to find the highest element from this array.

### Storing data:

I used a hashmap with profits (the price difference between the current price and the highest price of the subarray) as the keys and [buy_index, sell_index] as the values.

### Getting the final result:

I used ```hash[hash.keys.max]``` to find the best day to sell and buy the stocks.

Thanks for reading!

###### This project is a part of [The Odin Project](https://www.theodinproject.com/)
