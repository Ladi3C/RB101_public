=begin

Problem: 
          Write a method that takes one argument, a positive integer, 
          and returns a string of alternating 1s and 0s, always starting with 1.
          The length of the string should match the given integer.

Example:  puts stringy(6) == '101010'
          puts stringy(9) == '101010101'
          puts stringy(4) == '1010'
          puts stringy(7) == '1010101'

Algorithm:
- write a method
- takes one argument (positive integer)
- returns a string of alternating 1s and 0s starting with 1
- lenths of the string should match the integer

=end

def stringy(integer)
  string = ''
  counter = 0

  loop do
    break if counter == integer

    if counter.even?
      string << '1'
    else
      string << '0'
    end

    counter += 1
  end 
  string 
end 

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'