=begin
Problem:
        Write a method 
        that combines two Arrays 
        passed in as arguments, 
        and returns a new Array 
        that contains all elements 
        from both Array arguments, 
        with the elements taken in alternation.

        You may assume that both input Arrays are non-empty, 
        and that they have the same number of elements.
Example:
        interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
Data Structure:
        Input: Two arrays
        Output: One array 
Algorithm:
        - create method interleave with two array parameters
        - create a variable that hold an empty array
        - create a loop
        - push each element of both arrays at index 0 into the new array
        - keep doing that until the counter == any of the array sizes
Code:


=end

def interleave(arr1, arr2)
  final_arr = []
  counter = 0
  loop do
    final_arr << arr1[counter]
    final_arr << arr2[counter]

    counter += 1
    break if counter == arr1.size
  end
  final_arr
end

# def interleave(arr1, arr2)
#   result_arr = []
#   arr1.each_with_index do |element, index|
#     result_arr << element << arr2[index]
#   end
#   result_arr
# end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']

