=begin
Problem: Given the following data structure, 
          return a new array 
          containing the same sub-arrays as the original 
          but ordered logically by only taking into consideration 
          the odd numbers they contain.

Example:

        => [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

Data Stucture:
        Input: Nested array
        Output: a new nested array

Algorithm: 

access arr 
access subarray element
sort if odd


=end

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

p(arr.sort_by do |sub_array|
  sub_array.select do |num|
    num.odd?
  end
end) 