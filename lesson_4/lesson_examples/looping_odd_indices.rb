=begin

Problem : double the numbers that are in odd indices

Example: 
            double_odd_indices(my_numbers) # => [1, 8, 3, 14, 2, 12]

Algorithm: 

- define method double_odd_indices
- takes one parameter array
- set am empty variable that hold array
- set counter
- create loop
- break condition
- set current number
- if current counter is odd, double it
- counter += 1
- place empty array variable as last line executed in the method
=end

def double_odd_indices(numbers)
  doubled_odd_indices = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number =  numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_odd_indices << current_number
    
    counter +=1
  end 

  doubled_odd_indices
end 






my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_indices(my_numbers) # => [1, 8, 3, 14, 2, 12]