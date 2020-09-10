=begin

Problem: Write a method that takes one argument, a positive integer, 
         and returns a list of the digits in the number.

Examples: puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
          puts digit_list(7) == [7]                     # => true
          puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
          puts digit_list(444) == [4, 4, 4]             # => true
Input:    integers
Output:   array

Rules:    define method digit_list
          takes one argument (numbers)
          returns an ARRAY of numbers, separated, in that number

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

# def digit_list(numbers)
#   num_array = []
#   counter = 0
#   num = numbers.to_s.chars
  
#   loop do
#   num_array << num[counter].to_i
#   counter += 1

#   break if counter == num.size
#   end 
#   num_array
# end 

def digit_list(numbers)
  return 'Ooop you need to enter integers' unless numbers.is_a?(Integer)
  num_array = []
  counter = 0
  num = numbers
  until num == 0
    num, remainder = num.divmod(10) #num =1234, rem = 5
    #p [num, remainder]
    num_array.unshift(remainder)
    #p num_array
  end
  num_array
end 


p digit_list(123456789) #== [1, 2, 3, 4, 5]     # => true
p digit_list('0123456789')
# p digit_list(7)== [7]                     # => true
# p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# p digit_list(444) == [4, 4, 4]             # => true