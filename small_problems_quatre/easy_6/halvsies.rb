=begin
Problem: 
        Write a method 
        that takes an Array as an argument, 
        and returns two Arrays (as a pair of nested Arrays) 
        that contain the first half and second half of the original Array, 
        respectively. 

        If the original array contains an odd number of elements, 
        the middle element should be placed in the first half Array.
Example:
        halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
        halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
        halvsies([5]) == [[5], []]
        halvsies([]) == [[], []]
Data Structure:
        Input : array
       Ouotput: nested array

Algorithm:
    - define halvisies and set `array` as its parameter
      - if the length of `array` is even
        - set `max_index` to array.length/2 - 1 * to take into account index
        - horizontal assignment
         - assign a `new_arr` to a nested array
            first subarray: the first index of arr to max_index
            second subarray: max_index plus one to -1
      - if the length of 'array' is odd
        set `max_index` to array.length /2 *takes the extra index of the odd array into consideration
        - horizontal assignment
          -assign a `new_arr` to a nested array
            first subarray: the first index of arr to `max_index`
            second subarray: `max_index` + 1 to -1
=end

def halvsies(array)
  if array.size == 1
    [array[0], []]
  elsif array.empty?
    [[], []]
  elsif array.size.even?
    max_index = array.size/2 - 1
    [array[0..max_index], array[(max_index + 1)..-1]]
  elsif array.size.odd?
    max_index = array.size / 2
    [array[0..max_index], array[(max_index + 1)..-1]]
  end
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5]) #== [[5], []]
p halvsies([]) #== [[], []]