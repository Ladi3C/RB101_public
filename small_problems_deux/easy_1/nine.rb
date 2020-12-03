=begin
Problem: 
        Write a method that takes one argument, 
        a positive integer, 
        and returns the sum of its digits.
Example: 
        puts sum(23) == 5
        puts sum(496) == 19
        puts sum(123_456_789) == 45
Data Structure:
        Input:  integer
        Output: integer
Algorithm: 
        - convert the digits to strings
        - convert the strings to array
        - delete any '_' if there are any
        - iterate through and turn them back into digits
        - use reduce, inject or sum to add them up
Code:
=end

def sum(digits)
  digit_arr = digits.to_s.chars.map(&:to_i)
  digit_arr.inject(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45









