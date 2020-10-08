=begin

Problem: 
          Given the following data structure use a combination of methods, 
          including either the select or reject method, to return a new array 
          identical in structure to the original but containing only the integers 
          that are multiples of 3.

DISSECT:  - Data Structure: NESTED ARRAY
          - use either SELECT or REJECT
          - RETURN a NEW array
          - SAME STRUCTURE : nested array
          - Containing only integers that are multiples of 3

Data Structure: NESTED ARRAY

Algorithm: 
          - multiples of 3
            => num % 3 == 0

=end

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

p (arr.map do |sub_arr|
  sub_arr.select do |num|
    num % 3 == 0
  end
end)  