def oddities(array)
  odd_elements = []
  counter = 0

  while counter < array.size
    odd_elements << array[counter]
    counter += 2
  end 

  odd_elements
end 


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []