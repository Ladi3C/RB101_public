# def multiply(numbers, multiplier)
#   multiplied_arr = []
#   counter = 0
  
#   loop do
#     multiplied_arr << numbers[counter] * multiplier

#     counter += 1
#     break if counter == numbers.size
#   end
#   multiplied_arr
# end

def multiply(numbers, multiplier)
  multiplied_arr = []
 
  numbers.each do |num|
    multiplied_arr << num * multiplier
  end 

  multiplied_arr
end

p my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
p my_numbers