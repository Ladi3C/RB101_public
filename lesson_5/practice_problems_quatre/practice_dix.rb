=begin

Problem:
        Given the following data structure and without modifying the original array,
        use the map method to return a new array identical in structure to the original
        but where the value of each integer is incremented by 1.

Input: array
Output: new array

Algorithm:

access array using map
access each hash
increment values
=end 


# p ([{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
#   hsh.map do |_, v|
#     v += 1
#   end 

# end) 


# p([{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
#   incremented_hsh = {}
  
#   hsh.each do |k, v|
#     incremented_hsh[k] = v + 1
#   end
#   incremented_hsh
# end)

p([{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each_with_object([]) do |hsh, arr|
  incremented_hsh = {}
  hsh.each do |k, v|
    incremented_hsh[k] = v + 1
  end
  arr << incremented_hsh
end)


