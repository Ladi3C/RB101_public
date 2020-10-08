=begin

Problem: 
          Given the following data structure, return a new array containing the same
          sub-arrays as the original but ordered logically by only taking into 
          consideration the ODD numbers they contain. 

Example: [[1, 8, 3], [1, 6, 7], [1, 4, 9]]


=end


arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

p (arr.sort_by do |sub_array|
  sub_array.select do |num|
    num.odd?
  end 
end) 

# It is very important to understand how to access nested data structures, and how we can
# manipulate code to get the result we want. Try to understand the problem and see what methods
# you can used to the best advantage. Here we are sorting the sub-sub arrays, and not only
# do we first have to ACCESS the sub_arrays, but then we have to perform some sort of selection
# in order to manipulate cdde to only sort odd integers. So, we now understand, prior to solving the
# problem, that we need to use a sort or sort by method, and use the SELECTION method to select
# odd integers and then after those odd integers are SELECTED we can sort them in the outer scope (sortby. ) 