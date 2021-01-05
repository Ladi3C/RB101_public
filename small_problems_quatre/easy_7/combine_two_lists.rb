=begin
Problem:
        Write a method 
        that combines two Arrays passed in as arguments, 
        and returns a new Array that 
        contains all elements from both Array arguments, 
        with the elements taken in alternation.

        You may assume that both input Arrays are non-empty, and that they have the same number of elements.

=end

# def interleave(arr1, arr2)
#   counter = 0
#   result = []
#   loop do
#     result << arr1[counter] << arr2[counter]
#     counter += 1

#     break if counter == arr1.size
#   end
#   result
# end

def interleave(arr1, arr2)
  result = []
  arr1.each_with_index do |element, index|
    result << element << arr2[index]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']


