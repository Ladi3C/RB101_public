=begin

Problem:  Write a method that takes two arguments, a string and a positive integer,
          and prints the string as many times as the integer indicates.

Example:  repeat('Hello', 3)
          Hello
          Hello
          Hello

Rules: 

- define method repeat
- two arguments: 1) string 2) positive integer
- outputs the string as many times as the integer says so

Algorithm: 

- define method repeat (string, integer)
integer.times puts string end

=end

# def repeat(string, integer)
#   integer.times { |num| puts string}
# end 

# p repeat("hello", 6)

def repeat(string, integer)
  counter = 0
  
  loop do
    puts string
    counter += 1
    break if counter == integer
  end
end 

p repeat("hello", 3)
