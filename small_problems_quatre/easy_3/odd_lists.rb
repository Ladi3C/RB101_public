# def oddities(array)
#   array.select do |num|
#   array.index(num).even?
# end
# end

def oddities(array)
  odd_arr = []
  counter = 0
  while counter < array.size
    odd_arr << array[counter] if counter.even?
    counter += 1
  end
  odd_arr
end

p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
p oddities(['abc', 'def']) #== ['abc']
p oddities([123]) #== [123]
p oddities([]) #== []#