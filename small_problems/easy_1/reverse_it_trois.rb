=begin

Problem:   Write a method that takes one argument, a string, 
           and returns a new string with the words in reverse order.

Examples:  puts reverse_sentence('') == ''
           puts reverse_sentence('Hello World') == 'World Hello'
           puts reverse_sentence('Reverse these words') == 'words these Reverse'

Rules:     write method 
           takes a string argument
           returns a new string with words in reverse order
Algorithm:
- Define method reverse_sentence
- initialize variable string as a parameter
- convert to array
- add it to a new array, play with unshift, pop or something
- 

=end

def reverse_sentence(string)
  string_reversed = []
  string_arr = string.split

  loop do

    string_reversed << string_arr.pop

    break if string_arr.empty?
  end 
  
  string_reversed.join(" ")
end 

# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end 


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'