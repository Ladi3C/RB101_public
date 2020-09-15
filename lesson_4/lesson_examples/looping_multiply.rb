=begin

Problem:  Create a method that can take an additional arugment to determine the tranformation criteria.

Example: multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
Input: array
Output: new array

Algorithm: 

- define method multiply
- takes two arugments (array, number)
- set empty variable multiplied_numbers that hold an empty array
- set a counter
- create a loop
- set break condition 
- set the current value, multiply number to it and push it to empty variable
- increase counter
- let the empty variable be the last line executed
=end


def multiply(arr, num)
multiplied_arr = []
counter = 0

  loop do
    break if counter == arr.size

    current_num = arr[counter]
    multiplied_arr << current_num * num

    counter += 1
  end 

  multiplied_arr
end 


my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]