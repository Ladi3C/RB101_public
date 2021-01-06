# def multiply_all_pairs(arr1, arr2)
#   counter = 0
#   result = []
#   loop do
#     result << arr2[counter] * arr1[0]
#     result << arr2[counter] * arr1[1]
#     counter += 1
#     break if counter == arr2.size
#   end
#   result.sort
# end

# def multiply_all_pairs(arr1, arr2)
#   result = []
#   arr1.each do |item1|
#     arr2.each do |item2|
#       result << item1 * item2
#     end
#   end 
#     result.sort
# end

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map {|num1, num2| num1 * num2}.sort
end


  #arr.map { |last| something.map { |first|  array[first..last]}}

p multiply_all_pairs([2, 4], [4, 3, 1, 2])#== [2, 4, 4, 6, 8, 8, 12, 16]