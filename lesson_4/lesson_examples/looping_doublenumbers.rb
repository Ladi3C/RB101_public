=begin

Problem: create a method that multiples each element in the collection by 2.

Example: double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]

Input:   ARRAY
Output:  ARRAY

Algorithm: 
- define method double_numbers
- takes an array or variable that hold an array as a parameter
- set an empty array variable
- set a counter
- create loop
- break condition
- set current number 
- push the number into the empty array variable multiplied times two
- counter = counter + 1
- make the empty array variable as the last variable executed in the method
=end

def double_numbers(numbers)
  double_array = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_num = numbers[counter]
    double_array << current_num * 2

    counter += 1
  end 
 
  double_array
end 


my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]