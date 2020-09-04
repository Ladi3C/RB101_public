=begin

Problem: Write a method that takes one argument, a positive integer, 
         and returns a list of the digits in the number.

Examples: puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
          puts digit_list(7) == [7]                     # => true
          puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
          puts digit_list(444) == [4, 4, 4]             # => true
Input:    Postive Integer
Output:   Array
Returns:  true


Questions: How can i make this return true?


=end

def digit_list(numbers)
  numbers.digits.reverse
end 

# def digit_list(number)
#   digits = []

#   loop do
#     number, remainder = number.divmod(10)
#     digits.unshift(remainder)
#     break if number == 0
#   end
#   digits
# end 

# def digit_list(number)
#   number.to_s.chars.map(&:to_i)
# end 

# def digit_list(number)
#   number.to_s.chars.map { |char| char.to_i }
# end 




puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true