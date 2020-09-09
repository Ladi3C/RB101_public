=begin

Problem: Create a method that multiplies each element in an array by 2
Example: my_numbers = [1, 4, 3, 7, 2, 6]
         double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]
Input:   Array
Output:  Array

Algorithm: 

- create method double_numbers(numbers) parameter
- create an empty array variable
- set the counter
- create loop
- set a break condition
- set the current number
- push it to the empty array variable times 2
- end
- counter += 1
- set the empty array variable as the last line executed in the method.

=end

def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2
    
    counter += 1
  end 
  doubled_numbers
end 


my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]
