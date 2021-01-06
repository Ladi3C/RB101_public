def reverse(array)
  reversed_array = []
  array.reverse_each { |element| reversed_array << element}
  reversed_array
end

p reverse([1, 2, 3, 4, 5])