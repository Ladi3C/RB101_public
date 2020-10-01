=begin

Problem:   
          Write a method that takes one argument, an array containing integers, and returns the average 
          of all numbers in the array. The array will never be empty and the numbers will always be positive 
          integers. Your result should also be an integer.

Example:  puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
          puts average([1, 5, 87, 45, 8, 8]) == 25
          puts average([9, 47, 23, 95, 16, 52]) == 40

- Define method average
- Parameter: array array containing integers
- RETURNS THE AVERAGE 

=end 

def average(arr)
  sum = 0
  counter = 0
  divisor = arr.size

  loop do
    sum += arr[counter]
    counter += 1

    break if counter == divisor
  end  

sum/divisor
end 



puts average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40