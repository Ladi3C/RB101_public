=begin

Problem: 
          Write a method that takes one argument, a positive integer, and 
          returns a list of the digits in the number.

Example:  puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
          puts digit_list(7) == [7]                     # => true
          puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
          puts digit_list(444) == [4, 4, 4]             # => true
=end

def digit_list(numbers)
  num_arr = []
  counter = 0
  number_array = numbers.to_s.chars

  loop do
    break if counter == number_array.size

    num_arr << number_array[counter].to_i
    counter += 1
  end 
num_arr
end


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true