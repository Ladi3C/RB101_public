=begin

Problem: 
        Given this data structure, 
        return a new array of the same structure 
        but with the sub arrays being ordered 
        (alphabetically or numerically as appropriate) in descending order.

Data Structure:
        Input: array
        Output: NEW ARRAY

Rules: DESCENDING ORDER


Algorithm:

acess arr and iterate through each sub_array
access each subarray
iterate through each element in the subarray        
=end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

p (arr.map do |subarr|
  subarr.sort do |a, b|
    b <=> a
  end
end) 