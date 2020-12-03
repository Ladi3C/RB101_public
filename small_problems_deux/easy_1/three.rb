=begin
Problem: 
        Write a method that takes one argument, 
        a positive integer, 
        and returns a list of the digits in the number.
Example:
        puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
        puts digit_list(7) == [7]                     # => true
        puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
        puts digit_list(444) == [4, 4, 4]             # => true
Data Structure:
        Input:  integer
        Output: array
Algorithm:
        - define a method that takes one arugment, (set of 1 or more integers)
        - take the integer 
        - convert to strings, split them and put then in an array 
        - convert them into integers

=end

# Using idiomatic Ruby 
# def digit_list(digits)
#   str_arr = digits.to_s.chars
#   digit_list = str_arr.map { |char| char.to_i } 
#   digit_list
# end

#Using brute force

def digit_list(digits)
  digit_arr= []

  loop do
    digits, remainder = digits.divmod(10)
    digit_arr.unshift(remainder)
    break if digits == 0
  end
  digit_arr
end 



puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

