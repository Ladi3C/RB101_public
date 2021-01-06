# def multiply_list(arr1, arr2)
#   result = []
#   arr1.each_with_index do |num, index|
#     result << (num * arr2[index])
#   end 
# result
# end

def multiply_list(arr1, arr2)
  arr1.map.with_index do |num, index|
    (num * arr2[index])
  end 
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]