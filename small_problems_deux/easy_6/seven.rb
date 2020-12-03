=begin
Problem:
        Write a method 
        that takes an Array as an argument, 
        and returns two Arrays (as a pair of nested Arrays) 
        that contain the first half 
        and second half of the original Array, respectively. 

        If the original array contains an odd number of elements, 
        the middle element should be placed in the first half Array.
Example:
        halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
        halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
        halvsies([5]) == [[5], []]
        halvsies([]) == [[], []]
Data Structure:
        Input : ARRAY
        Output: NESTED ARRAY
Algorithm:
        - create halvsies method that takes one array as an argument
        - returns two arrays
        - [[firt half] [second half]]
        -
Code:

=end

def halvsies(arr)
  arr1 = []
  arr2 = []

  return [arr, []] if arr.size == 1
  return [[], []] if arr.empty?
  
  number_per_arr, remainder = arr.size.divmod(2)
  counter = 0
  loop do
    break if counter >= number_per_arr
    arr1 << arr[counter]
    counter += 1
  end
  counter = -1
  
  loop do
    arr2.unshift(arr[counter])
    counter -= 1
    break if counter < -(number_per_arr)
  end

  arr1 << arr[arr.size/2.round] if remainder == 1

  [arr1, arr2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]








