=begin

Problem: let's create a method called multiply that can take an additional 
         argument to determine the transformation criteria.

Example: my_numbers = [1, 4, 3, 7, 2, 6]
         multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
Input:   array, and a number to muliply each value of the array with
Output:  An array 

Algorithm: 

- define method called multiply
- takes two parameters, an array and integer
- create an empty array variable
- set a counter
- create loop
- set a break condition
- current_number = array[counter]
- array variable push mutiply current number by integer
- counter += 1
- array variable as the last line that is executed in the method
=end

def multiply(array, integer)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == array.size

    multiplied_numbers << array[counter] * integer
    counter += 1
  end 
  
  multiplied_numbers
end


my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18] 