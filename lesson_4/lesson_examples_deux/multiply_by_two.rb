=begin
We'll now move on to some transformation examples where the entire transformation code 
is within a method definition. 

The code below multiplies each element in the collection by 2.
=end

# def double_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     doubled_numbers << numbers[counter] * 2

#     counter += 1
#     break if counter == numbers.size
#   end 
#   doubled_numbers
# end

def double_numbers(numbers)
  doubled_numbers = []

  numbers.map do |num|
    doubled_numbers << num * 2
  end 
  doubled_numbers
end 

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]