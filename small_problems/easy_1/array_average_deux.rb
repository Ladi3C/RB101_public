=begin

Problem:
            Write a method that takes one argument, an array containing integers, 
            and returns the average of all numbers in the array. The array will 
            never be empty and the numbers will always be positive integers. Your
            result should also be an integer.

Examples: 
            puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
            puts average([1, 5, 87, 45, 8, 8]) == 25
            puts average([9, 47, 23, 95, 16, 52]) == 40

Input:      array
Output:     integer

Data/Algo:  write a method
            with one parameter (array)
            returns the average of all numbers in the array

Rules:      array will never be empty
            numbers are posive integers
            to get the average at add all the numbers and divide by how many numbers there are


=end

def average(array)
  divisor = array.size
  sum = 0 
  counter = 0

  loop do
    sum += array[counter] unless array[counter].odd?

    counter += 1 

    break if counter == divisor 
  end 
sum / divisor 
end 

puts average([1, 6])# == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40
puts
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40