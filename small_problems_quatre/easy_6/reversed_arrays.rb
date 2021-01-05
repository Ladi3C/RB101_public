=begin
Problem:
        Write a method 
        that takes an Array as an argument, 
        and reverses its elements in place; 
        that is, mutate the Array passed into this method. 
        The return value should be the same Array object.
        - reverse the array passed in
        - mutate the array passed in
Algorithm:
          - save the `max_counter` to calculation:  array length divided by two - 1 (to calculate counter)
          - create `negative_counter` = -1
          - create `counter` = 0
          - create a loop, reassign the array and at each iteration add to the `counter` and subract to the `negative counter`
          - break if counter > max_counter
=end

def reverse!(array)
  return [] if array.empty?
  max_counter = array.length / 2 - 1
  counter = 0
  negative_counter = -1
  loop do
    array[counter], array[negative_counter] = array[negative_counter], array[counter]
    counter += 1
    negative_counter -= 1
    break if counter > max_counter 
  end
  array
end

list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p a_list = %w(a b e d c)
p reverse!(a_list) == ["c", "d", "e", "b", "a"] # true
p a_list == ["c", "d", "e", "b", "a"] # true

p b_list = ['abc']
p reverse!(b_list) == ["abc"] # true
p b_list == ["abc"] # true

p c_list = []
p reverse!(c_list) == [] # true
p c_list == [] # true