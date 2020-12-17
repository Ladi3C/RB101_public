=begin
Problem:
        Write a method 
        which takes a grocery list 

        (nested - array) of fruits with quantities 
        and converts it into an array of the correct number of each fruit.
Example:
        buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
        ["apples", "apples", "apples", "orange", "bananas","bananas"]
Data Structure:
        Input : nested array
        Output: flattened array
Algorithm:
          - iterate through each sub array and mutiply the number to the string
          - push result in a result array and return it
=end

def buy_fruit(nested_arr)
  result_arr = []
  counter = 0
  loop do
    current_sub = nested_arr[counter]
    current_sub[1].times { result_arr << current_sub[0]}

    counter += 1
    break if counter == nested_arr.size
  end
result_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

#buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#["apples", "apples", "apples", "orange", "bananas","bananas"]