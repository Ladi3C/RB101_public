=begin

Problem:  Write a method that takes two arguments, a string and a positive integer, 
          and prints the string as many times as the integer indicates.
Example:  repeat('Hello', 3)
          Hello
          Hello
          Hello
Input:    string, positive integer
Output:   Outputs string on a new lone times the integer
Algorithm: 
- define method repeat 
- takes a string, integer
- set counter
- create loop
- set current value
- break condition
- fuck with counter
- figure out what the last line evaluated should be

=end


def repeat(string, integer)
  counter = 0

  loop do
    puts string 
    counter += 1
    break if counter == integer
  end 
end 

# def repeat(string, integer)
#   integer.times do
#     puts string
#   end 
# end 

p repeat('Hello', 8)