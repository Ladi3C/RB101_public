=begin
Problem: 
        Write a method 
        that takes two Array arguments 
        in which each Array contains a list of numbers, 
        and returns a new Array 
        that contains the product of every pair of numbers 
        that can be formed between the elements of the two Arrays. 

        The results should be sorted by increasing value.
        You may assume that neither argument is an empty Array.
Example:
        multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
Data Structure:
        Input:  two arrays
        Output: one array
Algorithm:
        - [2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
        8, 6, 2, 4
        16 12 4 8
        - create a method called multiply_all_pairs that accepts two array parameters
        - we will multiply the first element in the first array  by every element in the second array
        - we will mutliply the second element in the first arra  by every element in the second array
        - sort the answer and return it as the last line evaluated in the method definition
CodeL
=end

def multiply_all_pairs(arr1, arr2)
  result_arr = []
  counter = 0
  loop do
    result_arr << (arr1[0] * arr2[counter])

    counter += 1
    break if counter == arr2.size
  end

  counter = 0

  loop do 
    result_arr << (arr1[1] * arr2[counter])

    counter += 1
    break if counter == arr2.size
  end
  result_arr.sort

end

# def multiply_all_pairs(arr1, arr2)
#   result = []
#   arr1.product(arr2).each do |sub_arr|
#     result << sub_arr.inject(:*)
#   end
# result.sort
# end

# def multiply_all_pairs(arr1, arr2)
#   result = []
#   arr1.each do |multiplier|
#     arr2.each do |num|
#       result << multiplier * num
#     end 
#   end 
#   result.sort 
# end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]