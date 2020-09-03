=begin

create a method 
takes an array of integers in its parameter
returns a new array with every other element 

START

SET a method 
SET parameter takes an array of integers
PRINT a new array with every other element

END

=end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arrays = %w(a b c d)

def method(array_of_numbers)
  counter = 0
  result = []
  loop do
    result << array_of_numbers[counter]
    
    counter += 2
    break if counter == array_of_numbers.size
  end
  result 
end


p method(array)