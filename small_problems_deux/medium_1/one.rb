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
Data structure:
        Input : array
        Output: array
Algorithm:
        - loop up dup and clone
=end

# def rotate_array(arr)
#   copy_arr = arr.dup
#   last_obj = copy_arr.shift
#   copy_arr << last_obj
# end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) #== ['b', 'c', 'a']
p rotate_array(['a']) #== ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true