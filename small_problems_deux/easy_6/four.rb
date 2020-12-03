=begin
Problem:
        Write a method 
        that takes an Array as an argument, 
        and reverses its elements in place; 
        that is, mutate the Array passed into this method. 
        The return value should be the same Array object.

Example:
        list = [1,2,3,4]
        result = reverse!(list)
        result == [4, 3, 2, 1]
        list == [4, 3, 2, 1]
        list.object_id == result.object_id

        list = %w(a b e d c)
        reverse!(list) == ["c", "d", "e", "b", "a"]
        list == ["c", "d", "e", "b", "a"]

        list = ['abc']
        reverse!(list) == ["abc"]
        list == ["abc"]

        list = []
        reverse!(list) == []
        list == []
Data stucture:
        Input: Array
       Outpit: SAME ARRAY
Algorithm:
        - 

=end

def reverse!(arr)
left_index = 0
right_index = -1

  while left_index < arr.size / 2
    arr[left_index], arr[right_index] = arr[right_index], arr[left_index]
    left_index += 1
    right_index -= 1
  end
  arr
end

p reverse!([1, 2, 3, 4])