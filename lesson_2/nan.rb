array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arrays = %w(a b c d)

def method(array_of_numbers)
  # counter = 0
  # result = []
  # loop do
  #   result << array_of_numbers[counter]
    
  #   counter += 2
  #   break if counter == array_of_numbers.size
  # end
  # result 

  counter = 0
  result = []
  loop do
    if counter % 2 == 0
      result << array_of_numbers[counter]
    end
    counter += 1
    break if counter >= array_of_numbers.size
  end
  result
end


p method(array)