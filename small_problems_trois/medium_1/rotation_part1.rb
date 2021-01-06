=begin
Problem:
        Write a method 
        that rotates an array 
        by moving the first element to the end of the array. 

        The original array should not be modified.
Example:
        rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
        rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
        rotate_array(['a']) == ['a']

        x = [1, 2, 3, 4]
        rotate_array(x) == [2, 3, 4, 1]   # => true
        x == [1, 2, 3, 4]                 # => true
Data Structure:
        Input : array
        Output: new array
Algorithm:
        - create `rotate_array` method with `array` as its parameter
        - create a `duplicate` variable which holds the return value of
          duplicating `array`
        - unshift the first element `duplicate` saving it into `last`
        - append last to duplicate

=end

# def rotate_array(array)
#   duplicate = array.dup
#   last = duplicate.shift
#   duplicate << last
# end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) #== ['b', 'c', 'a']
p rotate_array(['a']) #== ['a']

x = [1, 2, 3, 4]
p rotate_array(x) #== [2, 3, 4, 1]   # => true
p x #== [1, 2, 3, 4]                 # => true

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true