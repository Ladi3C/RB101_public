def reverse(arr)
  reversed_arr = []
  max_index = -(arr.size)
  counter = -1
  
  loop do
    break if counter == max_index - 1
    reversed_arr << arr[counter]
    counter -= 1
  end
  reversed_arr
end

p reverse([1,2,3,4])
p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []  