

=begin
Problem: 
        Write a method that takes one argument, 
        a positive integer, 
        and returns a string of alternating 1s and 0s, 
        always starting with 1. 
        The length of the string should match the given integer.
Example: 
        puts stringy(6) == '101010'
        puts stringy(9) == '101010101'
        puts stringy(4) == '1010'
        puts stringy(7) == '1010101'
Data Structure:
        Input:  integer
        Output: string
Algorithm: 
        - define a method with one parameter an integer
        - create a variable that references an array starting with 1 to the integer given
        - create a variable that holds an empty string
        - create a loop
        - for every even index push a '1' string
        - for every odd index push a '0' string
        - exit the loop when the counter is equal to the array size
Code:
=end

# Using a loop
# def stringy(num)
#   num_arr = (1..num).to_a
#   num_str = ''
#   counter = 0

#   loop do
    
#     num_str << '1' if counter.even?
#     num_str << '0' if counter.odd?

#     counter += 1
#     break if counter == num_arr.size
#   end
#   num_str
# end

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'