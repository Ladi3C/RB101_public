=begin

Problem: Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

Examples: puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
          puts digit_list(7) == [7]                     # => true
          puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
          puts digit_list(444) == [4, 4, 4]             # => true
Input:    integers
Output:   array of the integers split up

Algorithm: 

- define digit_list
- set numbers as parameter
- result array
- set counter
- loop
- somehow push numbers into an array
- increase counter
- break out
- result as last line evaluated


=end 

# def digit_list(numbers)
#   numbers.digits.reverse!
# end 




puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true