
=begin
Problem: 
        Write a method that takes one argument, 
        a string, and 
        returns a new string with the 
        words in reverse order.

        - returns an empty string when given an empty string
        - reverses just the words 
Example:
        puts reverse_sentence('') == ''
        puts reverse_sentence('Hello World') == 'World Hello'
        puts reverse_sentence('Reverse these words') == 'words these Reverse'

Data Structure:
        Input: string
        Output: string
        Structure used: Array
Algorithm:
- define a method that takes a string parameter
- convert the string to an array for iteration
- iterate through the array and switch indexes
- call join on the final reversed array
=end

# Using a loop
# def reverse_sentence(str)
#   str_arr = str.split
#   new_str = []
#   counter = 0
#   loop do
#     new_str << str_arr.pop

#     counter = 0
#     break if counter == str_arr.size
#   end
#   new_str.join(' ')
# end

# Using an iterator

# def reverse_sentence(str)
#   str_arr = str.split
#   new_str = []
#   str_arr.each do |word|
#     new_str.unshift(word)
#   end 
#   new_str.join(' ')
# end

#Using a method

def reverse_sentence(str)
  str.split.reverse.join(' ')
end

puts reverse_sentence('')# == ''
puts reverse_sentence('Hello World')# == 'World Hello'
puts reverse_sentence('Reverse these words')# == 'words these Reverse'



